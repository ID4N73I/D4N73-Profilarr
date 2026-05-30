-- @operation: export
-- @entity: batch
-- @name: Final Settings?
-- @exportedAt: 2026-05-30T23:00:50.673Z
-- @opIds: 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067

-- --- BEGIN op 803 ( create radarr_media_settings "Radarr" )
insert into "radarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Radarr', 'doNotPrefer', 1);
-- --- END op 803

-- --- BEGIN op 804 ( create sonarr_media_settings "Sonarr" )
insert into "sonarr_media_settings" ("name", "propers_repacks", "enable_media_info") values ('Sonarr', 'doNotPrefer', 1);
-- --- END op 804

-- --- BEGIN op 805 ( create delay_profile "Radarr" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Radarr', 'prefer_usenet', 0, 0, 0, 0, NULL);
-- --- END op 805

-- --- BEGIN op 806 ( create delay_profile "Sonarr" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Sonarr', 'prefer_usenet', 0, 0, 0, 0, NULL);
-- --- END op 806

-- --- BEGIN op 807 ( create radarr_quality_definitions "Radarr" )
insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-1080p', 5, 25, 5);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-576p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Bluray-720p', 0, 20, 10);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'BR-DISK', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'CAM', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVD-R', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'DVDSCR', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-1080p', 5, 25, 15);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'HDTV-720p', 0, 20, 10);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Raw-HD', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'REGIONAL', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-1080p', 5, 25, 15);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Remux-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'SDTV', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELECINE', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'TELESYNC', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'Unknown', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-1080p', 5, 25, 15);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBDL-720p', 0, 20, 10);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-1080p', 5, 25, 15);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-2160p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-480p', 0, 0, 0);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WEBRip-720p', 0, 20, 10);

insert into "radarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Radarr', 'WORKPRINT', 0, 0, 0);
-- --- END op 807

-- --- BEGIN op 808 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 30 where "name" = 'Radarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 5 and "max_size" = 25 and "preferred_size" = 5;
-- --- END op 808

-- --- BEGIN op 809 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 30, "preferred_size" = 15 where "name" = 'Radarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 809

-- --- BEGIN op 810 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 30 where "name" = 'Radarr' and "quality_name" = 'HDTV-1080p' and "min_size" = 5 and "max_size" = 25 and "preferred_size" = 15;
-- --- END op 810

-- --- BEGIN op 811 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 30, "preferred_size" = 15 where "name" = 'Radarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 811

-- --- BEGIN op 812 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 30 where "name" = 'Radarr' and "quality_name" = 'Remux-1080p' and "min_size" = 5 and "max_size" = 25 and "preferred_size" = 15;
-- --- END op 812

-- --- BEGIN op 813 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 30 where "name" = 'Radarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 5 and "max_size" = 25 and "preferred_size" = 15;
-- --- END op 813

-- --- BEGIN op 814 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 30, "preferred_size" = 15 where "name" = 'Radarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 814

-- --- BEGIN op 815 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 60, "preferred_size" = 30 where "name" = 'Radarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 5 and "max_size" = 25 and "preferred_size" = 15;
-- --- END op 815

-- --- BEGIN op 816 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 5, "max_size" = 30, "preferred_size" = 15 where "name" = 'Radarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 20 and "preferred_size" = 10;
-- --- END op 816

-- --- BEGIN op 817 ( create sonarr_quality_definitions "Sonarr" )
insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-1080p', 5, 30, 15);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-576p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Bluray-720p', 0, 20, 10);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'DVD', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-1080p', 5, 30, 15);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'HDTV-720p', 0, 20, 10);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Raw-HD', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-1080p', 5, 30, 15);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Remux-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'SDTV', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'Unknown', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-1080p', 5, 30, 15);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBDL-720p', 0, 20, 10);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-1080p', 5, 30, 15);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-2160p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-480p', 0, 0, 0);

insert into "sonarr_quality_definitions" ("name", "quality_name", "min_size", "max_size", "preferred_size") values ('Sonarr', 'WEBRip-720p', 0, 20, 10);
-- --- END op 817

