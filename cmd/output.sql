SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source,
   longSum(installs_count) AS installs,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(loyals) AS loyals,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks,
   longSum(organic_loyals) AS organic_loyals 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (attribution_type = 'install') 
    AND (app_id = 'com.kuku')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   campaign,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (loyals > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_loyals > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:activities/overview groupByStrategy:v2 priority:1 queryId:af188b4c-e5a3-4988-8ca9-c883618c84f2 timeout:59000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   site_id,
   ad,
   media_source,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND (attribution_type = 'install')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   site_id,
   ad,
   media_source 
HAVING (impressions > 0) 
    OR (clicks > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:master-api groupByStrategy:v2 priority:-1 queryId:8deb993e-494c-4726-b9e2-e575010ca8cc timeout:119000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM ltv_tz 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true'))) 
    AND (NOT ((source = 'organic') 
    OR ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit'))))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:21e73b6a-28bd-4519-912a-5c26a1343327-sub-query-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   attribution_type,
   campaign,
   ad,
   media_source,
   longSum(installs_count) AS installs,
   longSum(clicks_count) AS clicks,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (app_id = 'kuku') 
    AND (NOT (attribution_type = 'install'))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   attribution_type,
   campaign,
   ad,
   media_source 
HAVING (installs > 0) 
    OR (clicks > 0) 
    OR (organic_installs > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:partners-cost groupByStrategy:v2 priority:-1 queryId:0cf9300b-eeef-44b0-9ad5-43caf89f7ef5 timeout:119000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   attribution_type,
   campaign,
   ad,
   media_source,
   longSum(installs_count) AS installs,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((media_source = 'ms') 
    OR (unmasked_media_source = 'ms')) 
    AND (app_id = 'kuku') 
    AND (attribution_type = 'install')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   attribution_type,
   campaign,
   ad,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:partners-cost groupByStrategy:v2 priority:-1 queryId:46a8f992-ab56-468f-9289-26894e6cde96 timeout:119000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   channel,
   source,
   ltv_country,
   attribution_type,
   campaign,
   media_source,
   event_name,
   longSum(inappevents_count) AS count,
   doubleSum(revenue) AS sum,
   longSum(first_inapps) AS new,
   longSum(organic_inappevents_count) AS organic_count,
   doubleSum(organic_revenue) AS organic_sum,
   longSum(organic_first_inapps) AS organic_new 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND ((event_name = 'ce_level_500_reached_u') 
    OR (event_name = 'i_secnd_prchsed') 
    OR (event_name = 'ce_level_100_reached_u') 
    OR (event_name = 'i_frst_prchsed') 
    OR (event_name = 'level_completed_5') 
    OR (event_name = 'af_purchase') 
    OR (event_name = 'af_predict_retention_d14') 
    OR (event_name = 'level_completed_1') 
    OR (event_name = 'level_completed_25') 
    OR (event_name = 'adshowinterstitial') 
    OR (event_name = 'ce_level_250_reached_u') 
    OR (event_name = 'level_completed_3') 
    OR (event_name = 'af_skad_revenue') 
    OR (event_name = 'ce_level_25_reached_u') 
    OR (event_name = 'level_completed_10') 
    OR (event_name = 'ce_level_50_reached_u') 
    OR (event_name = 'af_predict_retention_d1') 
    OR (event_name = 'af_predict_payer') 
    OR (event_name = 'ce_level_5_reached_u') 
    OR (event_name = 'af_predict_revenue') 
    OR (event_name = 'af_predict_retention_d7')) 
    AND (attribution_type = 'install')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   channel,
   source,
   ltv_country,
   attribution_type,
   campaign,
   media_source,
   event_name 
HAVING (count > 0) 
    OR (sum > 0) 
    OR (new > 0) 
    OR (organic_count > 0) 
    OR (organic_sum > 0) 
    OR (organic_new > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:master-api groupByStrategy:v2 priority:-1 queryId:b60d2041-781c-437f-a4a4-713b19b4b4f4 timeout:119000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   campaign,
   media_source,
   is_attributed,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv_tz 
WHERE (batch <= '2022-09-18') 
    AND (((partner = 'bla') 
    AND (app_id = 'kuku') 
    AND (unmasked_media_source = 'ms') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true')) 
    AND ((campaign = 'promotix_GP_campain_CB') 
    OR (campaign = 'promotix_GP_campain_YX') 
    OR (campaign = 'promotix_GP_campain_UN') 
    OR (campaign = 'promotix_GPs_1Npain_YX') 
    OR (campaign = '{campaign_name}') 
    OR (campaign = 'promotix_GP_campain_YX906rt0Ifid=com.tofdev.minesclickers'))) 
    AND (NOT ((unmasked_media_source = 'organic') 
    OR (source = 'organic')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   campaign,
   media_source,
   is_attributed 
HAVING (impressions > 0) 
    OR (clicks > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:56fd9904-39f7-4d5b-9f38-810a51fcb2fc-sub-query-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   campaign,
   media_source,
   is_attributed,
   longSum(installs_count) AS installs,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(impression_installs_count) AS impression_installs,
   longSum(click_installs_count) AS click_installs,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks,
   longSum(organic_impression_installs_count) AS organic_impression_installs,
   longSum(organic_click_installs_count) AS organic_click_installs 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND ((app_id = 'com.kuku') 
    AND (unmasked_media_source = 'ms') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true')) 
    AND (campaign = 'Testing_For_QC_Creatives_NativeFeed')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   campaign,
   media_source,
   is_attributed 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (impression_installs > 0) 
    OR (installs_retarget > 0) 
    OR (click_installs > 0) 
    OR (installs_ua > 0) 
    OR (installs_reattr > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
    OR (organic_impression_installs > 0) 
    OR (organic_click_installs > 0) 
    OR (organic_installs_ua > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:f115f1cf-66c5-4bde-bd5c-609ad7ee250f-sub-query-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   keywords,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   ad,
   media_source,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND (attribution_type = 'install')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   keywords,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   ad,
   media_source 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:master-api groupByStrategy:v2 priority:-1 queryId:c287b634-8685-4011-927c-74e1739a7841 timeout:119000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   media_source,
   longSum(installs_count) AS installs,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((NOT (attribution_type = 'install')) 
    AND (app_id = 'kuku')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   media_source 
HAVING (installs > 0) 
    OR (impressions > 0) 
    OR (clicks > 0) 
    OR (organic_installs > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:exportdata/report groupByStrategy:v2 priority:1 queryId:00371417-dece-4f71-b667-e181e54782ee timeout:59000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   media_source,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'com.kuku') 
    AND (attribution_type = 'install')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   media_source 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:d28882ee-d583-410a-8dad-f545ac4b48e8-sub-query-limited timeout:25000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'com.kuku') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true'))) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed 
HAVING (impressions > 0) 
    OR (clicks > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:d08ca9ad-0c4b-4e47-9dc1-7450d42cd1a7-sub-query-limited timeout:25000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM ltv_tz 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true'))) 
    AND (NOT ((source = 'organic') 
    OR ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit'))))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:ebc6716e-b9b6-432a-bd3a-40ad4ce30f36-sub-query-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   site_id,
   ad,
   media_source,
   longSum(installs_count) AS installs,
   longSum(inappevents_count) AS count,
   doubleSum(revenue) AS sum,
   longSum(first_inapps) AS new,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_inappevents_count) AS organic_count,
   doubleSum(organic_revenue) AS organic_sum,
   longSum(organic_first_inapps) AS organic_new 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'com.kuku') 
    AND (attribution_type = 'install')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   site_id,
   ad,
   media_source 
HAVING (installs > 0) 
    OR (count > 0) 
    OR (sum > 0) 
    OR (new > 0) 
    OR (organic_installs > 0) 
    OR (organic_count > 0) 
    OR (organic_sum > 0) 
    OR (organic_new > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:master-api groupByStrategy:v2 priority:-1 queryId:662d66f0-4dae-421e-bbbc-1e2109d0548b timeout:119000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM ltv_tz 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true'))) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: all */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:10cdd8d9-4e84-470f-b89f-7af1b126de8b-sub-query-filters-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   channel,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   ad,
   media_source,
   longSum(installs_count) AS installs,
   longSum(inappevents_count) AS count,
   doubleSum(revenue) AS sum,
   longSum(first_inapps) AS new,
   longSum(organic_installs_count) AS organic_installs,
   longSum(organic_inappevents_count) AS organic_count,
   doubleSum(organic_revenue) AS organic_sum,
   longSum(organic_first_inapps) AS organic_new 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND ((app_id = 'kuku') 
    AND (((source = 'facebook') 
    AND (media_source = 'facebook')) 
    OR ((source = 'facebook') 
    AND (unmasked_media_source = 'facebook'))) 
    AND (attribution_type = 'install')) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   channel,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   ad,
   media_source 
HAVING (installs > 0) 
    OR (count > 0) 
    OR (sum > 0) 
    OR (new > 0) 
    OR (organic_installs > 0) 
    OR (organic_count > 0) 
    OR (organic_sum > 0) 
    OR (organic_new > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:master-api groupByStrategy:v2 priority:-1 queryId:87b3b04c-922b-45a6-8d25-cbe4476d9cc1 timeout:119000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   site_id,
   ad,
   media_source,
   longSum(impressions_count) AS impressions,
   longSum(clicks_count) AS clicks,
   longSum(organic_impressions_count) AS organic_impressions,
   longSum(organic_clicks_count) AS organic_clicks 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'com.kuku') 
    AND (attribution_type = 'install')) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   adset_id,
   source,
   adset_name,
   ad_id,
   ltv_country,
   attribution_type,
   campaign,
   site_id,
   ad,
   media_source 
HAVING (impressions > 0) 
    OR (clicks > 0) 
    OR (organic_impressions > 0) 
    OR (organic_clicks > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:master-api groupByStrategy:v2 priority:-1 queryId:de3f8c57-c72b-4777-b20e-226ac161325f timeout:119000] */

SELECT partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM ltv_tz 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND ((is_attributed = '') 
    OR (is_attributed = 'true'))) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY partner,
   app_id,
   unmasked_media_source,
   source,
   media_source,
   is_attributed 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:10cdd8d9-4e84-470f-b89f-7af1b126de8b-sub-query-totals-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   multiple_attribution_flag,
   attribution_type,
   media_source,
   longSum(installs_count) AS installs,
   longSum(organic_installs_count) AS organic_installs 
FROM  
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND (attribution_type = 'install') 
    AND (multiple_attribution_flag = 'false') 
    AND (((campaign_id = '23847985332990448') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'facebook') 
    OR (unmasked_media_source = 'facebook'))) 
    OR ((campaign_id = '95a80ebb-8cb2-4e49-99d7-728d5c4b64a7') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'snapchat_int') 
    OR (unmasked_media_source = 'snapchat_int'))) 
    OR ((campaign_id = 'ada979b8-c239-4b0f-bfd8-0fa8a92d51dd') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'snapchat_int') 
    OR (unmasked_media_source = 'snapchat_int'))) 
    OR ((campaign_id = '515326273') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'apple search ads') 
    OR (unmasked_media_source = 'apple search ads'))) 
    OR ((campaign_id = '23849011797040448') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'facebook') 
    OR (unmasked_media_source = 'facebook'))) 
    OR ((campaign_id = '1704164591227953') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'bytedanceglobal_int') 
    OR (unmasked_media_source = 'bytedanceglobal_int'))) 
    OR ((campaign_id = '1741233741560834') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'bytedanceglobal_int') 
    OR (unmasked_media_source = 'bytedanceglobal_int'))))) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   multiple_attribution_flag,
   attribution_type,
   media_source 
