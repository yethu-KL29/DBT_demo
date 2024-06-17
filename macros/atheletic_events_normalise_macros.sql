{% macro athletic_events_normalise() %}

WITH normalized_athletes AS (
    SELECT
        "ID",
        "Name",
        "Sex",
        "Age",
        "Height",
        "Weight",
        "Team",
        "NOC",
        "Games",
        "Year",
        "Season",
        "City",
        "Sport",
        "Event",
        "Medal",
        TRIM("Name") AS Normalized_Name
    FROM {{ ref('stg_athlete_events') }}
)

SELECT *
FROM normalized_athletes

{% endmacro %}