-- --- BEGIN op 818 ( create radarr_naming "Radarr" )
insert into "radarr_naming" ("name", "rename", "movie_format", "movie_folder_format", "replace_illegal_characters", "colon_replacement_format") values ('Radarr', 1, '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}}', '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}', 1, 'smart');
-- --- END op 818

-- --- BEGIN op 819 ( create sonarr_naming "Sonarr" )
insert into "sonarr_naming" ("name", "rename", "standard_episode_format", "daily_episode_format", "anime_episode_format", "series_folder_format", "season_folder_format", "replace_illegal_characters", "colon_replacement_format", "custom_colon_replacement_format", "multi_episode_style") values ('Sonarr', 1, 'S{season:00}E{episode:00} - {Episode CleanTitle} {Quality Title}', '{Air-Date} - {Episode CleanTitle}', 'S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle}{Series TitleYear}', '{Series Title}', 'Season {season:00}', 1, 4, NULL, 0);
-- --- END op 819

-- --- BEGIN op 820 ( create regular_expression "Codec - x264" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Codec - x264', '\b(x264|H\.264|AVC)\b', NULL, NULL);
-- --- END op 820

-- --- BEGIN op 821 ( create regular_expression "Codec - x265" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Codec - x265', '[xh][ ._-]?265|\bHEVC(\b|\d)', NULL, NULL);
-- --- END op 821

-- --- BEGIN op 822 ( create regular_expression "Language - German" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Language - German', '\b(GERMAN|DEUTSCH|DE|DTS-HD.DE|AC3.DE)\b', NULL, NULL);
-- --- END op 822

-- --- BEGIN op 823 ( create custom_format "360p" )
insert into "custom_formats" ("name", "description") values ('360p', '');
-- --- END op 823

-- --- BEGIN op 824 ( update custom_format "360p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('360p', '360p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('360p', '360p', '360p');
-- --- END op 824

-- --- BEGIN op 825 ( create custom_format "480p" )
insert into "custom_formats" ("name", "description") values ('480p', '');
-- --- END op 825

-- --- BEGIN op 826 ( update custom_format "480p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('480p', '480p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('480p', '480p', '480p');
-- --- END op 826

-- --- BEGIN op 827 ( create custom_format "540p" )
insert into "custom_formats" ("name", "description") values ('540p', '');
-- --- END op 827

-- --- BEGIN op 828 ( update custom_format "540p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('540p', '540p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('540p', '540p', '540p');
-- --- END op 828

-- --- BEGIN op 829 ( create custom_format "576p" )
insert into "custom_formats" ("name", "description") values ('576p', '');
-- --- END op 829

-- --- BEGIN op 830 ( update custom_format "576p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('576p', '576p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('576p', '576p', '576p');
-- --- END op 830

-- --- BEGIN op 831 ( create custom_format "2160p" )
insert into "custom_formats" ("name", "description") values ('2160p', '');
-- --- END op 831

-- --- BEGIN op 832 ( update custom_format "2160p" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p', '2160p', 'resolution', 'all', 0, 0);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('2160p', '2160p', '2160p');
-- --- END op 832

-- --- BEGIN op 833 ( create custom_format "Codec - x264" )
insert into "custom_formats" ("name", "description") values ('Codec - x264', '');
-- --- END op 833

-- --- BEGIN op 834 ( update custom_format "Codec - x264" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x264', 'Codec - x264', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Codec - x264', 'Codec - x264', 'Codec - x264');
-- --- END op 834

-- --- BEGIN op 835 ( create custom_format "Codec - x265" )
insert into "custom_formats" ("name", "description") values ('Codec - x265', '');
-- --- END op 835

-- --- BEGIN op 836 ( update custom_format "Codec - x265" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Codec - x265', 'Codec - x265', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Codec - x265', 'Codec - x265', 'Codec - x265');
-- --- END op 836

-- --- BEGIN op 837 ( create custom_format "Language - German" )
insert into "custom_formats" ("name", "description") values ('Language - German', '');
-- --- END op 837

-- --- BEGIN op 838 ( update custom_format "Language - German" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Language - German', 'Language - German', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Language - German', 'Language - German', 'Language - German');
-- --- END op 838

-- --- BEGIN op 839 ( create quality_profile "Movies 720p/1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Movies 720p/1080p', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 720p/1080p', 'WEB 1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'WEB 1080p', 'WEBDL-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'WEB 1080p', 'WEBRip-1080p', 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 720p/1080p', 'Pre-releases');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Pre-releases', 'REGIONAL', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Pre-releases', 'DVDSCR', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Pre-releases', 'TELECINE', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Pre-releases', 'TELESYNC', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Pre-releases', 'CAM', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Pre-releases', 'WORKPRINT', 5);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Movies 720p/1080p', 'Unwanted');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Unwanted', 'Unknown', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Unwanted', 'Raw-HD', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Movies 720p/1080p', 'Unwanted', 'BR-DISK', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Remux-1080p', NULL, 6, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Bluray-1080p', NULL, 7, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', NULL, 'WEB 1080p', 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'HDTV-1080p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Bluray-720p', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'WEBDL-720p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'WEBRip-720p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'HDTV-720p', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Bluray-576p', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'Bluray-480p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'WEBDL-480p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'WEBRip-480p', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'HDTV-480p', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'DVD-R', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'DVD', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', 'SDTV', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', NULL, 'Pre-releases', 22, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Movies 720p/1080p', NULL, 'Unwanted', 23, 0, 0);
-- --- END op 839

-- --- BEGIN op 840 ( update quality_profile "Movies 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 100 where "name" = 'Movies 720p/1080p' and "minimum_custom_format_score" = 0;
-- --- END op 840

-- --- BEGIN op 841 ( update quality_profile "Movies 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 150 where "name" = 'Movies 720p/1080p' and "upgrade_until_score" = 0;
-- --- END op 841

-- --- BEGIN op 842 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '2160p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'radarr'
);
-- --- END op 842

-- --- BEGIN op 843 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '360p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'radarr'
);
-- --- END op 843

-- --- BEGIN op 844 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '480p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'radarr'
);
-- --- END op 844

-- --- BEGIN op 845 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '540p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'radarr'
);
-- --- END op 845

-- --- BEGIN op 846 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '576p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'radarr'
);
-- --- END op 846

-- --- BEGIN op 847 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Codec - x264', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'radarr'
);
-- --- END op 847

-- --- BEGIN op 848 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Codec - x265', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'radarr'
);
-- --- END op 848

-- --- BEGIN op 849 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Language - German', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'radarr'
);
-- --- END op 849

-- --- BEGIN op 850 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-1080p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'WEB 1080p'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND name = 'WEB 1080p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-1080p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-720p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-720p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-720p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-576p'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'Bluray-480p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBDL-480p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'CAM';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'DVDSCR';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'REGIONAL';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'TELECINE';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'TELESYNC';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Pre-releases'
  AND quality_name = 'WORKPRINT';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND name = 'Pre-releases';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name = 'BR-DISK';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name = 'Raw-HD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Unwanted'
  AND quality_name = 'Unknown';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND name = 'Unwanted';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 720p/1080p', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND name = '1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '1080p', 'Remux-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'Remux-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '1080p', 'Bluray-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'Bluray-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '1080p', 'WEBRip-2160p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBRip-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '1080p', 'WEBDL-2160p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '1080p', 'HDTV-1080p', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '1080p'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', NULL, '1080p', 0, 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name IS NULL
    AND quality_group_name = '1080p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 720p/1080p', '720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND name = '720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '720p', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '720p', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '720p', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', '720p', 'HDTV-720p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = '720p'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', NULL, '720p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name IS NULL
    AND quality_group_name = '720p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT 'Movies 720p/1080p', 'Schrott'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND name = 'Schrott'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'Remux-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'Remux-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'Bluray-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'Bluray-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'HDTV-2160p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'HDTV-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'WEBDL-1080p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'WEBDL-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'WEBRip-1080p', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'WEBRip-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'Bluray-576p', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'Bluray-480p', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'WEBDL-480p', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'WEBRip-480p', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'WEBRip-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'HDTV-480p', 9
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'HDTV-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'DVD-R', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'DVD-R'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'DVD', 11
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'DVD'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'SDTV', 12
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'SDTV'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'REGIONAL', 13
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'REGIONAL'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'DVDSCR', 14
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'DVDSCR'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'TELECINE', 15
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'TELECINE'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'TELESYNC', 16
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'TELESYNC'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'CAM', 17
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'CAM'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'WORKPRINT', 18
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'WORKPRINT'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'Unknown', 19
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'Unknown'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'Raw-HD', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'Raw-HD'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Movies 720p/1080p', 'Schrott', 'BR-DISK', 21
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_group_name = 'Schrott'
    AND quality_name = 'BR-DISK'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', NULL, 'Schrott', 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name IS NULL
    AND quality_group_name = 'Schrott'
);
-- --- END op 850

-- --- BEGIN op 851 ( create quality_profile "Anime 720p/1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('Anime 720p/1080p', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 720p/1080p', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '1080p', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '1080p', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '1080p', 'WEBRip-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '1080p', 'WEBDL-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '1080p', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 720p/1080p', NULL, '1080p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 720p/1080p', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 720p/1080p', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('Anime 720p/1080p', 'Schrott');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'Remux-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'Bluray-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'HDTV-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'WEBDL-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'WEBRip-1080p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'Bluray-576p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'Bluray-480p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'WEBDL-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'WEBRip-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'HDTV-480p', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'DVD-R', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'DVD', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'SDTV', 12);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'REGIONAL', 13);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'DVDSCR', 14);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'TELECINE', 15);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'TELESYNC', 16);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'CAM', 17);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'WORKPRINT', 18);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'Unknown', 19);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'Raw-HD', 20);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('Anime 720p/1080p', 'Schrott', 'BR-DISK', 21);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('Anime 720p/1080p', NULL, 'Schrott', 2, 0, 0);
-- --- END op 851

-- --- BEGIN op 852 ( update quality_profile "Anime 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 100 where "name" = 'Anime 720p/1080p' and "minimum_custom_format_score" = 0;
-- --- END op 852

-- --- BEGIN op 853 ( update quality_profile "Anime 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 150 where "name" = 'Anime 720p/1080p' and "upgrade_until_score" = 0;
-- --- END op 853

-- --- BEGIN op 854 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '2160p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'radarr'
);
-- --- END op 854

-- --- BEGIN op 855 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '360p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'radarr'
);
-- --- END op 855

-- --- BEGIN op 856 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '480p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'radarr'
);
-- --- END op 856

-- --- BEGIN op 857 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '540p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'radarr'
);
-- --- END op 857

-- --- BEGIN op 858 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '576p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'radarr'
);
-- --- END op 858