HAVING (installs > 0) 
    OR (organic_installs > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:3944576c-f49b-48c8-b228-3a0465fa9b1e-sub-query-totals-limited timeout:25000] */

SELECT campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   media_source,
   longSum(installs_count) AS installs 
FROM ltv 
WHERE (batch <= '2022-09-18') 
    AND (((app_id = 'kuku') 
    AND (attribution_type = 'install') 
    AND (((campaign_id = '23847985332990448') 
    AND (app_id = 'kuku') 
    AND (((source = 'facebook') 
    AND (media_source = 'facebook')) 
    OR ((source = 'facebook') 
    AND (unmasked_media_source = 'facebook')))) 
    OR ((campaign_id = '95a80ebb-8cb2-4e49-99d7-728d5c4b64a7') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'snapchat_int') 
    OR (unmasked_media_source = 'snapchat_int'))) 
    OR ((campaign_id = 'ada979b8-c239-4b0f-bfd8-0fa8a92d51dd') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'snapchat_int') 
    OR (unmasked_media_source = 'snapchat_int'))) 
    OR ((campaign_id = '515326273') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'apple search ads') 
    OR (unmasked_media_source = 'apple search ads'))) 
    OR ((campaign_id = '23849011797040448') 
    AND (app_id = 'kuku') 
    AND (((source = 'facebook') 
    AND (media_source = 'facebook')) 
    OR ((source = 'facebook') 
    AND (unmasked_media_source = 'facebook')))) 
    OR ((campaign_id = '1704164591227953') 
    AND (app_id = 'kuku') 
    AND ((media_source = 'bytedanceglobal_int') 
    OR (unmasked_media_source = 'bytedanceglobal_int'))) 
    OR ((campaign_id = '1741233741560834') 
    AND (app_id = 'id948050708') 
    AND ((media_source = 'bytedanceglobal_int') 
    OR (unmasked_media_source = 'bytedanceglobal_int')))) 
    AND (NOT (source = 'organic'))) 
    AND (NOT ((media_source = 'exceeded_mediasource_limit') 
    OR (unmasked_media_source = 'exceeded_mediasource_limit')))) 
GROUP BY campaign_id,
   partner,
   app_id,
   unmasked_media_source,
   source,
   attribution_type,
   media_source 
HAVING (installs > 0) 
LIMIT 1000000 
/* granularity: DAY */ 
/* context: map[feature:unified-dashboard groupByStrategy:v2 priority:1 queryId:3944576c-f49b-48c8-b228-3a0465fa9b1e-sub-query-totals-limited timeout:25000] */

