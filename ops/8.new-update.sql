-- @operation: export
-- @entity: batch
-- @name: New Update
-- @exportedAt: 2026-06-17T08:50:35.794Z
-- @opIds: 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228

-- --- BEGIN op 1221 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 25, "preferred_size" = 12 where "name" = 'Sonarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 22 and "preferred_size" = 10;
-- --- END op 1221

-- --- BEGIN op 1222 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 25, "preferred_size" = 12 where "name" = 'Sonarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 22 and "preferred_size" = 10;
-- --- END op 1222

-- --- BEGIN op 1223 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 25, "preferred_size" = 12 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 22 and "preferred_size" = 10;
-- --- END op 1223

-- --- BEGIN op 1224 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 25, "preferred_size" = 12 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 22 and "preferred_size" = 10;
-- --- END op 1224

-- --- BEGIN op 1225 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 30, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 25 and "preferred_size" = 12;
-- --- END op 1225

-- --- BEGIN op 1226 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 30, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 25 and "preferred_size" = 12;
-- --- END op 1226

-- --- BEGIN op 1227 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 30, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 25 and "preferred_size" = 12;
-- --- END op 1227

-- --- BEGIN op 1228 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 30, "preferred_size" = 15 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 25 and "preferred_size" = 12;
-- --- END op 1228