-- --- BEGIN op 859 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Codec - x264', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'radarr'
);
-- --- END op 859

-- --- BEGIN op 860 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Codec - x265', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'radarr'
);
-- --- END op 860

-- --- BEGIN op 861 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Language - German', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'radarr'
);
-- --- END op 861

-- --- BEGIN op 862 ( create quality_profile "TV-Series 720p/1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('TV-Series 720p/1080p', NULL, 1, 0, 0, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('TV-Series 720p/1080p', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '1080p', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '1080p', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '1080p', 'WEBRip-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '1080p', 'WEBDL-2160p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '1080p', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV-Series 720p/1080p', NULL, '1080p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('TV-Series 720p/1080p', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV-Series 720p/1080p', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('TV-Series 720p/1080p', 'Schrott');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'Remux-2160p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'Bluray-2160p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'HDTV-2160p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'WEBDL-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'WEBRip-1080p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'Bluray-576p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'Bluray-480p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'WEBDL-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'WEBRip-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'HDTV-480p', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'DVD-R', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'DVD', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'SDTV', 12);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'REGIONAL', 13);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'DVDSCR', 14);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'TELECINE', 15);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'TELESYNC', 16);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'CAM', 17);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'WORKPRINT', 18);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'Unknown', 19);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'Raw-HD', 20);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('TV-Series 720p/1080p', 'Schrott', 'BR-DISK', 21);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('TV-Series 720p/1080p', NULL, 'Schrott', 2, 0, 0);
-- --- END op 862

-- --- BEGIN op 863 ( update quality_profile "TV-Series 720p/1080p" )
update "quality_profiles" set "minimum_custom_format_score" = 100 where "name" = 'TV-Series 720p/1080p' and "minimum_custom_format_score" = 0;
-- --- END op 863

-- --- BEGIN op 864 ( update quality_profile "TV-Series 720p/1080p" )
update "quality_profiles" set "upgrade_until_score" = 150 where "name" = 'TV-Series 720p/1080p' and "upgrade_until_score" = 0;
-- --- END op 864

-- --- BEGIN op 865 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '2160p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'radarr'
);
-- --- END op 865

