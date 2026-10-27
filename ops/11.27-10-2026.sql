-- @operation: export
-- @entity: batch
-- @name: 27.10.2026
-- @exportedAt: 2026-10-27T09:31:22.511Z
-- @opIds: 2200, 2201, 2202, 2203, 2204

-- --- BEGIN op 2200 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 5, "max_size" = 40, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 5 and "max_size" = 30 and "preferred_size" = 15;
-- --- END op 2200

-- --- BEGIN op 2201 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 5, "max_size" = 40, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'HDTV-1080p' and "min_size" = 5 and "max_size" = 30 and "preferred_size" = 15;
-- --- END op 2201

-- --- BEGIN op 2202 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 5, "max_size" = 40, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'Remux-1080p' and "min_size" = 5 and "max_size" = 30 and "preferred_size" = 15;
-- --- END op 2202

-- --- BEGIN op 2203 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 5, "max_size" = 40, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 5 and "max_size" = 30 and "preferred_size" = 15;
-- --- END op 2203

-- --- BEGIN op 2204 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 5, "max_size" = 40, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 5 and "max_size" = 30 and "preferred_size" = 15;
-- --- END op 2204
