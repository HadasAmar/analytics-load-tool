package Reader

import "github.com/HadasAmar/analytics-load-tool.git/Model"

func getDim(dims []Model.DimensionSpec, name string) string {
	for _, d := range dims {
		if d.Dimension == name {
			return d.OutputName
		}
	}
	return ""
}

func getAgg(aggs []Model.AggregationSpec, name string) int {
	for _, a := range aggs {
		if a.Name == name {
			return 1
		}
	}
	return 0
}