-- --- BEGIN op 866 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '360p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'radarr'
);
-- --- END op 866

-- --- BEGIN op 867 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '480p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'radarr'
);
-- --- END op 867

-- --- BEGIN op 868 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '540p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'radarr'
);
-- --- END op 868

-- --- BEGIN op 869 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '576p', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'radarr'
);
-- --- END op 869

-- --- BEGIN op 870 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Codec - x264', 'radarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'radarr'
);
-- --- END op 870

-- --- BEGIN op 871 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Codec - x265', 'radarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'radarr'
);
-- --- END op 871

-- --- BEGIN op 872 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Language - German', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'radarr'
);
-- --- END op 872

-- --- BEGIN op 873 ( update quality_profile "Anime 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'BR-DISK';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'CAM';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVD-R';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVDSCR';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'HDTV-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'HDTV-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'REGIONAL';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Raw-HD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Remux-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'TELECINE';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'TELESYNC';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Unknown';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBRip-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WORKPRINT';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Anime 720p/1080p'
  AND name = 'Schrott';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Remux-2160p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Bluray-2160p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'HDTV-2160p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBDL-1080p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBRip-1080p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Bluray-576p', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Bluray-480p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBDL-480p', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WEBRip-480p', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'HDTV-480p', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'DVD-R', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'DVD', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'SDTV', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'REGIONAL', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'DVDSCR', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'TELECINE', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'TELESYNC', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'CAM', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'WORKPRINT', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Unknown', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'Raw-HD', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Anime 720p/1080p', 'BR-DISK', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);
