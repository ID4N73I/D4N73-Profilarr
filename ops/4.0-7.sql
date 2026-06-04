-- @operation: export
-- @entity: batch
-- @name: 0.7
-- @exportedAt: 2026-06-04T12:38:38.352Z
-- @opIds: 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159

-- --- BEGIN op 1122 ( create regular_expression "Codec - h266" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Codec - h266', '[xh][ ._-]?266|\bVVC(\b|\d)', NULL, NULL);
-- --- END op 1122

-- --- BEGIN op 1123 ( create custom_format "Codec - h266" )
insert into "custom_formats" ("name", "description") values ('Codec - h266', '');
-- --- END op 1123

-- --- BEGIN op 1124 ( update custom_format "Codec - h266" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - h266', 'Codec - h266', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Codec - h266', 'Codec - h266', 'Codec - h266');
-- --- END op 1124

-- --- BEGIN op 1125 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Codec - h266', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Codec - h266'
    AND arr_type = 'radarr'
);
-- --- END op 1125

-- --- BEGIN op 1126 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Codec - h266', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Codec - h266'
    AND arr_type = 'sonarr'
);
-- --- END op 1126

-- --- BEGIN op 1127 ( update quality_profile "Anime 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 35
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1127

-- --- BEGIN op 1128 ( update quality_profile "Anime-Series 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 35
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1128

-- --- BEGIN op 1129 ( update quality_profile "Anime-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime-Series 720p/1080p', 'Size', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND custom_format_name = 'Size'
    AND arr_type = 'sonarr'
);
-- --- END op 1129

-- --- BEGIN op 1130 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = '2160p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1130

-- --- BEGIN op 1131 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = '360p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1131

-- --- BEGIN op 1132 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = '480p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1132

-- --- BEGIN op 1133 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = '540p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1133

-- --- BEGIN op 1134 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = '576p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1134

-- --- BEGIN op 1135 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - h266'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1135

-- --- BEGIN op 1136 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - x264'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 1136

-- --- BEGIN op 1137 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1137

-- --- BEGIN op 1138 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Language - German'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 1138

-- --- BEGIN op 1139 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = '2160p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1139

-- --- BEGIN op 1140 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = '360p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1140

-- --- BEGIN op 1141 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = '480p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1141

-- --- BEGIN op 1142 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = '540p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1142

-- --- BEGIN op 1143 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = '576p'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 1143

-- --- BEGIN op 1144 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Codec - h266', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Codec - h266'
    AND arr_type = 'radarr'
);
-- --- END op 1144

-- --- BEGIN op 1145 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Codec - x264'
  AND arr_type = 'sonarr'
  AND score = 25;
-- --- END op 1145

-- --- BEGIN op 1146 ( update quality_profile "Movies 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 35
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1146

-- --- BEGIN op 1147 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1147

-- --- BEGIN op 1148 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Language - German'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 1148

-- --- BEGIN op 1149 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Size'
  AND arr_type = 'sonarr'
  AND score = 0;
-- --- END op 1149

-- --- BEGIN op 1150 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = '2160p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1150

-- --- BEGIN op 1151 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = '360p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1151

-- --- BEGIN op 1152 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = '480p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1152

-- --- BEGIN op 1153 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = '540p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1153

-- --- BEGIN op 1154 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = '576p'
  AND arr_type = 'radarr'
  AND score = -1000;
-- --- END op 1154

-- --- BEGIN op 1155 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Codec - h266', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Codec - h266'
    AND arr_type = 'sonarr'
);
-- --- END op 1155

-- --- BEGIN op 1156 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = 'Codec - x264'
  AND arr_type = 'radarr'
  AND score = 25;
-- --- END op 1156

-- --- BEGIN op 1157 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1157

-- --- BEGIN op 1158 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 35
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1158

-- --- BEGIN op 1159 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = 'Language - German'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 1159
