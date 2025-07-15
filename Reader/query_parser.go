package Reader

import (
	"encoding/json"
	"strings"
	"time"

	"github.com/HadasAmar/analytics-load-tool/Model"
)
// ParseRawRecord returns a complete record: including IP, timestamp, raw query, and ParsedQuery
func ParseRawRecord(timestamp, ip, raw string) *Model.ParsedRecord {
	cleanIP := strings.TrimSpace(ip)
	if cleanIP == "" || raw == "" {
		return nil
	}

	// Parse timestamp
	t, err := time.Parse(time.RFC3339, timestamp)
	if err != nil {
		t = time.Time{}
	}

	var query map[string]interface{}
	if err := json.Unmarshal([]byte(raw), &query); err != nil {
		return nil
	}

	pq := &Model.ParsedQuery{
		RawJSON: raw,
		Context: make(map[string]any),
	}

	// TableName
	if ds, ok := query["dataSource"].(map[string]interface{}); ok {
		if name, ok := ds["name"].(string); ok {
			pq.TableName = name
		}
	}

	// Dimensions (including outputName)
	if dims, ok := query["dimensions"].([]interface{}); ok {
		for _, d := range dims {
			if dmap, ok := d.(map[string]interface{}); ok {
				output := ""
				if out, ok := dmap["outputName"].(string); ok {
					output = out
				}
				if dim, ok := dmap["dimension"].(string); ok {
					field := output
					if field == "" {
						field = dim
					}
					pq.SelectFields = append(pq.SelectFields, field)
					pq.GroupByFields = append(pq.GroupByFields, field)
				}
			}
		}
	}

	// Aggregations
	if aggs, ok := query["aggregations"].([]interface{}); ok {
		for _, a := range aggs {
			if amap, ok := a.(map[string]interface{}); ok {
				typeStr, _ := amap["type"].(string)
				field, _ := amap["fieldName"].(string)
				name, _ := amap["name"].(string)
				if typeStr != "" && field != "" && name != "" {
					pq.Aggregations = append(pq.Aggregations, typeStr+"("+field+") AS "+name)
				}
			}
		}
	}

	// PostAggregations
	if posts, ok := query["postAggregations"].([]interface{}); ok {
		for _, p := range posts {
			if pmap, ok := p.(map[string]interface{}); ok {
				name, _ := pmap["name"].(string)
				expr, _ := pmap["expression"].(string)
				fieldName := ""
				if field, ok := pmap["fieldName"].(string); ok {
					fieldName = field
				} else if fieldMap, ok := pmap["field"].(map[string]interface{}); ok {
					fieldName, _ = fieldMap["fieldName"].(string)
				}
				pq.PostAggregations = append(pq.PostAggregations, Model.PostAggregation{
					Name:       name,
					Expression: expr,
					FieldName:  fieldName,
				})
			}
		}
	}

	// ✅ Intervals – תומך גם במבנה עטוף
	if intervalsRaw, ok := query["intervals"]; ok {
		switch v := intervalsRaw.(type) {
		case []interface{}:
			for _, iv := range v {
				if s, ok := iv.(string); ok {
					pq.Intervals = append(pq.Intervals, s)
				}
			}
		case map[string]interface{}:
			if list, ok := v["intervals"].([]interface{}); ok {
				for _, iv := range list {
					if s, ok := iv.(string); ok {
						pq.Intervals = append(pq.Intervals, s)
					}
				}
			}
		}
	}

	// Granularity
	if gran, ok := query["granularity"].(string); ok {
		pq.Granularity = gran
	} else if gmap, ok := query["granularity"].(map[string]interface{}); ok {
		if gtype, ok := gmap["type"].(string); ok {
			pq.Granularity = gtype
		}
	}

	// Limit
	if limitSpec, ok := query["limitSpec"].(map[string]interface{}); ok {
		if lim, ok := limitSpec["limit"].(float64); ok {
			limInt := int(lim)
			pq.Limit = &limInt
		}
	}

	// Filter
	if filterJSON, err := json.Marshal(query["filter"]); err == nil {
		var f Model.FilterNode
		if err := json.Unmarshal(filterJSON, &f); err == nil {
			pq.Filter = &f
		}
	}

	// Having
	if havingJSON, err := json.Marshal(query["having"]); err == nil {
		var h Model.HavingClause
		if err := json.Unmarshal(havingJSON, &h); err == nil {
			pq.Having = &h
		}
	}

	// Ordering
	if limitSpec, ok := query["limitSpec"].(map[string]interface{}); ok {
		if cols, ok := limitSpec["columns"].([]interface{}); ok {
			for _, c := range cols {
				if s, ok := c.(string); ok {
					pq.Ordering = append(pq.Ordering, s)
				}
			}
		}
	}

	// Descending
	if desc, ok := query["descending"].(bool); ok {
		pq.Descending = desc
	}

	// Context
	if ctx, ok := query["context"].(map[string]interface{}); ok {
		pq.Context = ctx
	}

	// QueryType
	if qt, ok := query["queryType"].(string); ok {
		pq.QueryType = qt
	}

	// VirtualColumns
	if vcols, ok := query["virtualColumns"].([]interface{}); ok {
		for _, v := range vcols {
			if vmap, ok := v.(map[string]interface{}); ok {
				name, _ := vmap["name"].(string)
				expr, _ := vmap["expression"].(string)
				outputType, _ := vmap["outputType"].(string)
				if name != "" {
					pq.VirtualColumns = append(pq.VirtualColumns, Model.VirtualColumn{
						Name:       name,
						Expression: expr,
						OutputType: outputType,
					})
				}
			}
		}
	}

	// Return full parsed log record
	return &Model.ParsedRecord{
		LogTime: t,
		IP:      cleanIP,
		Query:   raw,
		Parsed:  pq,
	}
}