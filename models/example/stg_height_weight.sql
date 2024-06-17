-- models/example/height_weight_stats.sql

WITH athlete_stats AS (
    SELECT
        "NOC",
        "Sport",
       "Height" ,
       "Weight"
    FROM {{ ref('stg_athlete_events') }}  
    WHERE "Height" IS NOT NULL AND "Weight" IS NOT NULL
)

SELECT *
FROM athlete_stats


