SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   SUM(installs_count) AS installs,
   SUM(impressions_count) AS impressions,
   SUM(clicks_count) AS clicks,
   SUM(loyals) AS loyals,
   SUM(organic_installs_count) AS organic_installs,
   SUM(organic_impressions_count) AS organic_impressions,
   SUM(organic_clicks_count) AS organic_clicks,
   SUM(organic_loyals) AS organic_loyals 
FROM My_Try.loadtool_logs 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

