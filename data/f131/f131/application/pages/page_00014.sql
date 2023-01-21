prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>8164290293278438
,p_default_application_id=>131
,p_default_id_offset=>26239081177308687
,p_default_owner=>'APEXWS'
);
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(40412434414637798)
,p_name=>unistr('\D310\B9E4 \C11C\BE44\C2A4 \AD00\B9AC')
,p_alias=>unistr('\D310\B9E4-\C11C\BE44\C2A4-\AD00\B9AC')
,p_step_title=>unistr('\D310\B9E4 \C11C\BE44\C2A4 \AD00\B9AC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'TAEYOUNG'
,p_last_upd_yyyymmddhh24miss=>'20220620065536'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29789302524609478)
,p_plug_name=>unistr('\D310\B9E4 \C11C\BE44\C2A4 \AD00\B9AC')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(40315177207637725)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SALE_TYPES_ID,',
'       SALE_NAME,',
'       SALE_DETAIL,',
'       SALE_PRICE,',
'       BUSINESS_ID',
'  from SALE_TYPES',
'WHERE BUSINESS_ID = LOWER(:APP_USER)'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'SALE_NAME'
,p_attribute_06=>'SALE_DETAIL'
,p_attribute_08=>'SALE_TYPES_ID'
,p_attribute_16=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP:P15_SALE_TYPES_ID:\&SALE_TYPES_ID.\'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29790586538609484)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(29789302524609478)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(40387715013637767)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\CD94\AC00')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15'
);
wwv_flow_api.component_end;
end;
/
