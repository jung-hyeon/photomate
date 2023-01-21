prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>8164290293278438
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'APEXWS'
);
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(18102935048431748)
,p_name=>'review'
,p_alias=>'REVIEW'
,p_step_title=>'review'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JUNGHYEON'
,p_last_upd_yyyymmddhh24miss=>'20220620155647'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30658451334099839)
,p_plug_name=>unistr('\B9AC\BDF0\C791\C131')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(18005642741431696)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REVIEW'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30667478194099851)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30658451334099839)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18078205424431735)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P7_REVIEW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30666402559099850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30658451334099839)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18078205424431735)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30667860238099852)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(30658451334099839)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18078205424431735)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P7_REVIEW_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30667070750099851)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30658451334099839)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18078205424431735)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_REVIEW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30668180671099852)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30298340538144039)
,p_name=>'P7_STUDIO_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\C2A4\D29C\B514\C624/\C791\AC00\BA85')
,p_source=>'select studio_name from studio where studio_id=:p7_studio_id'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(18075763389431734)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30658721865099839)
,p_name=>'P7_REVIEW_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_source=>'REVIEW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30659105147099843)
,p_name=>'P7_PUBLIC_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_default=>'lower(:APP_USER)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\C791\C131\C790')
,p_source=>'PUBLIC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(18077055813431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30659537897099845)
,p_name=>'P7_STUDIO_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_default=>'(:P4_STUDIO_ID)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'STUDIO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30659954123099845)
,p_name=>'P7_REVIEW_PHOTO1'
,p_source_data_type=>'BLOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\B9AC\BDF0 \C0AC\C9C4 1')
,p_source=>'REVIEW_PHOTO1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(18075763389431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30660338887099846)
,p_name=>'P7_REVIEW_PHOTO2'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\B9AC\BDF0 \C0AC\C9C4 2')
,p_source=>'REVIEW_PHOTO2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(18075763389431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30660775401099846)
,p_name=>'P7_REVIEW_PHOTO3'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\B9AC\BDF0 \C0AC\C9C4 3')
,p_source=>'REVIEW_PHOTO3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(18075763389431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30661158258099846)
,p_name=>'P7_REVIEW_STAR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\BCC4\C810')
,p_source=>'REVIEW_STAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_STAR_RATING'
,p_field_template=>wwv_flow_api.id(18077055813431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'5'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30661551587099846)
,p_name=>'P7_REVIEW_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\C81C\BAA9')
,p_source=>'REVIEW_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18077055813431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30661968023099847)
,p_name=>'P7_REVIEW_CONTENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('\B0B4\C6A9')
,p_source=>'REVIEW_CONTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18077055813431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30662339848099847)
,p_name=>'P7_REVIEW_HASHTAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_prompt=>unistr('#\D574\C2DC\D0DC\ADF8')
,p_source=>'REVIEW_HASHTAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18075763389431734)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30662700345099847)
,p_name=>'P7_CREATED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_source_plug_id=>wwv_flow_api.id(30658451334099839)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30298277381144038)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'review id seq'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_REVIEW_ID number;',
'begin',
'select review_id_seq.nextval into',
'v_review_id from dual;',
':p7_review_id:=v_review_id;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30669067516099853)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(30658451334099839)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form review'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30668626132099852)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(30658451334099839)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form review'
);
wwv_flow_api.component_end;
end;
/