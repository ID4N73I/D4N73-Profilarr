-- @operation: export
-- @entity: batch
-- @name: New Update
-- @exportedAt: 2026-10-03T03:41:36.050Z
-- @opIds: 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159

-- --- BEGIN op 2141 ( update custom_format "Codec - x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x265', 'x265 - Over Maximum Size', 'size', 'radarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x265', 'x265 - Over Maximum Size', 1073741824, 3221225472);
-- --- END op 2141

-- --- BEGIN op 2142 ( update custom_format "Codec - x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x264', 'x264 -  Maximum Size', 'size', 'radarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x264', 'x264 -  Maximum Size', 1073741824, 5368709120);
-- --- END op 2142

-- --- BEGIN op 2143 ( update custom_format "Codec - x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Codec - x265'
	  AND name = 'x265 - Over Maximum Size'
	  AND type = 'size'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2143

-- --- BEGIN op 2144 ( update custom_format "Codec - x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x265', 'x265 - Maximum Size', 'size', 'radarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x265', 'x265 - Maximum Size', 1073741824, 3221225472);
-- --- END op 2144

-- --- BEGIN op 2145 ( update custom_format "Codec - x265" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Codec - x265'
	  AND name = 'x265 - Maximum Size'
	  AND type = 'size'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2145

-- --- BEGIN op 2146 ( update custom_format "Codec - x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x265', 'x265 - Maximum Size Radarr', 'size', 'radarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x265', 'x265 - Maximum Size Radarr', 1073741824, 3221225472);
-- --- END op 2146

-- --- BEGIN op 2147 ( update custom_format "Codec - x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x265', 'x265 - Maximum Size Sonarr', 'size', 'sonarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x265', 'x265 - Maximum Size Sonarr', 536870912, 1610612736);
-- --- END op 2147

-- --- BEGIN op 2148 ( update custom_format "Codec - x264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Codec - x264'
	  AND name = 'x264 -  Maximum Size'
	  AND type = 'size'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2148

-- --- BEGIN op 2149 ( update custom_format "Codec - x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x264', 'x264 -  Maximum Size Radarr', 'size', 'radarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x264', 'x264 -  Maximum Size Radarr', 1073741824, 5368709120);
-- --- END op 2149

-- --- BEGIN op 2150 ( update custom_format "Codec - x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x264', 'x264 -  Maximum Size ', 'size', 'all', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x264', 'x264 -  Maximum Size ', 536870912, 3221225472);
-- --- END op 2150

-- --- BEGIN op 2151 ( update custom_format "Codec - x264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Codec - x264'
	  AND name = 'Codec - x264'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2151

-- --- BEGIN op 2152 ( update custom_format "Codec - x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x264', 'Codec - x264 Sonarr', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Codec - x264', 'Codec - x264 Sonarr', 'Codec - x264');
-- --- END op 2152

-- --- BEGIN op 2153 ( update custom_format "Codec - x264" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Codec - x264'
  AND name = 'Codec - x264 Sonarr'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2153

-- --- BEGIN op 2154 ( update custom_format "Codec - x264" )
UPDATE custom_format_conditions
SET arr_type = 'all'
WHERE custom_format_name = 'Codec - x264'
  AND name = 'Codec - x264 Sonarr'
  AND type = 'release_title'
  AND arr_type = 'sonarr'
  AND negate = 0
  AND required = 0;
-- --- END op 2154

-- --- BEGIN op 2155 ( update custom_format "Codec - x264" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Codec - x264'
  AND name = 'x264 -  Maximum Size '
  AND type = 'size'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 2155

-- --- BEGIN op 2156 ( update custom_format "Codec - x264" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Codec - x264'
	  AND name = 'x264 -  Maximum Size '
	  AND type = 'size'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 2156

-- --- BEGIN op 2157 ( update custom_format "Codec - x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x264', 'x264 -  Maximum Size Sonarr', 'size', 'sonarr', 0, 0);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x264', 'x264 -  Maximum Size Sonarr', 536870912, 3221225472);
-- --- END op 2157

-- --- BEGIN op 2158 ( update custom_format "Codec - x265" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Codec - x265' AND condition_name = 'x265 - Maximum Size Radarr' AND min_bytes IS 1073741824 AND max_bytes IS 3221225472;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x265', 'x265 - Maximum Size Radarr', 1073741824, 4294967296);
-- --- END op 2158

-- --- BEGIN op 2159 ( update custom_format "Codec - x264" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Codec - x264' AND condition_name = 'x264 -  Maximum Size Radarr' AND min_bytes IS 1073741824 AND max_bytes IS 5368709120;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Codec - x264', 'x264 -  Maximum Size Radarr', 1073741824, 8589934592);
-- --- END op 2159
