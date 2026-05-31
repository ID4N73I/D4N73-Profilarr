-- @operation: export
-- @entity: batch
-- @name: 0.6
-- @exportedAt: 2026-05-31T17:22:38.402Z
-- @opIds: 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120

-- --- BEGIN op 1069 ( create custom_format "Size" )
insert into "custom_formats" ("name", "description") values ('Size', '');
-- --- END op 1069

-- --- BEGIN op 1070 ( update custom_format "Size" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Size', 'New Condition', 'size', 'radarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Size', 'New Condition', 1073741824, 4294967296);
-- --- END op 1070

-- --- BEGIN op 1071 ( update quality_profile "Movies 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'Movies 720p/1080p' and "minimum_custom_format_score" = 100;
-- --- END op 1071

-- --- BEGIN op 1072 ( update quality_profile "Movies 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 250 where "name" = 'Movies 720p/1080p' and "upgrade_until_score" = 150;
-- --- END op 1072

-- --- BEGIN op 1073 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Size', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'radarr'
);
-- --- END op 1073

-- --- BEGIN op 1074 ( update quality_profile "Anime 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'Anime 720p/1080p' and "minimum_custom_format_score" = 100;
-- --- END op 1074

-- --- BEGIN op 1075 ( update quality_profile "Anime 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 250 where "name" = 'Anime 720p/1080p' and "upgrade_until_score" = 150;
-- --- END op 1075

-- --- BEGIN op 1076 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Size', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'radarr'
);
-- --- END op 1076

-- --- BEGIN op 1077 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Remux-1080p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBRip-2160p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBDL-2160p', NULL, 4, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBRip-2160p', 'WEBDL-2160p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 2)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'Anime 720p/1080p'
      AND quality_group_name = '1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'Anime 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'Anime 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'Anime 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'HDTV-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'Anime 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 1077

-- --- BEGIN op 1078 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Size', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'sonarr'
);
-- --- END op 1078

-- --- BEGIN op 1079 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Size'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 1079

-- --- BEGIN op 1080 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Size', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'sonarr'
);
-- --- END op 1080

-- --- BEGIN op 1081 ( update custom_format "Size" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'Size'
  AND name = 'New Condition'
  AND type = 'size'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;
-- --- END op 1081

-- --- BEGIN op 1082 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Size', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'sonarr'
);
-- --- END op 1082

-- --- BEGIN op 1083 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Remux-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBRip-2160p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBDL-2160p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
      AND quality_name NOT IN ('Bluray-720p', 'WEBDL-720p', 'WEBRip-720p', 'HDTV-720p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
        AND NOT (
          (quality_name = 'Bluray-720p'
        AND position = 0)
      OR (quality_name = 'WEBDL-720p'
        AND position = 1)
      OR (quality_name = 'WEBRip-720p'
        AND position = 2)
      OR (quality_name = 'HDTV-720p'
        AND position = 3)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'Movies 720p/1080p'
      AND quality_group_name = '720p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'Movies 720p/1080p' AS quality_profile_name, '720p' AS quality_group_name, 'Bluray-720p' AS quality_name, 0 AS position
UNION ALL
SELECT 'Movies 720p/1080p' AS quality_profile_name, '720p' AS quality_group_name, 'WEBDL-720p' AS quality_name, 1 AS position
UNION ALL
SELECT 'Movies 720p/1080p' AS quality_profile_name, '720p' AS quality_group_name, 'HDTV-720p' AS quality_name, 2 AS position
UNION ALL
SELECT 'Movies 720p/1080p' AS quality_profile_name, '720p' AS quality_group_name, 'WEBRip-720p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBRip-2160p', 'WEBDL-2160p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 2)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'Movies 720p/1080p'
      AND quality_group_name = '1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'Movies 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'Movies 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'Movies 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'HDTV-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'Movies 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 1083

-- --- BEGIN op 1084 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBRip-2160p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBRip-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBDL-2160p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBDL-2160p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBRip-2160p', 'WEBDL-2160p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-2160p'
        AND position = 2)
      OR (quality_name = 'WEBDL-2160p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'TV-Series 720p/1080p'
      AND quality_group_name = '1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'TV-Series 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Remux-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'TV-Series 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'TV-Series 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'TV-Series 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'HDTV-1080p' AS quality_name, 3 AS position
UNION ALL
SELECT 'TV-Series 720p/1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 4 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 1084

-- --- BEGIN op 1085 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1085

-- --- BEGIN op 1086 ( update quality_profile "Anime 720p/1080p" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1086

-- --- BEGIN op 1087 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Size'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 1087

-- --- BEGIN op 1088 ( create quality_profile "Anime-Series 720p/1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Anime-Series 720p/1080p', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime-Series 720p/1080p', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '1080p', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '1080p', 'HDTV-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '1080p', 'WEBRip-1080p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', NULL, '1080p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime-Series 720p/1080p', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime-Series 720p/1080p', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', NULL, '720p', 1, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Remux-1080p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'WEBRip-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'WEBDL-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Remux-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Bluray-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'HDTV-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Bluray-576p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Bluray-480p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'WEBDL-480p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'WEBRip-480p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'HDTV-480p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'DVD-R', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'DVD', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'SDTV', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'REGIONAL', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'DVDSCR', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'TELECINE', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'TELESYNC', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'CAM', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'WORKPRINT', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Unknown', NULL, 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'Raw-HD', NULL, 23, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime-Series 720p/1080p', 'BR-DISK', NULL, 24, 0, 0);
-- --- END op 1088

-- --- BEGIN op 1089 ( update quality_profile "Anime-Series 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 200 where "name" = 'Anime-Series 720p/1080p' and "minimum_custom_format_score" = 0;
-- --- END op 1089

-- --- BEGIN op 1090 ( update quality_profile "Anime-Series 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 250 where "name" = 'Anime-Series 720p/1080p' and "upgrade_until_score" = 0;
-- --- END op 1090

-- --- BEGIN op 1091 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '2160p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'radarr'
);
-- --- END op 1091

-- --- BEGIN op 1092 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '2160p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'sonarr'
);
-- --- END op 1092

-- --- BEGIN op 1093 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '360p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'radarr'
);
-- --- END op 1093

-- --- BEGIN op 1094 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '360p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'sonarr'
);
-- --- END op 1094

-- --- BEGIN op 1095 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '480p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'radarr'
);
-- --- END op 1095

-- --- BEGIN op 1096 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '480p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'sonarr'
);
-- --- END op 1096

-- --- BEGIN op 1097 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '540p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'radarr'
);
-- --- END op 1097

