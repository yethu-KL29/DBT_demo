-- models/example/stg_athlete_medal_summary.sql

WITH athlete_medal_summary AS (
    SELECT
        "Event",
        "Sport",
        COUNT(*) AS Total_Athletes
    FROM {{ ref('stg_athlete_events') }}
    GROUP BY "Event", "Sport"
)

SELECT * FROM athlete_medal_summary