-- --- END op 873

-- --- BEGIN op 874 ( update quality_profile "TV-Series 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'BR-DISK';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'CAM';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVD-R';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVDSCR';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'HDTV-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'HDTV-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'REGIONAL';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Raw-HD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Remux-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'TELECINE';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'TELESYNC';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Unknown';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBRip-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WORKPRINT';

DELETE FROM quality_groups
WHERE quality_profile_name = 'TV-Series 720p/1080p'
  AND name = 'Schrott';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Remux-2160p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Bluray-2160p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'HDTV-2160p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBDL-1080p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBRip-1080p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Bluray-576p', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Bluray-480p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBDL-480p', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WEBRip-480p', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'HDTV-480p', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'DVD-R', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'DVD', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'SDTV', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'REGIONAL', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'DVDSCR', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'TELECINE', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'TELESYNC', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'CAM', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'WORKPRINT', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Unknown', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'Raw-HD', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'TV-Series 720p/1080p', 'BR-DISK', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);
-- --- END op 874

-- --- BEGIN op 875 ( update quality_profile "Movies 720p/1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'BR-DISK';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'CAM';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVD-R';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'DVDSCR';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'HDTV-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'HDTV-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'REGIONAL';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Raw-HD';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Remux-2160p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'TELECINE';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'TELESYNC';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'Unknown';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBDL-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBRip-1080p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WEBRip-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND quality_group_name = 'Schrott'
  AND quality_name = 'WORKPRINT';

DELETE FROM quality_groups
WHERE quality_profile_name = 'Movies 720p/1080p'
  AND name = 'Schrott';

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Remux-2160p', NULL, 2, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Remux-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Bluray-2160p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Bluray-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'HDTV-2160p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'HDTV-2160p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBDL-1080p', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBDL-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBRip-1080p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBRip-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Bluray-576p', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Bluray-576p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Bluray-480p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Bluray-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBDL-480p', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBDL-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WEBRip-480p', NULL, 10, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WEBRip-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'HDTV-480p', NULL, 11, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'HDTV-480p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'DVD-R', NULL, 12, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'DVD-R'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'DVD', NULL, 13, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'SDTV', NULL, 14, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'REGIONAL', NULL, 15, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'REGIONAL'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'DVDSCR', NULL, 16, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'DVDSCR'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'TELECINE', NULL, 17, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'TELECINE'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'TELESYNC', NULL, 18, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'TELESYNC'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'CAM', NULL, 19, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'CAM'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'WORKPRINT', NULL, 20, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'WORKPRINT'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Unknown', NULL, 21, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Unknown'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'Raw-HD', NULL, 22, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'Raw-HD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT 'Movies 720p/1080p', 'BR-DISK', NULL, 23, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND quality_name = 'BR-DISK'
    AND quality_group_name IS NULL
);
-- --- END op 875

-- --- BEGIN op 1044 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '2160p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'sonarr'
);
-- --- END op 1044

