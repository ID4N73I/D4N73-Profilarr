-- @operation: export
-- @entity: batch
-- @name: 0.5
-- @exportedAt: 2026-05-30T21:44:39.928Z
-- @opIds: 793, 794

-- --- BEGIN op 793 ( update quality_profile "Movies 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND custom_format_name = 'Language - German'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 793

-- --- BEGIN op 794 ( update quality_profile "Anime 720p/1080p" )
UPDATE quality_profile_custom_formats
SET score = 51
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND custom_format_name = 'Codec - x265'
  AND arr_type = 'radarr'
  AND score = 50;
-- --- END op 794
