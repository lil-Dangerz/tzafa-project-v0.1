SELECT
  CASE
    WHEN result_freshness_minutes < 5 THEN 'under_5m'
    WHEN result_freshness_minutes < 15 THEN 'under_15m'
    ELSE 'over_15m'
  END AS freshness_bucket,
  COUNT(*) AS bucket_count
FROM catalog_index_freshness
GROUP BY 1
ORDER BY 1;
