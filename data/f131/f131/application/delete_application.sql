prompt --application/delete_application
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>8164290293278438
,p_default_application_id=>131
,p_default_id_offset=>26239081177308687
,p_default_owner=>'APEXWS'
);
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
wwv_flow_api.component_end;
end;
/
