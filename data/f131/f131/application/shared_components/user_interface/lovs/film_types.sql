prompt --application/shared_components/user_interface/lovs/film_types
begin
--   Manifest
--     FILM_TYPES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>8164290293278438
,p_default_application_id=>131
,p_default_id_offset=>26239081177308687
,p_default_owner=>'APEXWS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27744982408071940)
,p_lov_name=>'FILM_TYPES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'FILM_TYPES'
,p_return_column_name=>'FILM_TYPES_ID'
,p_display_column_name=>'FILM_TYPES_NAME'
,p_default_sort_column_name=>'FILM_TYPES_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
