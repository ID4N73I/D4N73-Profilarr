-- @operation: export
-- @entity: batch
-- @name: 0.9
-- @exportedAt: 2026-06-07T18:47:54.496Z
-- @opIds: 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210

-- --- BEGIN op 1199 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'HDTV-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND name = '1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND name = '720p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Bluray-1080p', NULL, 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBDL-1080p', NULL, 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'HDTV-1080p', NULL, 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBRip-1080p', NULL, 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Bluray-720p', NULL, 4, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBDL-720p', NULL, 5, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBRip-720p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'HDTV-720p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 30
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1199

-- --- BEGIN op 1200 ( update quality_profile "Anime 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - h266'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1200

-- --- BEGIN op 1201 ( update quality_profile "Anime 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 35;
-- --- END op 1201

-- --- BEGIN op 1202 ( update quality_profile "Anime-Series 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Codec - h266'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1202

-- --- BEGIN op 1203 ( update quality_profile "Anime-Series 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'sonarr'
  AND score = 35;
-- --- END op 1203

-- --- BEGIN op 1204 ( update quality_profile "Anime-Series 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'HDTV-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND name = '1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND name = '720p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'Bluray-1080p', NULL, 0, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'WEBDL-1080p', NULL, 1, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'HDTV-1080p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'WEBRip-1080p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'Bluray-720p', NULL, 4, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'WEBDL-720p', NULL, 5, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'WEBRip-720p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime-Series 720p/1080p', 'HDTV-720p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime-Series 720p/1080p'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 30
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1204

-- --- BEGIN op 1205 ( update quality_profile "Movies 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Codec - h266'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 1205

-- --- BEGIN op 1206 ( update quality_profile "Movies 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 35;
-- --- END op 1206

-- --- BEGIN op 1207 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'HDTV-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND name = '1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND name = '720p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Bluray-1080p', NULL, 4, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBDL-1080p', NULL, 5, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'HDTV-1080p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBRip-1080p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Bluray-720p', NULL, 9, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBDL-720p', NULL, 10, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'HDTV-720p', NULL, 11, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBRip-720p', NULL, 12, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 0
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2, enabled = 0
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3, enabled = 0
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 30
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 24
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1207

-- --- BEGIN op 1208 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = 'Codec - h266'
  AND arr_type = 'sonarr'
  AND score = 50;
-- --- END op 1208

-- --- BEGIN op 1209 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 50
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'sonarr'
  AND score = 35;
-- --- END op 1209

-- --- BEGIN op 1210 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'Bluray-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'HDTV-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'Remux-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND name = '1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 3
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND name = '720p';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Remux-1080p', NULL, 5, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Bluray-1080p', NULL, 6, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Bluray-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBDL-1080p', NULL, 7, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'HDTV-1080p', NULL, 8, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBRip-1080p', NULL, 9, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Bluray-720p', NULL, 10, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Bluray-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBDL-720p', NULL, 11, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBDL-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBRip-720p', NULL, 12, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBRip-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'HDTV-720p', NULL, 13, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 2
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 24
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 25
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 26
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 27
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 28
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 29
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 30
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1210
