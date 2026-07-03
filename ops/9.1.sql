-- @operation: export
-- @entity: batch
-- @name: 1
-- @exportedAt: 2026-07-03T14:53:24.079Z
-- @opIds: 1785, 1786

-- --- BEGIN op 1785 ( update quality_profile "TV-Series 720p/1080p" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1785

-- --- BEGIN op 1786 ( update quality_profile "Anime-Series 720p/1080p" )
UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 0
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET enabled = 1
WHERE quality_profile_name = 'Anime-Series 720p/1080p'
  AND quality_name = 'WEBDL-1080p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 1786