-- --- BEGIN op 1045 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '360p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'sonarr'
);
-- --- END op 1045

-- --- BEGIN op 1046 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '480p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'sonarr'
);
-- --- END op 1046

-- --- BEGIN op 1047 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '540p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'sonarr'
);
-- --- END op 1047

-- --- BEGIN op 1048 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', '576p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'sonarr'
);
-- --- END op 1048

-- --- BEGIN op 1049 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Codec - x264', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'sonarr'
);
-- --- END op 1049

-- --- BEGIN op 1050 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Codec - x265', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'sonarr'
);
-- --- END op 1050

-- --- BEGIN op 1051 ( update quality_profile "Anime 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Anime 720p/1080p', 'Language - German', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Anime 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'sonarr'
);
-- --- END op 1051

-- --- BEGIN op 1052 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '2160p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'sonarr'
);
-- --- END op 1052

-- --- BEGIN op 1053 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '360p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'sonarr'
);
-- --- END op 1053

-- --- BEGIN op 1054 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '480p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'sonarr'
);
-- --- END op 1054

-- --- BEGIN op 1055 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '540p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'sonarr'
);
-- --- END op 1055

-- --- BEGIN op 1056 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', '576p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'sonarr'
);
-- --- END op 1056

-- --- BEGIN op 1057 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Codec - x264', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'sonarr'
);
-- --- END op 1057

-- --- BEGIN op 1058 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Codec - x265', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'sonarr'
);
-- --- END op 1058

-- --- BEGIN op 1059 ( update quality_profile "TV-Series 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'TV-Series 720p/1080p', 'Language - German', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'TV-Series 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'sonarr'
);
-- --- END op 1059

-- --- BEGIN op 1060 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '2160p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '2160p'
    AND arr_type = 'sonarr'
);
-- --- END op 1060

-- --- BEGIN op 1061 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '360p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '360p'
    AND arr_type = 'sonarr'
);
-- --- END op 1061

-- --- BEGIN op 1062 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '480p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '480p'
    AND arr_type = 'sonarr'
);
-- --- END op 1062

-- --- BEGIN op 1063 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '540p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '540p'
    AND arr_type = 'sonarr'
);
-- --- END op 1063

-- --- BEGIN op 1064 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', '576p', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = '576p'
    AND arr_type = 'sonarr'
);
-- --- END op 1064

-- --- BEGIN op 1065 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Codec - x264', 'sonarr', 25
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Codec - x264'
    AND arr_type = 'sonarr'
);
-- --- END op 1065

-- --- BEGIN op 1066 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Codec - x265', 'sonarr', 50
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Codec - x265'
    AND arr_type = 'sonarr'
);
-- --- END op 1066

-- --- BEGIN op 1067 ( update quality_profile "Movies 720p/1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'Movies 720p/1080p', 'Language - German', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'Movies 720p/1080p'
    AND custom_format_name = 'Language - German'
    AND arr_type = 'sonarr'
);
-- --- END op 1067
