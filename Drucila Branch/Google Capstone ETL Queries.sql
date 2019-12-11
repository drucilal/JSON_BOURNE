
--- Google Analytics Data Set: Retrieved using SQL Queries

--- Below is a list of queries that were used to extracted and unnest variables 

SELECT 
channelGrouping, date, fullVisitorId, socialEngagementType, visitId, visitNumber, 
visitStartTime, device.browser, device.browserSize, 
device.browserVersion, device.deviceCategory, device.flashVersion,
 device.isMobile, device.language, device.mobileDeviceBranding, 
 device.mobileDeviceInfo, device.mobileDeviceMarketingName, device.mobileDeviceModel, 
 device.mobileInputSelector, device.operatingSystem, device.operatingSystemVersion, device.screenColors, device.screenResolution, 
 geoNetwork.city, geoNetwork.cityId, geoNetwork.continent, geoNetwork.country, geoNetwork.latitude, geoNetwork.longitude, geoNetwork.metro,
  geoNetwork.networkDomain, geoNetwork.networkLocation, geoNetwork.region, geoNetwork.subContinent, totals.bounces, totals.hits,
   totals.newVisits, totals.pageviews, totals.transactionRevenue, totals.visits, trafficSource.adContent, trafficSource.campaign, trafficSource.campaignCode, 
   trafficSource.isTrueDirect, trafficSource.keyword, trafficSource.medium, trafficSource.referralPath, trafficSource.source
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE _TABLE_SUFFIX BETWEEN '_' AND '_' -- Different Dates were chosen within the year. 

SELECT
  fullVisitorId,date, visitId ,
  hits.transaction.transactionId, channelGrouping ,socialEngagementType , appInfo.screenName, appInfo.landingscreenName , 
  appInfo.exitscreenName,transaction.affiliation, device.isMobile,device.deviceCategory , geoNetwork.continent , geoNetwork.subContinent , 
  geoNetwork.country , geoNetwork.region , geoNetwork.metro ,geoNetwork.city,  prod.productSKU, prod.v2ProductName, prod.v2ProductCategory, 
  prod.productVariant, prod.productBrand, prod.productRevenue, prod.productPrice,  prod.productQuantity,   hitNumber, time, hour, minute,  
  isInteraction,  isExit,   transaction.transactionRevenue,  transaction.transactionTax, transaction.currencyCode , totals.visits, totals.hits, 
  totals.pageviews, totals.bounces,totals.newVisits 
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hits,
UNNEST(hits.product) AS prod
WHERE _TABLE_SUFFIX BETWEEN '20160801' AND '20170731' AND eCommerceAction.action_type = '6'


SELECT
  fullVisitorId, h.hitNumber, h.time, h.hour, h.minute, h.isSecure, h.isInteraction, h.isEntrance, h.isExit, h.referer ,
   page.*, transaction.*, appInfo.*, product.*, social.*, 
FROM
`bigquery-public-data.google_analytics_sample.ga_sessions_20161201*` t, t.hits h



