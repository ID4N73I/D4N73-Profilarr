-- @operation: export
-- @entity: batch
-- @name: 0.10
-- @exportedAt: 2026-06-11T07:51:59.492Z
-- @opIds: 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219

-- --- BEGIN op 1212 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_qualities
SET upgrade_until = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 1;

UPDATE quality_profile_qualities
SET upgrade_until = 1
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1212

-- --- BEGIN op 1213 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 22, "preferred_size" = 10 where "name" = 'Sonarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 1213

-- --- BEGIN op 1214 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 22, "preferred_size" = 10 where "name" = 'Sonarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 1214

-- --- BEGIN op 1215 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 22, "preferred_size" = 10 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 1215

-- --- BEGIN op 1216 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 22, "preferred_size" = 10 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 1216

-- --- BEGIN op 1217 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBRip-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 1217

-- --- BEGIN op 1218 ( update delay_profile "Sonarr" )
update "delay_profiles" set "usenet_delay" = 0 where "name" = 'Sonarr' and "usenet_delay" = 60;
-- --- END op 1218

-- --- BEGIN op 1219 ( update delay_profile "Sonarr" )
update "delay_profiles" set "torrent_delay" = 0 where "name" = 'Sonarr' and "torrent_delay" = 60;
-- --- END op 1219