-- --- BEGIN op 1098 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '540p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'sonarr'
);
-- --- END op 1098

-- --- BEGIN op 1099 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '576p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'radarr'
);
-- --- END op 1099

-- --- BEGIN op 1100 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', '576p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'sonarr'
);
-- --- END op 1100

-- --- BEGIN op 1101 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Codec - x264', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'radarr'
);
-- --- END op 1101

-- --- BEGIN op 1102 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Codec - x264', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'sonarr'
);
-- --- END op 1102

-- --- BEGIN op 1103 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Codec - x265', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'radarr'
);
-- --- END op 1103

-- --- BEGIN op 1104 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Codec - x265', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'sonarr'
);
-- --- END op 1104

-- --- BEGIN op 1105 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Language - German', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'radarr'
);
-- --- END op 1105

-- --- BEGIN op 1106 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Language - German', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'sonarr'
);
-- --- END op 1106

-- --- BEGIN op 1107 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Size', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'radarr'
);
-- --- END op 1107

-- --- BEGIN op 1108 ( update quality_profile "Anime-Series 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 100 where "name" = 'Anime-Series 720p/1080p' and "minimum_custom_format_score" = 200;
-- --- END op 1108

-- --- BEGIN op 1109 ( update quality_profile "Anime-Series 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 150 where "name" = 'Anime-Series 720p/1080p' and "upgrade_until_score" = 250;
-- --- END op 1109

-- --- BEGIN op 1110 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = '2160p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1110

-- --- BEGIN op 1111 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = '360p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1111

-- --- BEGIN op 1112 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = '480p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1112

-- --- BEGIN op 1113 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = '540p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1113

-- --- BEGIN op 1114 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = '576p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1114

-- --- BEGIN op 1115 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Codec - x264'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 1115

-- --- BEGIN op 1116 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1116

-- --- BEGIN op 1117 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Language - German'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 1117

-- --- BEGIN op 1118 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Size'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 1118

-- --- BEGIN op 1119 ( update delay_profile "Sonarr" )
update "delay_profiles" set "usenet_delay" = 60 where "name" = 'Sonarr' and "usenet_delay" = 0;
-- --- END op 1119

-- --- BEGIN op 1120 ( update delay_profile "Sonarr" )
update "delay_profiles" set "torrent_delay" = 60 where "name" = 'Sonarr' and "torrent_delay" = 0;
-- --- END op 1120
