prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>7978865598664323
,p_default_application_id=>100
,p_default_id_offset=>8007562508739058
,p_default_owner=>'MYAPP'
);
end;
/
 
prompt APPLICATION 100 - Sample Calendar
--
-- Application Export:
--   Application:     100
--   Name:            Sample Calendar
--   Date and Time:   21:08 Tuesday March 7, 2023
--   Exported By:     MYAPP
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     37
--       Items:                   71
--       Validations:              1
--       Processes:               19
--       Regions:                126
--       Buttons:                 31
--       Dynamic Actions:         56
--     Shared Components:
--       Logic:
--         Items:                  1
--         Processes:              1
--       Navigation:
--         Parent Tabs:            1
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:             35
--         NavBar Entries:         3
--       Security:
--         Authentication:         1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              18
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   4
--         Shortcuts:              1
--         Plug-ins:               5
--       PWA:
--       Globalization:
--         Messages:               4
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          3
--   Version:         22.2.2
--   Instance ID:     7978657000401286
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MYAPP')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Calendar')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A100')
,p_application_group=>wwv_flow_imp.id(9275733344450601)
,p_application_group_name=>'21.1 Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'865AE6361C219AA7641AAD131E03A945FF8250676013410A95982BF7FC1A8888'
,p_checksum_salt_last_reset=>'20150102074721'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'YYYY/MM/DD'
,p_date_time_format=>'YYYY/MM/DD HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.7 -> 1.0.8: Added "SQL Source" show/hide region to "Monthly Calendar" and "Date Reporting" pages.',
'1.0.8 -> 1.0.9: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(8201443953751373534)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Sample Calendar'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-calendar.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-calendar-16x16.png"><link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex'
||'_ui/img/favicons/app-sample-calendar-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-calendar.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'2.0.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Sample Calendar'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519082208'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(100)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>true
,p_navigation_list_id=>wwv_flow_imp.id(1705224468621586744)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(1705239054102696096)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(1705178312230465606)
);
end;
/
prompt --application/shared_components/navigation/lists/standard_calendars
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(790336059640626988)
,p_name=>'Standard Calendars'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790336291803626989)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Monthly Calendar: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'This is a standard Oracle Application Express (APEX) calendar region component built using the create calendar region wizard.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790336711554626990)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Weekly Calendar: Conference'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'This is a standard Oracle Application Express (APEX) calendar region component showing a weekly view on events with a time component. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790337039571626990)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Weekly Calendar: Edit Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-edit'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This weekly calendar allows to edit existing events by clicking them or to select a date range in the Calendar to create a new event.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790337526645626990)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Weekly Calendar: Drag & Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-mouse-pointer'
,p_list_text_01=>'Change the start and end timestamps for calendar events with drag and drop.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790337875608626991)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Weekly Calendar: Time Format'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-clock'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page allows to choose the time format (12h, 24h) which is being used to display the time component of an event timestamp.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(628399613818292739)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Faceted Search: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page allows to choose the time format (12h, 24h) which is being used to display the time component of an event timestamp.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/calendars_and_dynamic_actions
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(790341273506679815)
,p_name=>'Calendars and Dynamic Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790341481883679816)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Calendar with Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'This page contains a classic report region which is always in sync with the Calendar view, i.e. shows only data which is also visible on the calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790341885740679816)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Create Calendar Events'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-plus-o'
,p_list_text_01=>'Select a date range in the calendar and have a new event being created in the database immediately.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790342259487679816)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Delete Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-times-o'
,p_list_text_01=>'Delete a calendar event in the database by simply clicking it in the Calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790377102518048616)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Copy Events by Click'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-files-o'
,p_list_text_01=>'This page shows, how existing calendar events can be copied with a simple mouse click.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(978907556465141271)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Custom Drag and Drop Handlers'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-pointer'
,p_list_text_01=>'Explore how to capture drag and drop events with dynamic actions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/calendars_and_javascript
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(790346437364737819)
,p_name=>'Calendars and Javascript'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790346644283737820)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Custom Navigation'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-user'
,p_list_text_01=>'Use APEX components like buttons or page items to navigate within your Calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790347084416737821)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Query Calendar Status'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>'This page shows how to get the current calendar status with the FullCalendar JavaScript API.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790347454710737821)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendar Client Events'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-plus-o'
,p_list_text_01=>'Add "client-only" events" to your calendar view with JavaScript. Edit them and when ready, save to the database.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(794445066118966758)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Schedule Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_list_text_01=>'Explore how to create a <i>Schedule Builder</i> with Application Express'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/calendar_styling
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(790352077595783017)
,p_name=>'Calendar Styling'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790352319822783017)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Custom CSS Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'This page shows custom styling of calendar events using your own CSS classes.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790352646300783018)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Custom Event Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-square-o'
,p_list_text_01=>'Add custom icons to your calendar events. '
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/custom_calendar_initialization
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(848127362091989633)
,p_name=>'Custom Calendar Initialization'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(848127559693989634)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Weekly schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_text_01=>'This example customizes the weekly view to act as a conference schedule without day dates. Column headings are set to week names, a custom title is being used and nightly hours are removed from the calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1705224468621586744)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Standard Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786447736743498014)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Monthly Calendar: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(777065197431765232)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Weekly Calendar: Conference'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(783657715827053550)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Weekly Calendar: Edit Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786384119338236491)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Weekly Calendar: Drag & Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790267426905994533)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Weekly Calendar: Time Format'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(617181766304296555)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Faceted Search: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(786377963478216851)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786389967895278889)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendar and Dynamic Actions'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786395679363290961)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Calendar and Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786389967895278889)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786409052909304708)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Create Calendar Events'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786389967895278889)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786424324125384186)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Delete Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786389967895278889)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790369304492003301)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Copy Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786389967895278889)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(892029536585059294)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Custom Drag & Drop Handlers'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786389967895278889)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'112'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786448329183524325)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Calendar and Javascript'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786449133279548976)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Custom Navigation'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786448329183524325)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'71'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786475645394741079)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Query Calendar Status'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786448329183524325)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'72'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786576510480914603)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Calendar Client Events'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786448329183524325)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'73'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(794400214305416737)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Schedule Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(786448329183524325)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'74'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(848125247304976289)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Custom Calendar Initialization'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(848111683088852401)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Weekly schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(848125247304976289)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'111'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786546561365600488)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Calendar Styling'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786547372650608266)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Custom CSS Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786546561365600488)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'91'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(786554197963695171)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Custom Event Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(786546561365600488)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'92'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1708444881010088186)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7,8,15'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar_top
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1705239054102696096)
,p_name=>'Navigation Bar (Top)'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1705239235553696098)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1705239630902696192)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1705240022770696192)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_imp.id(1705239630902696192)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/administration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1870571412415336074)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1870571731466336077)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_list_text_01=>'This application ships with sample data.  You can remove or recreate sample data using this administrative page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1870572080890336078)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Set application user interface default theme style and determine whether end users can choose between public theme styles.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/home_page_list
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2583904737050172610)
,p_name=>'Home Page List'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3418956725509708177)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Standard Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Review a collection of Standard Calendar examples. These Calendars only utilize standard component attributes and no custom Dynamic Actions or Javascript code.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3415724941657148110)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dynamic Action Examples'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_list_text_01=>'These Calendar Regions are using Dynamic Actions to communicate with other page components of your APEX application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3415724956485148110)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendars and Javascript'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_text_01=>'Use the FullCalendar Javascript API and fully exploit the capabilities of your calendar component.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3415725093634148110)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Calendar Styling'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Apply custom styles to your Calendar region. Change colors, fonts or add icons to your calendar events.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(790306047172317597)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cog'
,p_list_text_01=>'Administer this Sample Application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8008063141739067)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8008452467739067)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8008559256739067)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9529334552258382)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(184138508943245879)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(600245207200448505)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_JET'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1129237629344245597)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1775601484435130467)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1842301625501412567)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1928216627279358613)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3207538332363007844)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(3207537727861006517)
,p_icon_sequence=>20
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(8201443465069373532)
,p_icon_sequence=>30
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes/trim_all_page_items
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(1563439237205362598)
,p_process_sequence=>1
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Trim All Page Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select item_name',
'               from apex_application_page_items',
'               where application_id = :APP_ID',
'                   and page_id = :APP_PAGE_ID',
'                   and display_as_code in (''NATIVE_TEXT_FIELD'',',
'                                           ''NATIVE_TEXTAREA'',',
'                                           ''NATIVE_NUMBER_FIELD'') ) loop',
'        apex_util.set_session_state( c1.item_name,',
'            regexp_replace(apex_util.get_session_state( c1.item_name ),',
'                ''^[[:space:]]*(.*?)[[:space:]]*$'', ''\1''',
'            )',
'        );',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/application_items/fsp_after_login_url
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(8201449956998373732)
,p_name=>'FSP_AFTER_LOGIN_URL'
,p_escape_on_http_output=>'N'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
wwv_flow_imp_shared.create_toplevel_tab(
 p_id=>wwv_flow_imp.id(3173490311078458937)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_ADMINISTRATION'
,p_tab_text=>'TS1'
,p_tab_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_current_on_tabset=>'TS1'
);
end;
/
prompt --application/shared_components/user_interface/lovs/distinct_projects
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2580211141393587169)
,p_lov_name=>'DISTINCT PROJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/session_types
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(786373535879193407)
,p_lov_name=>'SESSION_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(786373535879193407)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(786373899390193407)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Business'
,p_lov_return_value=>'BUSINESS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(786374238755193409)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Technical'
,p_lov_return_value=>'TECHNICAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(786374651096193409)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'General Session'
,p_lov_return_value=>'GENERAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(786375109950193409)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Break'
,p_lov_return_value=>'BREAK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(786375492198193410)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Hands On Session'
,p_lov_return_value=>'Hands On'
);
end;
/
prompt --application/shared_components/user_interface/lovs/status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(330971336938306646)
,p_lov_name=>'STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(330971336938306646)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(330971570648306647)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'ACTIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(330972055609306647)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'INACTIVE'
);
end;
/
prompt --application/shared_components/user_interface/lovs/valid_status_codes
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2659266423496959720)
,p_lov_name=>'VALID STATUS CODES'
,p_lov_query=>'.'||wwv_flow_imp.id(2659266423496959720)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2659266631241959723)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2659266815952959731)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'On-Hold'
,p_lov_return_value=>'On-Hold'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2659267011515959731)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'Open'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2659267221219959731)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Pending'
,p_lov_return_value=>'Pending'
);
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8201445254602373544)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(617183830783296603)
,p_parent_id=>wwv_flow_imp.id(790340427962659744)
,p_short_name=>'Faceted Search: Projects'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790318923938409146)
,p_parent_id=>wwv_flow_imp.id(790340427962659744)
,p_short_name=>'Monthly Calendar: Projects'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790319160512420991)
,p_parent_id=>wwv_flow_imp.id(790340427962659744)
,p_short_name=>'Weekly Calendar: Conference'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790319361850423034)
,p_parent_id=>wwv_flow_imp.id(790340427962659744)
,p_short_name=>'Weekly Calendar: Edit Sessions'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790319568590424738)
,p_parent_id=>wwv_flow_imp.id(790340427962659744)
,p_short_name=>'Weekly Calendar: Drag & Drop'
,p_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790319747094425903)
,p_parent_id=>wwv_flow_imp.id(790340427962659744)
,p_short_name=>'Weekly Calendar: Time Format'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790319998939429756)
,p_parent_id=>wwv_flow_imp.id(790345476040722872)
,p_short_name=>'Calendar and Report'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790320169086431518)
,p_parent_id=>wwv_flow_imp.id(790345476040722872)
,p_short_name=>'Create Calendar Events'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790320395023433683)
,p_parent_id=>wwv_flow_imp.id(790345476040722872)
,p_short_name=>'Delete Events By Click'
,p_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790320593159436006)
,p_parent_id=>wwv_flow_imp.id(790351617060773473)
,p_short_name=>'Custom Navigation'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790320748336438206)
,p_parent_id=>wwv_flow_imp.id(790351617060773473)
,p_short_name=>'Query Calendar Status'
,p_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790321014072439328)
,p_parent_id=>wwv_flow_imp.id(790351617060773473)
,p_short_name=>'Calendar Client Events'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790321142475441666)
,p_parent_id=>wwv_flow_imp.id(790355641196805550)
,p_short_name=>'Custom CSS Classes'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790321382118443342)
,p_parent_id=>wwv_flow_imp.id(790355641196805550)
,p_short_name=>'Custom Event Icons'
,p_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:::'
,p_page_id=>92
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790340427962659744)
,p_parent_id=>0
,p_short_name=>'Standard Calendars'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790345476040722872)
,p_parent_id=>0
,p_short_name=>'Dynamic Action Examples'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790351617060773473)
,p_parent_id=>0
,p_short_name=>'Calendars and Javascript'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790355641196805550)
,p_parent_id=>0
,p_short_name=>'Calendar Styling'
,p_link=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:::'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(790376736665040792)
,p_parent_id=>wwv_flow_imp.id(790345476040722872)
,p_short_name=>'Copy Events By Click'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(825530506715369560)
,p_parent_id=>wwv_flow_imp.id(790345476040722872)
,p_short_name=>'Custom Drag and Drop Handlers'
,p_link=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_page_id=>112
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(848129995002011128)
,p_parent_id=>0
,p_short_name=>'Custom Calendar Initialization'
,p_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_page_id=>110
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(848130228147014393)
,p_parent_id=>wwv_flow_imp.id(848129995002011128)
,p_short_name=>'Custom weekly schedule'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(893220833299113145)
,p_parent_id=>wwv_flow_imp.id(790351617060773473)
,p_short_name=>'Schedule Builder'
,p_link=>'f?p=&FLOW_ID.:74:&SESSION.'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1311247838843094661)
,p_short_name=>'Mini Calendar'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1311248512006094665)
,p_parent_id=>wwv_flow_imp.id(1311247838843094661)
,p_short_name=>'&P14_PROJECT.'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1870089668206851821)
,p_parent_id=>wwv_flow_imp.id(1870571151147336070)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1870571151147336070)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2578394039415337456)
,p_short_name=>'Calendar Entry'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2578802715947420997)
,p_short_name=>'Time Line'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2591525718503259797)
,p_parent_id=>wwv_flow_imp.id(1870571151147336070)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2593137420196479717)
,p_parent_id=>wwv_flow_imp.id(2591525718503259797)
,p_short_name=>'Report'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2658861813129896737)
,p_short_name=>'Project Due Dates'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2658862142805896738)
,p_parent_id=>wwv_flow_imp.id(2658861813129896737)
,p_short_name=>'Project Detail'
,p_link=>'f?p=&FLOW_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3248314630341407361)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8201445666450373547)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705122004855465411)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805360414454489103)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805360928066489105)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805361391249489105)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805361874422489105)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805362397084489105)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805362958346489106)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805363391508489106)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805363933694489106)
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705124258413465464)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805368576713489118)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805369119903489118)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805369615072489118)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805370151438489119)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805370618949489119)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805371133910489119)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805371629277489120)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805372156490489120)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805372631887489120)
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705126921384465468)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805374895053489122)
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805375393326489123)
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805375940915489127)
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705129507270465472)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805382687375489140)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805383183235489141)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805383709568489141)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805384239215489141)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805384752015489142)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805385247054489142)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805385676985489142)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805386251968489143)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805386673514489143)
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705132384158465476)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805390620896489146)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805391117084489146)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805391661949489147)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805392083365489147)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805392652186489147)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805393067445489148)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805393603570489148)
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705134347670465481)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805395961489489150)
,p_page_template_id=>wwv_flow_imp.id(1705134347670465481)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805396375102489150)
,p_page_template_id=>wwv_flow_imp.id(1705134347670465481)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805396878938489150)
,p_page_template_id=>wwv_flow_imp.id(1705134347670465481)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705139562348465490)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805402109034489158)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805402571008489158)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805403153009489159)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805403662398489159)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805404088229489159)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805404657069489160)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805405116593489160)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805405576754489160)
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705141898081465498)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805409528661489171)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805409981729489171)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805410505725489172)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805410982562489172)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805411554726489172)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805412056064489173)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805412555503489173)
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(1705143873782465507)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805414773783489175)
,p_page_template_id=>wwv_flow_imp.id(1705143873782465507)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805415284621489175)
,p_page_template_id=>wwv_flow_imp.id(1705143873782465507)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805415834360489176)
,p_page_template_id=>wwv_flow_imp.id(1705143873782465507)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(1705180225400465622)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidde'
||'n="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(1705180270641465626)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(1705180831013465628)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(139577476088741700)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8012438755739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8012542765739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8012600084739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8012751896739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8012874146739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8012919150739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013065061739407)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805493187889489307)
,p_plug_template_id=>wwv_flow_imp.id(139577476088741700)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(707277637011272118)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  #BODY##SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013689494739407)
,p_plug_template_id=>wwv_flow_imp.id(707277637011272118)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013735801739407)
,p_plug_template_id=>wwv_flow_imp.id(707277637011272118)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1128618067867194467)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015357789739408)
,p_plug_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015406207739408)
,p_plug_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015546067739408)
,p_plug_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015656110739408)
,p_plug_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015780230739408)
,p_plug_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015873300739408)
,p_plug_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705144983076465509)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013181373739407)
,p_plug_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013201847739407)
,p_plug_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013380975739407)
,p_plug_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013407198739407)
,p_plug_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013577965739407)
,p_plug_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805418089881489192)
,p_plug_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705146829295465534)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021148633739411)
,p_plug_template_id=>wwv_flow_imp.id(1705146829295465534)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021217232739411)
,p_plug_template_id=>wwv_flow_imp.id(1705146829295465534)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021356673739411)
,p_plug_template_id=>wwv_flow_imp.id(1705146829295465534)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021443988739411)
,p_plug_template_id=>wwv_flow_imp.id(1705146829295465534)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705147025288465535)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014693287739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014742354739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014805395739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014959247739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015052459739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015193456739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015286777739408)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805429021704489227)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805429528457489227)
,p_plug_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705148785262465537)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019191936739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019202543739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019379663739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019461397739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019527497739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019643391739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019710291739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019838823739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019976462739410)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805436200837489236)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805436750848489236)
,p_plug_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705152875674465541)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018465993739409)
,p_plug_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018581147739409)
,p_plug_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018615836739409)
,p_plug_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705153336283465542)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!HTML#" class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017080206739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017111983739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017275627739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017362275739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017456763739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017599078739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017609289739409)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805452461867489254)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805452863011489255)
,p_plug_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705155908534465545)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013832834739408)
,p_plug_template_id=>wwv_flow_imp.id(1705155908534465545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8013974458739408)
,p_plug_template_id=>wwv_flow_imp.id(1705155908534465545)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014002845739408)
,p_plug_template_id=>wwv_flow_imp.id(1705155908534465545)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014153833739408)
,p_plug_template_id=>wwv_flow_imp.id(1705155908534465545)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705156215889465546)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018707417739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018860566739410)
,p_plug_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018945931739410)
,p_plug_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8019063130739410)
,p_plug_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805501938039489323)
,p_plug_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705156377519465548)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017797302739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017871695739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8017915393739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018044403739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018146200739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018211866739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8018325832739409)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805488068611489299)
,p_plug_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705157342915465550)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020254109739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020352644739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020445915739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020556216739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020658169739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020754033739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020836604739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020935593739410)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021017850739411)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805505270335489327)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805505835848489327)
,p_plug_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705159957999465553)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8015998563739408)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016030440739408)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016135468739408)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016295821739408)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016348862739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016484032739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016569117739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016620469739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016792361739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016879096739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8016950518739409)
,p_plug_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1705160660174465554)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div role="region" aria-label="#TITLE!ATTR#" class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014233267739408)
,p_plug_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014341478739408)
,p_plug_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014483246739408)
,p_plug_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8014573904739408)
,p_plug_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805532165702489356)
,p_plug_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1864591495492827110)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805524479561489347)
,p_plug_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805524986701489347)
,p_plug_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1943094399191331589)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020060170739410)
,p_plug_template_id=>wwv_flow_imp.id(1943094399191331589)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8020113470739410)
,p_plug_template_id=>wwv_flow_imp.id(1943094399191331589)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805426885419489225)
,p_plug_template_id=>wwv_flow_imp.id(1943094399191331589)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(805427368207489225)
,p_plug_template_id=>wwv_flow_imp.id(1943094399191331589)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/div_region_with_id
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(3172429115273878090)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_internal_name=>'DIV_REGION_WITH_ID'
,p_theme_id=>101
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021501707739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021661128739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021716890739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021880879739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8021912171739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022095964739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022157414739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022287975739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022368780739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022474813739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022507736739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022670611739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(8022714450739411)
,p_plug_template_id=>wwv_flow_imp.id(3172429115273878090)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(34627704706381395)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(577693509186385825)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705170174955465580)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705172217205465587)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705174572297465596)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705175756147465598)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705177449062465602)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705177636506465603)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705178312230465606)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705178441795465607)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1705178685207465610)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(1864622533360827203)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(2105598510406658222)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(34667851069381425)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(188191390725886590)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(623207830599279697)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(805644416900489480)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705161455922465556)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705161657889465560)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705163922773465564)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705166280128465570)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705166847876465572)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705167124857465574)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705168775511465578)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1705169934707465579)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(278111329216989696)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(278111600474989696)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(1705179370404465612)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(1705179803753465616)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(1705179899956465617)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(1705179940962465618)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(1705180060000465621)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(1705180931281465630)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(1705181044549465644)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(1705181010268465634)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1705181529645465651)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(1705141898081465498)
,p_default_dialog_template=>wwv_flow_imp.id(1705134347670465481)
,p_error_template=>wwv_flow_imp.id(1705126921384465468)
,p_printer_friendly_template=>wwv_flow_imp.id(1705141898081465498)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(1705126921384465468)
,p_default_button_template=>wwv_flow_imp.id(1705180831013465628)
,p_default_region_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_chart_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_form_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_reportr_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_tabform_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_wizard_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_menur_template=>wwv_flow_imp.id(1705159957999465553)
,p_default_listr_template=>wwv_flow_imp.id(1705157342915465550)
,p_default_irr_template=>wwv_flow_imp.id(1705155908534465545)
,p_default_report_template=>wwv_flow_imp.id(1705167124857465574)
,p_default_label_template=>wwv_flow_imp.id(1705179803753465616)
,p_default_menu_template=>wwv_flow_imp.id(1705180931281465630)
,p_default_calendar_template=>wwv_flow_imp.id(1705181010268465634)
,p_default_list_template=>wwv_flow_imp.id(1705174572297465596)
,p_default_nav_list_template=>wwv_flow_imp.id(1705177636506465603)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(1705177636506465603)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(1705178441795465607)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(1705147025288465535)
,p_default_dialogr_template=>wwv_flow_imp.id(1705146829295465534)
,p_default_option_label=>wwv_flow_imp.id(1705179803753465616)
,p_default_header_template=>wwv_flow_imp.id(1705146829295465534)
,p_default_footer_template=>wwv_flow_imp.id(1705146829295465534)
,p_default_required_label=>wwv_flow_imp.id(1705179940962465618)
,p_default_navbar_list_template=>wwv_flow_imp.id(1705178312230465606)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(805097010328488794)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(805097392424488795)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(805097845522488795)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(805098215709488795)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(805098636347488795)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805240619934488946)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805241027910488952)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805241405748488952)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805241828351488953)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805242241291488953)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805242651400488953)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805243011389488955)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805243371783488955)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805243805582488955)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805244253042488955)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805244658147488956)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805245053782488956)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805245385304488956)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805245799426488957)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805246168289488957)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805246608829488957)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805247021687488957)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805247439190488958)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805247843914488958)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805248260974488958)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805248655349488958)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805249012829488959)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805249439685488959)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805249783447488959)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805250197279488959)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805250588646488960)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805250969425488960)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805251408506488960)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805251825905488960)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805252174519488961)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805252648382488961)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805252987902488961)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805253418736488961)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805253809364488962)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805254210134488962)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805254565056488962)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805255022034488962)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805255456766488963)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>30
,p_template_types=>'PAGE'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805255859591488963)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805256183120488963)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805256649322488963)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805257046695488964)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805257456376488964)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805257790851488964)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805258250255488964)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805258587658488965)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805259039695488965)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805259395850488965)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805259823745488965)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805260171012488966)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805260590823488966)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805260995322488966)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805261457274488966)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805261813279488967)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805262189644488967)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805262626133488969)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805263048691488969)
,p_theme_id=>42
,p_name=>'DISPLAY_MODE'
,p_display_name=>'Display Mode'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the default display appearance and positioning of the dialog. The default opens a floating dialog position at the center of the screen.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805263439617488970)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805263765580488970)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805264192186488970)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805264608857488970)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805265018071488971)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805265447003488971)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805265797787488971)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805266180685488971)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805266606758488972)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805267001952488972)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805267438293488972)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805267765089488972)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805268227780488973)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805268595669488973)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805269019384488973)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805269375404488973)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805269846517488974)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805270169750488974)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805270616513488974)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805271006141488974)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805271449416488980)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805271736096488980)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805272134933488980)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805272516746488981)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805272950906488981)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805273323066488981)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805273760297488982)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805274121960488982)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805274518163488982)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805274904678488982)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805275266138488983)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805275757707488983)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805276141141488983)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805276465323488983)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805276924542488984)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805277291704488984)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805277716057488984)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805278104352488984)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805278552216488985)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805278926642488985)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805279303152488985)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805279690165488985)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805280079489488986)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805280494341488986)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(805280867884488986)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978633804365418139)
,p_theme_id=>142
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978634121200418139)
,p_theme_id=>142
,p_name=>'DISPLAY_TYPE'
,p_display_name=>'Display Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978635970936418144)
,p_theme_id=>142
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978636333199418144)
,p_theme_id=>142
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978638127716418147)
,p_theme_id=>142
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978638589017418147)
,p_theme_id=>142
,p_name=>'REGION_HEADER'
,p_display_name=>'Region Header'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978638851235418148)
,p_theme_id=>142
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978639989943418148)
,p_theme_id=>142
,p_name=>'REGION_TYPE'
,p_display_name=>'Region Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Normal - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978640968962418149)
,p_theme_id=>142
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978641641454418150)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978641981146418150)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978644034589418155)
,p_theme_id=>142
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978644493487418155)
,p_theme_id=>142
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978644794395418155)
,p_theme_id=>142
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978646209157418158)
,p_theme_id=>142
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978647127503418160)
,p_theme_id=>142
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978648550716418161)
,p_theme_id=>142
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978649689442418162)
,p_theme_id=>142
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978651535389418167)
,p_theme_id=>142
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978652642881418169)
,p_theme_id=>142
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978653372714418171)
,p_theme_id=>142
,p_name=>'BREADCRUMB_DIVIDER'
,p_display_name=>'Breadcrumb Divider'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978654661411418174)
,p_theme_id=>142
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978654993773418174)
,p_theme_id=>142
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978655323831418174)
,p_theme_id=>142
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978655675070418174)
,p_theme_id=>142
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978655966150418174)
,p_theme_id=>142
,p_name=>'BUTTON_STYLE'
,p_display_name=>'Button Style'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978656505046418174)
,p_theme_id=>142
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978657242093418174)
,p_theme_id=>142
,p_name=>'BUTTON_WIDTH'
,p_display_name=>'Button Width'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Width'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978657759491418175)
,p_theme_id=>142
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Help text for Form Label Width'
,p_null_text=>'Default Width'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978658280578418175)
,p_theme_id=>142
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978658544245418175)
,p_theme_id=>142
,p_name=>'FORM_ITEMS_SIZE'
,p_display_name=>'Form Items Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978658887029418175)
,p_theme_id=>142
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(978659200772418175)
,p_theme_id=>142
,p_name=>'FORM_ITEM_PADDING'
,p_display_name=>'Form Item Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1042766855825778068)
,p_theme_id=>142
,p_name=>'NAVIGATION_COLOR_SCHEME'
,p_display_name=>'Navigation Color Scheme'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1065519987296860809)
,p_theme_id=>142
,p_name=>'CURRENT_PAGE'
,p_display_name=>'Current Page'
,p_display_sequence=>1
,p_template_types=>'BREADCRUMB'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1224728962264432793)
,p_theme_id=>142
,p_name=>'REGION_ACCENT'
,p_display_name=>'Region Accent'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1224734759896432805)
,p_theme_id=>142
,p_name=>'LIST_STYLE'
,p_display_name=>'List Style'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1261580750955660678)
,p_theme_id=>142
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1261583177918660680)
,p_theme_id=>142
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1261602294618660705)
,p_theme_id=>142
,p_name=>'FORM_ITEM_WIDTH'
,p_display_name=>'Form Item Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1348357091394682586)
,p_theme_id=>142
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1351884237629039960)
,p_theme_id=>142
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(1528133344782129256)
,p_theme_id=>142
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34484138519381298)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(1705134347670465481)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34502300933381308)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(1705143873782465507)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34618678212381389)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34668387598381425)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34668752831381426)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34669142569381426)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34669568773381426)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34669950843381426)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34670346924381426)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34670816709381427)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34671137935381427)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34671589536381427)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(34671990909381427)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(139578530228741701)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(139578931542741701)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(139579336939741702)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(139579696699741702)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(139580122371741702)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(170114913602737244)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(2105598510406658222)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(193210611782216687)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(188191390725886590)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236380690547825411)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236389221419825416)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236394109597825420)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236462043691825474)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236462663196825474)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236463387103825475)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236475484026825484)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705178685207465610)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236526239644825531)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(1705180225400465622)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(805241027910488952)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236526883078825531)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(1705180225400465622)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(805241027910488952)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236529250840825534)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(805241027910488952)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236529871115825534)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(805241027910488952)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(236530272476825534)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275542071296585461)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(805260995322488966)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275542853399585462)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(805261457274488966)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275560012658585474)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_imp.id(805265018071488971)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275560746588585474)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_imp.id(805265018071488971)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275570123581585481)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275615431764585514)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(805252174519488961)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275616069093585514)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(805252174519488961)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275633325844585526)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(805252174519488961)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275633989089585527)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(805252174519488961)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275667724695585553)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(805278104352488984)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275668454512585553)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(805278104352488984)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275681982145585563)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705166280128465570)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_imp.id(805278104352488984)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275682752375585564)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705166280128465570)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_imp.id(805278104352488984)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275686123679585566)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(805278104352488984)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(275686821106585567)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(805278104352488984)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431788887233034481)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431830901803034520)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431858907296034545)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431859587809034545)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431860235805034545)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431870295298034553)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431871020145034553)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431904423519034579)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(34627704706381395)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_imp.id(805250969425488960)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431905073647034579)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(34627704706381395)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_imp.id(805250969425488960)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431905819209034580)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(34627704706381395)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_imp.id(805250969425488960)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431906484168034581)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(34627704706381395)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_imp.id(805253809364488962)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431907135486034582)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(34627704706381395)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_imp.id(805253809364488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431913739348034588)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431914495360034589)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431915160005034590)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431925504025034597)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(431925886073034597)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(480693451199713291)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(480766459077713351)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(34667851069381425)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(805280494341488986)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(557069595795678635)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(1705134347670465481)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(557087364538678649)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(1705143873782465507)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(557137168821678709)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577693981779385826)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577694388520385826)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577694766448385826)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577695186237385827)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577695659370385827)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577695976554385827)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577696432333385827)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(577696816209385828)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(584283451922958131)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(622956953993279479)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_imp.id(805255859591488963)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(622957615115279480)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_imp.id(805256183120488963)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(622958264698279481)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_imp.id(805255859591488963)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(622958971772279481)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(1705126921384465468)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_imp.id(805255859591488963)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623058361746279566)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623058984958279566)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_imp.id(805260590823488966)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623059738958279567)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_imp.id(805260590823488966)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623060451915279567)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_imp.id(805260590823488966)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623061077107279568)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_imp.id(805260590823488966)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623061860423279568)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(139577476088741700)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_imp.id(805260590823488966)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623071213285279576)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_imp.id(805267765089488972)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623071911882279576)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(805267765089488972)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623072580306279577)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705156215889465546)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(805267765089488972)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623136854931279636)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705177449062465602)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623138969403279638)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(2105598510406658222)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623140288402279639)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705178312230465606)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623141629900279640)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_imp.id(805250197279488959)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623142308816279640)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_imp.id(805250197279488959)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623150767301279648)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705177636506465603)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623208339190279697)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_imp.id(805273760297488982)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623208683479279698)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_imp.id(805276465323488983)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623209102605279698)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_imp.id(805274121960488982)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623209525890279698)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_imp.id(805274904678488982)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623209934274279699)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_imp.id(805275266138488983)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623210276439279699)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_imp.id(805275757707488983)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623210748155279699)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(623211100812279699)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(623207830599279697)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_imp.id(805274518163488982)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(626361815830019539)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(1705179940962465618)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(805247439190488958)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(626362471107019540)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(1705179940962465618)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(805247439190488958)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(626364616666019541)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(1705180060000465621)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(805247439190488958)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(626365354790019542)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(1705180060000465621)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(805247439190488958)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(626367433238019543)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(278111329216989696)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(805247439190488958)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(626368100234019544)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(278111329216989696)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(805247439190488958)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(644814998557825520)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(805263765580488970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(644821146027825532)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(805263765580488970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(644867886894825595)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(805263765580488970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(707278083661272119)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(707277637011272118)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(707278551543272119)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(707277637011272118)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(707278918973272119)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(707277637011272118)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(707279316936272119)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(707277637011272118)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(707315383900272150)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(1705178441795465607)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(707324255413272157)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(577693509186385825)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(755621303295880473)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(755621956101880474)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_imp.id(805262626133488969)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(755622644432880474)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789091321010367594)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(1705122004855465411)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789100363323367601)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(1705124258413465464)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789111554736367610)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(1705129507270465472)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789118926595367614)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(1705132384158465476)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789130712095367622)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(1705139562348465490)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789138003829367627)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(1705141898081465498)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(789154928943367639)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805304392303489043)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(805264192186488970)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805305130414489043)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(805264192186488970)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805305817429489044)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(805264192186488970)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805306511942489044)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(805264192186488970)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805307252326489045)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(805264192186488970)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805307946980489047)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(805264192186488970)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805308648135489048)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(805245053782488956)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805309343645489049)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(805268227780488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805310055748489049)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(805245053782488956)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805310728736489050)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(805268227780488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805311421712489052)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(805245053782488956)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805312145942489052)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(805268227780488973)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805312765302489053)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(805245053782488956)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805313551294489053)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(805268227780488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805314213646489054)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(805246168289488957)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805314871119489054)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(805268595669488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805315602296489055)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(805246168289488957)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805316314686489056)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(805268595669488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805317000492489056)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(805246168289488957)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805317726541489057)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(805268595669488973)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805318448090489057)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(805246168289488957)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805319077901489058)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(805268595669488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805319797444489058)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(805247843914488958)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805320537338489059)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(805269019384488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805321191260489059)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(805247843914488958)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805321920191489060)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(805269019384488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805322612777489060)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(805247843914488958)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805323271794489061)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(805269019384488973)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805323998393489062)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(805247843914488958)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805324734780489062)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(805269019384488973)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805325420890489063)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(805248655349488958)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805326079192489063)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(805269846517488974)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805326787319489064)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(805248655349488958)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805327493404489064)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(805269846517488974)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805328249772489065)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(805248655349488958)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805328949716489065)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(805269846517488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805329629460489066)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(805248655349488958)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805330273576489066)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(805269846517488974)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805331048928489067)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_imp.id(805244253042488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805331699809489068)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_imp.id(805242241291488953)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805332363240489070)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(805242651400488953)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805333099140489073)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(805243011389488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805333822479489073)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_imp.id(805243371783488955)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805334466017489074)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_imp.id(805241828351488953)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805335177168489075)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_imp.id(805243805582488955)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805335959696489075)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_imp.id(805243805582488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805336565712489076)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_imp.id(805242241291488953)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805337342733489076)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(805242651400488953)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805338033981489077)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_imp.id(805243011389488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805338680761489077)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_imp.id(805243371783488955)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805339454936489078)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_imp.id(805240619934488946)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805340152789489078)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(805240619934488946)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805340853252489079)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(805240619934488946)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805341419837489080)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_imp.id(805244253042488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805342119253489080)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_imp.id(805243805582488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805342783540489081)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_imp.id(805241828351488953)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805343555555489081)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_imp.id(805244658147488956)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805344203156489082)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_imp.id(805244253042488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805344949805489082)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_imp.id(805241828351488953)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805345565001489083)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_imp.id(805244253042488955)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805346307434489083)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(805267001952488972)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805347037732489084)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_imp.id(805265797787488971)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805347701553489085)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(805266606758488972)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805348411173489085)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_imp.id(805265447003488971)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805349096344489086)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_imp.id(805265447003488971)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805349780006489086)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_imp.id(805265447003488971)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805350472702489087)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_imp.id(805266180685488971)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805351215611489087)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_imp.id(805265797787488971)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805351958059489088)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_imp.id(805248260974488958)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805352601483489088)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_imp.id(805245385304488956)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805353302360489089)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_imp.id(805245799426488957)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805354002662489090)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_imp.id(805247021687488957)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805354396622489090)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805355080545489091)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_imp.id(805248260974488958)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805355847883489091)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_imp.id(805255022034488962)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805356548441489092)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_imp.id(805279303152488985)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805453668004489262)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805454378538489263)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805455142653489264)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805455805623489264)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805456555875489265)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805457183301489265)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805457953442489266)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805458628316489266)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805459289691489267)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805459965095489267)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805644786529489503)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(805644416900489480)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_imp.id(805276924542488984)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(805645200537489503)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(805644416900489480)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_imp.id(805277291704488984)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128544920057194347)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(805257790851488964)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128545562167194348)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(805257790851488964)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128586717364194410)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705152875674465541)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128618569429194468)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_imp.id(805269375404488973)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128618965358194468)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_imp.id(805269375404488973)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128619357807194469)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_imp.id(805269375404488973)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128628826924194484)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128629453954194486)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(805249012829488959)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128630193462194487)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(805249012829488959)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128669340537194558)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(805272134933488980)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1128669984630194571)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(805272134933488980)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1350701023821116334)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1486452249272970830)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1491639974919360571)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(805254210134488962)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496051418397738412)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496052050845738414)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496052783075738415)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496053473011738415)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496054169235738416)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496054913418738416)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496055627255738417)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496056320696738418)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496056986061738418)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1496057710390738419)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705145494236465520)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705145736876465530)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(805258250255488964)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705146131316465531)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(805257046695488964)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705146206265465531)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(805258250255488964)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705146336589465531)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(805258250255488964)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705146517306465531)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(805257456376488964)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705146595074465531)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(805258250255488964)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705146672373465534)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(805257046695488964)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154221723465544)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154299425465544)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154376163465544)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154508488465544)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154551853465544)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154634469465544)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705154787546465544)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155102104465544)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(805261813279488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155193867465544)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(805261813279488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155326352465545)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(805259395850488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155392632465545)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155433348465545)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155613093465545)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(805259395850488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705155767377465545)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705156103151465546)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705155908534465545)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705160333393465554)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_imp.id(805269375404488973)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705160445977465554)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705160602795465554)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705159957999465553)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_imp.id(805269375404488973)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705161169640465556)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_imp.id(805264608857488970)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705161400512465556)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_imp.id(805264608857488970)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162105946465562)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(805272516746488981)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162370019465562)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162491328465562)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(805272516746488981)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162616886465562)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162717116465562)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(805272516746488981)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162781180465562)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705162870009465562)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705163014410465562)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(805272516746488981)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705163130025465562)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(805272516746488981)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705163166915465562)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705163233556465562)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705163373835465562)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705163627339465563)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705161657889465560)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164045802465565)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164371962465566)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(805272950906488981)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164531682465566)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164587413465566)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(805272950906488981)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164701665465566)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164756695465566)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(805272950906488981)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705164925874465566)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705165224489465569)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705165529474465569)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(805277716057488984)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705165595958465569)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(805277716057488984)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705165694299465569)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705165830471465569)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705165879257465569)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705166214268465570)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705166672034465572)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705166280128465570)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_imp.id(805276141141488983)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705166826754465572)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705166280128465570)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_imp.id(805276141141488983)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705167515004465575)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(805271736096488980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705167628196465575)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_imp.id(805271736096488980)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705167898900465577)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(805280079489488986)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705168132108465577)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(805279690165488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705168325520465577)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(805279690165488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705168368059465577)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_imp.id(805279690165488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705168516235465577)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_imp.id(805280079489488986)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705168550745465577)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705168653655465578)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705167124857465574)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(805279690165488985)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705170554596465584)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705170688070465585)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705170791909465586)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705170886548465586)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705170970347465586)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171041469465586)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171156934465586)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171484858465586)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(805249439685488959)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171566299465586)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(805249439685488959)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171823083465586)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(805249439685488959)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171866880465586)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705171948439465587)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(805249439685488959)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705172044621465587)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705170174955465580)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(805249439685488959)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705174781345465598)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705174572297465596)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705174921090465598)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705174572297465596)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705175067622465598)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705174572297465596)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705175165461465598)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705174572297465596)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705175477450465598)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705174572297465596)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(805251408506488960)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705175624538465598)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705174572297465596)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(805251408506488960)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705175951840465599)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705176079959465599)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705176161856465600)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705176243247465600)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705177296972465602)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705179041834465612)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705178685207465610)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_imp.id(805252987902488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705179146454465612)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705178685207465610)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_imp.id(805252987902488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705179285604465612)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705178685207465610)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_imp.id(805252987902488961)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705180562452465628)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(805241405748488952)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705180709004465628)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_imp.id(805241405748488952)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705339740860844263)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(1705177636506465603)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705340042447844263)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(1705177636506465603)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1705340639286844263)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(1705177636506465603)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1720817526657802888)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1720817809790802888)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1720818070848802888)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1720818675341802889)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1720819261565802889)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1720819902353802889)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705156377519465548)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(805262189644488967)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1726336883247319150)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1726337511537319151)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1726338368857319152)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(805259823745488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1726338947744319152)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(1705147025288465535)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(805259823745488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730785475946305475)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730786046951305475)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730786647901305476)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730787318298305476)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730787867220305477)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730788518772305477)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730789037458305477)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730789679929305479)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(805249783447488959)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730790239495305479)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(805251825905488960)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730790848723305479)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(805251825905488960)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730791511198305480)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(805249783447488959)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730792098004305480)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(805249783447488959)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730792696608305481)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1730793299792305481)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731111559215326320)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731112153340326321)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731112782616326321)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731113368625326321)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_imp.id(805271449416488980)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731113938954326321)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731114539221326322)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731115203763326322)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731115786470326322)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731116431003326323)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731116949341326323)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731117564587326324)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_imp.id(805263439617488970)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731118226852326324)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(805259395850488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731118755331326325)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(805263439617488970)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731119107726326325)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731119683334326325)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731119994929326325)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731120589419326326)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(805259395850488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731121632458326379)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_imp.id(805258587658488965)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731122317140326380)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_imp.id(805258587658488965)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1731122867872326380)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734100260278516813)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734100917792516813)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734101514997516813)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734102079568516813)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734102693095516813)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734103266221516814)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734103859954516814)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1734104466733516815)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(1705168775511465578)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738575863254872048)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(805259395850488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738576495811872048)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(805263439617488970)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738577655635872049)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738578327054872050)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738578927986872050)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738579515994872050)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738580048940872050)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(805256649322488963)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738580713362872051)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738581259290872052)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738581875033872052)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738582135354872052)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738582738160872052)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738583994484872053)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738584543988872054)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738585145359872054)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(805259395850488965)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1738585818926872055)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(805263439617488970)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1834183806642677074)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1834184503814677077)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(805249783447488959)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1834449290352678901)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(805280867884488986)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1834450028466678902)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(1705163922773465564)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(805272950906488981)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864540951086826983)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(805257456376488964)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864541603589826984)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705144983076465509)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(805257456376488964)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864553275562827019)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864592876997827113)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864617426358827170)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705177449062465602)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864617689500827170)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(1705177449062465602)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864617968164827170)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705177449062465602)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864622941491827207)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_imp.id(805251825905488960)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864623245590827207)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_imp.id(805253418736488961)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864623580642827207)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_imp.id(805251825905488960)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864623874610827208)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_imp.id(805254210134488962)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864624141381827208)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864624524562827208)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_imp.id(805254565056488962)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864624823066827208)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(1864622533360827203)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_imp.id(805254210134488962)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864651895766827294)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864652506859827295)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864653096092827295)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864653655293827296)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(805278926642488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864654316776827296)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864654910618827296)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864655442428827297)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1864656072530827297)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(1705169934707465579)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(805278552216488985)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1946925942890364703)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_imp.id(805270616513488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1946926581670364703)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_imp.id(805270616513488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1946927171808364703)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_imp.id(805267438293488972)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1946927751538364704)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_imp.id(805271006141488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1946928414995364704)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1864591495492827110)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_imp.id(805271006141488974)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1961604216852829540)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1961604482564829540)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1961604824514829541)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2203138616673775057)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_imp.id(805260171012488966)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2203138948504775057)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2203139657042775058)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1128618067867194467)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_imp.id(805260171012488966)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2293773896369483302)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2293797946649483477)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705155908534465545)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2293802078722483532)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2306723111183021046)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(1705178685207465610)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2396444696135921165)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(1705160660174465554)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2421328853672077725)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_imp.id(805271449416488980)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2421329493590077725)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_imp.id(805271449416488980)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2421330058538077726)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705148785262465537)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_imp.id(805271449416488980)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2421344320399077752)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2421344908359077752)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(805259039695488965)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2481581304855976113)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705153336283465542)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2482091749105067367)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(1705157342915465550)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(805270169750488974)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(3173489821420433524)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
);
null;
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2576175038605084834)
,p_name=>'HELP'
,p_message_text=>'Help'
);
null;
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2576167036528084214)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
);
null;
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(2684258536697560751)
,p_name=>'USER'
,p_message_text=>'User'
);
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(2658855221613896695)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/apex_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8201443953751373534)
,p_name=>'APEX Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_cookie_name=>'ORA_WWV_PACKAGED_APPLICATIONS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_gantt_chart
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1307542736083747394)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.GANTT_CHART'
,p_display_name=>'Gantt Chart'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.GANTT_CHART'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_header_rows( p_period in varchar2, p_start_date in date,',
'        p_num_periods in number );',
'',
'function render (',
'        p_region              in apex_plugin.t_region,',
'        p_plugin              in apex_plugin.t_plugin,',
'        p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    l_region_source varchar2(32767) := p_region.source;',
'    l_bind_list apex_plugin_util.t_bind_list;',
'',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_summary_element_col        constant varchar2(255) := p_region.attribute_01;',
'    c_terminal_element_col       constant varchar2(255) := p_region.attribute_02;',
'    c_terminal_element_alt_col   constant varchar2(255) := p_region.attribute_03;',
'    c_terminal_element_style_col constant varchar2(255) := p_region.attribute_04;',
'    c_terminal_element_start_col constant varchar2(255) := p_region.attribute_05;',
'    c_terminal_element_end_col   constant varchar2(255) := p_region.attribute_06;',
'',
'    c_summary_link_target  constant varchar2(255) := p_region.attribute_07;',
'    c_terminal_link_target constant varchar2(255) := p_region.attribute_08;',
'',
'    c_period_type_page_item       constant varchar2(255) := p_region.attribute_09;',
'    c_period_start_date_page_item constant varchar2(255) := p_region.attribute_10;',
'    c_periods_per_type            constant varchar2(255) := p_region.attribute_11;',
'',
'    l_summ_element_col_no       pls_integer;',
'    l_term_element_col_no       pls_integer;',
'    l_term_element_alt_col_no   pls_integer;',
'    l_term_element_style_col_no pls_integer;',
'    l_term_element_start_col_no pls_integer;',
'    l_term_element_end_col_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'',
'    l_summ_element       varchar2(4000);',
'    l_term_element       varchar2(4000);',
'    l_term_element_alt   varchar2(4000);',
'    l_term_element_style varchar2(4000);',
'    l_term_element_start date;',
'    l_term_element_end   date;',
'    l_summ_link          varchar2(4000);',
'    l_term_link          varchar2(4000);',
'',
'    l_period_type       varchar2(1);',
'    l_period_start_date date;',
'    l_period_end_date   date;',
'    l_period_lengths    apex_application_global.vc_arr2;',
'    l_num_periods       number;',
'',
'    l_cs          number;',
'    l_current     varchar2(4000) := ''X'';',
'    l_short       varchar2(64) := '''';',
'    l_start_cell  number;',
'    l_label       varchar2(512) := '''';',
'begin',
'    -- Get the appropriate values from the page items, if supplied.',
'    l_period_type := nvl( v(c_period_type_page_item), ''M'' );',
'    l_period_start_date := nvl( v(c_period_start_date_page_item), trunc(current_date));',
'    if c_periods_per_type is not null then',
'        l_period_lengths := apex_util.string_to_table( c_periods_per_type );',
'    else',
'        l_period_lengths := apex_util.string_to_table( ''30:22:18:8'' );',
'    end if;',
'',
'    -- CSS for the Gantt Chart',
'    apex_css.add_file (',
'        p_name => ''com_oracle_apex_gantt_chart'',',
'        p_directory => p_plugin.file_prefix );',
'',
'    case l_period_type',
'        when ''D'' then',
'            l_num_periods := l_period_lengths(1);',
'            l_period_end_date := l_period_start_date + l_num_periods - 1;',
'        when ''W'' then',
'            l_num_periods := l_period_lengths(2);',
'            l_period_end_date := l_period_start_date + 7*(l_num_periods - 1);',
'        when ''M'' then',
'            l_num_periods := l_period_lengths(3);',
'            l_period_end_date := add_months(l_period_start_date, l_num_periods - 1);',
'        when ''Q'' then',
'            l_num_periods := l_period_lengths(4);',
'            l_period_end_date := add_months(l_period_start_date, 3*(l_num_periods - 1));',
'    end case;',
'',
'    -- Wrap the user''s SQL so that we only get the rows we actually care about.',
'    l_region_source := ''select * from ('' || rtrim(l_region_source, '' ;'') || '') '' ||',
'                       ''where "'' || c_terminal_element_start_col || ''" <= to_date(:apex$_end_date,   ''''YYYYMMDD'''')'' ||',
'                       ''  and "'' || c_terminal_element_end_col   || ''" >= to_date(:apex$_start_date, ''''YYYYMMDD'''')'';',
'',
'    l_bind_list(1).name  := ''apex$_start_date'';',
'    l_bind_list(1).value := to_char(l_period_start_date,''YYYYMMDD'');',
'    l_bind_list(2).name  := ''apex$_end_date'';',
'    l_bind_list(2).value := to_char(l_period_end_date,''YYYYMMDD'');',
'',
'    -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 4,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_bind_list      => l_bind_list',
'                               );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_summ_element_col_no         := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Parent Element Column'',',
'                                        p_column_alias      => c_summary_element_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_col_no       := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Column'',',
'                                        p_column_alias      => c_terminal_element_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_alt_col_no   := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Alt. Name Column'',',
'                                        p_column_alias      => c_terminal_element_alt_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => false,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_style_col_no := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Style Column'',',
'                                        p_column_alias      => c_terminal_element_style_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => false,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_term_element_start_col_no := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element Start Column'',',
'                                        p_column_alias      => c_terminal_element_start_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_date );',
'',
'    l_term_element_end_col_no   := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => ''Child Element End Column'',',
'                                        p_column_alias      => c_terminal_element_end_col,',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => true,',
'                                        p_data_type         => apex_plugin_util.c_data_type_date );',
'',
'    -- Generate the top part of the Gantt chart.',
'    render_header_rows(',
'        p_period => l_period_type,',
'        p_start_date => l_period_start_date,',
'        p_num_periods => l_num_periods );',
'',
'    -- Ensure that a tbody tag is open, since we close it when starting a new project.',
'    sys.htp.p(''<tbody class="hideMe">'');',
'',
'    -- It''s time to emit the selected data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'        -- can do substitutions for columns contained in the region source query.',
'        apex_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => l_row_num );',
'    ',
'        -- get the summary element label',
'        l_summ_element := apex_plugin_util.escape (',
'                       apex_plugin_util.get_value_as_varchar2 (',
'                           p_data_type => l_column_value_list(l_summ_element_col_no).data_type,',
'                           p_value     => l_column_value_list(l_summ_element_col_no).value_list(l_row_num) ),',
'                       p_region.escape_output );',
'',
'        -- get the terminal element label',
'        l_term_element := apex_plugin_util.escape (',
'                       apex_plugin_util.get_value_as_varchar2 (',
'                           p_data_type => l_column_value_list(l_term_element_col_no).data_type,',
'                           p_value     => l_column_value_list(l_term_element_col_no).value_list(l_row_num) ),',
'                       p_region.escape_output );',
'',
'        -- get the terminal element alternate label if it exists',
'        if l_term_element_alt_col_no is not null then',
'            l_term_element_alt := apex_escape.html_attribute (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_term_element_alt_col_no).data_type,',
'                               p_value     => l_column_value_list(l_term_element_alt_col_no).value_list(l_row_num) )',
'                           );',
'        end if;',
'',
'        -- get the terminal element style if it exists',
'        if l_term_element_style_col_no is not null then',
'            l_term_element_style := apex_escape.html_attribute (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_term_element_style_col_no).data_type,',
'                               p_value     => l_column_value_list(l_term_element_style_col_no).value_list(l_row_num) )',
'                           );',
'        end if;',
'',
'        -- get the terminal element start date',
'        l_term_element_start := l_column_value_list(l_term_element_start_col_no).value_list(l_row_num).date_value;',
'',
'        -- get the terminal element end date',
'        l_term_element_end   := l_column_value_list(l_term_element_end_col_no).value_list(l_row_num).date_value;',
'',
'        -- get the summary element link target if it does exist',
'        if c_summary_link_target is not null then',
'            l_summ_link := apex_util.prepare_url (',
'                                apex_plugin_util.replace_substitutions (',
'                                    p_value  => c_summary_link_target,',
'                                    p_escape => false ));',
'        end if;',
'',
'        -- get the terminal element link target if it does exist',
'        if c_terminal_link_target is not null then',
'            l_term_link := apex_util.prepare_url (',
'                                apex_plugin_util.replace_substitutions (',
'                                    p_value  => c_terminal_link_target,',
'                                    p_escape => false ));',
'        end if;',
'',
'        if l_term_element_start > l_period_end_date or l_term_element_end < l_period_start_date then',
'            -- Ignore the entry if it falls outside of the current window.',
'            -- This should never happen, since we''re wrapping the user''s SQL, but better safe than sorry.',
'            null;',
'        else',
'            if l_summ_element <> l_current then',
'                l_current := l_summ_element;',
'                if length(l_summ_element) > 50 then',
'                    l_short := substr(l_summ_element,1,50)||''...'';',
'                else',
'                    l_short := l_summ_element;',
'                end if;',
'                sys.htp.p(''</tbody> <tbody>'');',
'                sys.htp.p(''<tr><th id="gantt_labels_''||l_row_num||''"><a href="''',
'                    ||case when l_summ_link is not null then apex_escape.html_attribute(l_summ_link) else ''#'' end',
'                    ||''">''||l_short||''</a>''',
'                    ||''</th>'');',
'            else',
'                sys.htp.p(''<tr><th id="gantt_labels_''||l_row_num||''"></th>'');',
'            end if;',
'            -- Put in the row data here.',
'            case l_period_type',
'                when ''D'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := 1 + trunc(l_term_element_start) - trunc(l_period_start_date);',
'                    end if;',
'                    l_cs := 2 + (trunc(l_term_element_end) - trunc(l_period_start_date) - l_start_cell);',
'                when ''W'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := ceil((1 + l_term_element_start - l_period_start_date) / 7);',
'                    end if;',
'                    l_cs := 1 + ceil((l_term_element_end - l_period_start_date) / 7) - l_start_cell;',
'                when ''M'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := 1 + months_between(last_day(l_term_element_start),last_day(l_period_start_date));',
'                    end if;',
'                    l_cs := 2 + (months_between(last_day(l_term_element_end),last_day(l_period_start_date))) - l_start_cell;',
'                when ''Q'' then',
'                    if l_term_element_start <= l_period_start_date then l_start_cell := 1; else',
'                        l_start_cell := 1 + (ceil(extract(month from l_term_element_start)/3)',
'                                + 4*(extract(year from l_term_element_start) - extract(year from l_period_start_date)))',
'                            - ceil(extract(month from l_period_start_date)/3);',
'                    end if;',
'                    l_cs := 2 + (ceil(extract(month from l_term_element_end)/3)',
'                            + 4*(extract(year from l_term_element_end) - extract(year from l_period_start_date)))',
'                        - ceil(extract(month from l_period_start_date)/3)',
'                        - l_start_cell;',
'            end case;',
'            if l_start_cell + l_cs > l_num_periods + 1 then',
'                l_cs := l_num_periods + 1 - l_start_cell;',
'            end if;',
'            if l_start_cell > 1 then',
'                for c in 1..l_start_cell - 1 loop',
'                    sys.htp.p(''<td headers="sub_date''||to_char(c - 1)||''"></td>'');',
'                end loop;',
'            end if;',
'            if l_cs > 1 then',
'                sys.htp.p(''<td colspan="''||l_cs||''" headers="'');',
'                for c in 0..l_cs - 1 loop',
'                    sys.htp.p(''sub_date''||to_char((l_start_cell - 1) + c)||'''');',
'                end loop;',
'                sys.htp.p(''">'');',
'            else',
'                sys.htp.p(''<td colspan="''||l_cs||''" headers="sub_date''||to_char(l_start_cell - 1)||''">'');',
'            end if;',
'            l_label := substr(l_term_element,1,greatest(l_cs * 15,l_num_periods));',
'            if length(l_label) < length(l_term_element) then',
'                l_label := l_label || ''...'';',
'            end if;',
'            sys.htp.prn(''<a href="''',
'                    ||case when l_term_link is not null then apex_escape.html_attribute(l_term_link) else ''#'' end',
'                    ||''" title="''||l_term_element_alt||''"''',
'                ||'' class="''||l_term_element_style||''">'');',
'            sys.htp.prn( l_label||''</a></td>'' );',
'            if l_start_cell + l_cs < l_num_periods then',
'                for c in l_start_cell+l_cs..l_num_periods loop',
'                    sys.htp.p(''<td headers="sub_date''||to_char(c - 1)||''"></td>'');',
'                end loop;',
'            end if;',
'',
'            sys.htp.p(''</tr>'');',
'        end if;',
'    end loop;',
'    sys.htp.p(''</tbody>'');',
'    sys.htp.p(''</table>'');',
'',
'    return null;',
'end render;',
'',
'-- Procedure: render_header_rows',
'-- Generate the top section of the Gantt chart.',
'procedure render_header_rows( p_period in varchar2, p_start_date in date,',
'        p_num_periods in number ) is',
'    l_current    varchar2(30) := ''X'';',
'    l_cs         number;',
'begin',
'    sys.htp.p(''<table cellspacing="0" cellpadding="0" class="apex-gantt-chart" summary="Gantt Chart">'');',
'    sys.htp.p(''<thead>'');',
'    sys.htp.p(''<tr>'');',
'    -- First column is reserved for the labels.',
'    sys.htp.p(''<th id="toplabels"> </th>'');',
'    case p_period',
'        when ''D'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(p_start_date + d,''Month YYYY'') <> l_current then',
'                    l_current := to_char(p_start_date + d,''Month YYYY'');',
'                    l_cs := last_day(p_start_date+d) - greatest(last_day(add_months(p_start_date+d,-1)),p_start_date-1);',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">''||to_char(p_start_date + d,''DD'')||''</th>'');',
'            end loop;',
'        when ''W'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(p_start_date + (d*7),''Month YYYY'') <> l_current then',
'                    l_current := to_char(p_start_date + (d*7),''Month YYYY'');',
'                    l_cs := to_number(to_char(last_day(p_start_date + (d*7)),''IW''))',
'                        - to_number(to_char(p_start_date + (d*7),''IW'')) + 1;',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">''||to_char(p_start_date + (d*7),''DD'')',
'                    ||''-''||to_char(p_start_date + (d*7)+6, ''DD'')||''</th>'');',
'            end loop;',
'        when ''M'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(add_months(p_start_date, d),''YYYY'') <> l_current then',
'                    l_current := to_char(add_months(p_start_date, d),''YYYY'');',
'                    l_cs := 12 - to_number(to_char(add_months(p_start_date, d),''MM'')) + 1;',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">''||to_char(add_months(p_start_date, d),''Month'')||''</th>'');',
'            end loop;',
'        when ''Q'' then',
'            for d in 0..p_num_periods-1 loop',
'                if to_char(add_months(p_start_date, d*3),''YYYY'') <> l_current then',
'                    l_current := to_char(add_months(p_start_date, d*3),''YYYY'');',
'                    l_cs := 4 - floor((to_number(to_char(add_months(p_start_date, d*3),''MM''))-1)/3);',
'                    if l_cs > p_num_periods - d then',
'                        l_cs := p_num_periods - d;',
'                    end if;',
'                    sys.htp.p(''<th class="topLevelDate" colspan="''||l_cs||''" id="top_date''||d||''">''||l_current||''</th>'');',
'                end if;',
'            end loop;',
'            sys.htp.p(''</tr>'');',
'            sys.htp.p(''<tr>'');',
'            -- First column is reserved for the labels.',
'            sys.htp.p(''<th id="sublabels"> </th>'');',
'            for d in 0..p_num_periods-1 loop',
'                sys.htp.p(''<th class="subLevelDate" id="sub_date''||d||''">Q''',
'                    ||floor((to_number(to_char(add_months(p_start_date, d*3),''fmMM''))+2)/3)',
'                    ||''</th>'');',
'            end loop;',
'    end case;',
'    sys.htp.p(''</tr>'');',
'    sys.htp.p(''</thead>'');',
'end render_header_rows;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_reference_id=>1299592847187987766
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>2
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021915730447743876)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Parent Element Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column from the source query containing the name of the summary element of the Gantt chart.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021915958588743881)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Child Element Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column from the source query containing the name of the terminal elements.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021916391661743881)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Child Element Alt. Name Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The alternate title for the terminal element. Displayed when the user hovers over the terminal element with the mouse.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021916756605743881)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Child Element Style Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The CSS class to be applied to the terminal element.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021917211297743882)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Child Element Start Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'The date the terminal element starts on.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021917574991743882)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Child Element End Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'The date the terminal element ends on.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021917989999743882)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Parent Element Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_help_text=>'The link target for the summary element.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021918369873743882)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Child Element Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_help_text=>'The link target for the terminal element.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021918790265743883)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Period Type Page Item'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The name of the page item which allows the user to determine the view of the Gantt Chart. This page item must return one of the following values:',
'',
'D - Daily',
'W - Weekly',
'M - Monthly',
'Q - Quarterly'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021919155956743883)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Start Date Page Item'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'The name of the page item which contains the start date for the chart. If no page item is provided, or if the page item has no value, the chart will start on the current date.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(4021919626261743884)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Periods Per Type'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'30:22:18:8'
,p_is_translatable=>false
,p_help_text=>'The number of periods to display for each of the different period types, separated by colons. The default value (30:22:18:8) provides for 30 days, 22 weeks, 18 months, and 8 quarters.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(4021920537326743907)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>4
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7461626C652E617065782D67616E74742D63686172742074686561642074682E746F704C6576656C446174657B666F6E743A626F6C6420313470782F3134707820417269616C2C73616E732D73657269663B746578742D616C69676E3A6C6566743B636F';
wwv_flow_imp.g_varchar2_table(2) := '6C6F723A233333333B70616464696E673A3570783B77696474683A32303070787D0D0A7461626C652E617065782D67616E74742D63686172742074686561642074682E7375624C6576656C446174657B666F6E743A6E6F726D616C20313170782F313270';
wwv_flow_imp.g_varchar2_table(3) := '7820417269616C2C73616E732D73657269663B636F6C6F723A233730373037303B77696474683A383070783B746578742D616C69676E3A6C6566743B70616464696E673A302035707820357078203570783B77686974652D73706163653A6E6F77726170';
wwv_flow_imp.g_varchar2_table(4) := '7D0D0A7461626C652E617065782D67616E74742D63686172742074686561642074682E7375624C6576656C446174652E626567696E546F704C6576656C446174657B626F726465722D6C6566743A31707820736F6C696420234444447D0D0A7461626C65';
wwv_flow_imp.g_varchar2_table(5) := '2E617065782D67616E74742D63686172742074626F64792074723A66697273742D6368696C642074682C7461626C652E617065782D67616E74742D63686172742074626F64792074723A66697273742D6368696C642074647B626F726465722D746F703A';
wwv_flow_imp.g_varchar2_table(6) := '31707820736F6C696420234141417D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074723A66697273742D6368696C642074647B70616464696E672D746F703A3270787D0D0A7461626C652E617065782D67616E74742D63';
wwv_flow_imp.g_varchar2_table(7) := '686172742074626F64792074687B70616464696E673A3570783B666F6E743A626F6C6420313170782F3132707820417269616C2C73616E732D73657269663B746578742D616C69676E3A6C6566743B77696474683A32303070787D0D0A7461626C652E61';
wwv_flow_imp.g_varchar2_table(8) := '7065782D67616E74742D63686172742074626F647920746820617B636F6C6F723A233333333B746578742D6465636F726174696F6E3A6E6F6E653B77686974652D73706163653A6E6F777261707D0D0A7461626C652E617065782D67616E74742D636861';
wwv_flow_imp.g_varchar2_table(9) := '72742074626F647920746820613A686F7665727B746578742D6465636F726174696F6E3A756E6465726C696E657D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074647B626F726465722D6C6566743A31707820736F6C69';
wwv_flow_imp.g_varchar2_table(10) := '6420234545453B70616464696E673A302032707820327078203270787D0D0A7461626C652E617065782D67616E74742D63686172742074626F647920746420617B646973706C61793A626C6F636B3B70616464696E673A303B666F6E743A6E6F726D616C';
wwv_flow_imp.g_varchar2_table(11) := '20313170782F3232707820417269616C2C73616E732D73657269663B636F6C6F723A233333333B746578742D696E64656E743A3570783B6261636B67726F756E643A234630463046303B626F726465723A31707820736F6C696420234141413B74657874';
wwv_flow_imp.g_varchar2_table(12) := '2D6465636F726174696F6E3A6E6F6E653B2D7765626B69742D626F726465722D7261646975733A3370783B2D6D6F7A2D626F726465722D7261646975733A3370783B2D6D732D626F726465722D7261646975733A3370783B626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(13) := '733A3370783B2D7765626B69742D7472616E736974696F6E3A616C6C2C302E31733B2D6D6F7A2D7472616E736974696F6E3A616C6C2C302E31733B2D6D732D7472616E736974696F6E3A616C6C2C302E31733B7472616E736974696F6E3A616C6C2C302E';
wwv_flow_imp.g_varchar2_table(14) := '31733B77686974652D73706163653A206E6F777261703B7D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074642061207370616E7B646973706C61793A626C6F636B3B666F6E743A6E6F726D616C20313270782F32327078';
wwv_flow_imp.g_varchar2_table(15) := '20417269616C2C73616E732D73657269663B746578742D6465636F726174696F6E3A6E6F6E653B746578742D696E64656E743A307D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074642061207370616E2E7370616E5072';
wwv_flow_imp.g_varchar2_table(16) := '65767B666C6F61743A6C6566743B70616464696E672D6C6566743A3570787D0D0A7461626C652E617065782D67616E74742D63686172742074626F64792074642061207370616E2E7370616E4E6578747B666C6F61743A72696768743B70616464696E67';
wwv_flow_imp.g_varchar2_table(17) := '2D72696768743A3570787D0D0A7461626C652E617065782D67616E74742D63686172742074626F647920746420613A686F7665727B6261636B67726F756E642D636F6C6F723A234530453045303B746578742D6465636F726174696F6E3A756E6465726C';
wwv_flow_imp.g_varchar2_table(18) := '696E657D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(4021921310555743915)
,p_plugin_id=>wwv_flow_imp.id(1307542736083747394)
,p_file_name=>'com_oracle_apex_gantt_chart.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_display_source
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1328256220643322758)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_display_name=>'Source Display'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.DISPLAY_SOURCE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'        p_region              in apex_plugin.t_region,',
'        p_plugin              in apex_plugin.t_plugin,',
'        p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_region_static_id    constant varchar2(255) := p_region.attribute_01;',
'    c_highlight_page_item constant varchar2(255) := p_region.attribute_02;',
'',
'    l_highlight_term varchar2(4000) := '''';',
'',
'    cursor sql_csr( d_region_static_id in varchar2 ) is',
'        select source_type, 10 seq, null series_name, region_source source',
'        from apex_application_page_regions',
'        where application_id = :APP_ID',
'            and page_id = :APP_PAGE_ID',
'            and static_id = d_region_static_id',
'            and ( source_type_code like ''PLUGIN%''',
'                or source_type_code like ''STATIC_TEXT%''',
'                or source_type in (',
'                    ''Calendar'',',
'                    ''Easy Calendar'',',
'                    ''Interactive Report'',',
'                    ''Interactive Grid'',',
'                    ''List View'',',
'                    ''Report'',',
'                    ''PL/SQL'',',
'                    ''Tabular Form''',
'                )',
'            )',
'        union all',
'        select reg.source_type, 10 seq, null series_name, to_clob(tr.tree_query) source',
'        from apex_application_page_regions reg,',
'            apex_application_page_trees tr',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and tr.application_id = reg.application_id',
'            and tr.page_id = reg.page_id',
'            and tr.region_id = reg.region_id',
'            and reg.source_type in (''JavaScript Tree'')',
'        union all',
'        select reg.source_type, 10 seq, null series_name, to_clob(list_query) source',
'        from apex_application_page_regions reg,',
'            apex_application_lists li',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and li.application_id = reg.application_id',
'            and li.list_id = reg.list_id',
'            and reg.source_type in ( ''List'' )',
'        order by 1, 2;',
'    sql_rec sql_csr%ROWTYPE;',
'begin',
'    if c_highlight_page_item is not null then',
'        l_highlight_term := apex_escape.html(trim(lower(v(c_highlight_page_item))));',
'    end if;',
'',
'    for sql_rec in sql_csr( c_region_static_id ) loop',
'        if sql_rec.series_name is not null then',
'            sys.htp.p(''<p><strong>''||apex_escape.html(sql_rec.series_name)||'':</strong></p>'');',
'        end if;',
'        sys.htp.p(''<pre>'');',
'        if l_highlight_term is not null then',
'            sys.htp.p(replace(apex_escape.html(sql_rec.source),',
'                l_highlight_term,''<span class="highlight">''||l_highlight_term||''</span>''));',
'        else',
'            sys.htp.p(apex_escape.html(sql_rec.source));',
'        end if;',
'        sys.htp.p(''</pre>'');',
'    end loop;',
'',
'    return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>1305119942933551255
,p_subscribe_plugin_settings=>true
,p_help_text=>'This region plug-in is used to display the SQL Source region of an accompanying region.'
,p_version_identifier=>'5.0.1'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(616874090942058229)
,p_plugin_id=>wwv_flow_imp.id(1328256220643322758)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Region Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the static ID as defined in the target region''s attributes section.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(616874513812058230)
,p_plugin_id=>wwv_flow_imp.id(1328256220643322758)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Highlight Term Page Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'If you wish to have a term in your region source highlighted, create a page item and select it here.'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_minicalendar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1464834111957493552)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.MINICALENDAR'
,p_display_name=>'Mini Calendar'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.MINICALENDAR'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_mini_calendar( p_region in apex_plugin.t_region ) is',
'    c_date_col  constant varchar2(255) := p_region.attribute_01;',
'    c_label_col constant varchar2(255) := p_region.attribute_02;',
'',
'    l_date_col_no  pls_integer;',
'    l_label_col_no pls_integer;',
'',
'    c_collection constant varchar2(255) := ''APEX$MINICALENDAR$''||rawtohex(sys_guid());',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'',
'    l_region_source        varchar2(32767) := p_region.source;',
'',
'    --',
'    l_date  timestamp with local time zone;',
'    l_label varchar2(2000);',
'    l_found boolean;',
'    l_count number;',
'',
'    cursor dt_csr is',
'        select c001 label, d001 the_date',
'        from apex_collections',
'        where collection_name = c_collection',
'        order by d001 asc;',
'    dt_rec dt_csr%ROWTYPE;',
'',
'    -- Variables for knowing what to display.',
'    l_startdate  date;',
'    l_enddate    date;',
'    l_daycount   number;',
'    l_month      varchar2(6);',
'',
'    l_class      varchar2(512) := '''';',
'    l_disp       varchar2(255)  := '''';',
'    l_id         varchar2(512) := p_region.static_id;',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => null );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_date_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Date column'',',
'                        p_column_alias      => c_date_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => null -- might be date, timestamp, etc.',
'                    );',
'',
'    l_label_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Label column'',',
'                        p_column_alias      => c_label_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    apex_collection.create_or_truncate_collection( p_collection_name => c_collection );',
'    -- Loop through the data and shove it into the collection for ease of access.',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        l_found := true;',
'        if l_column_value_list(l_date_col_no).value_list(l_row_num).date_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).date_value;',
'        elsif l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_value;',
'        elsif l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_tz_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_tz_value;',
'        elsif l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_ltz_value is not null then',
'            l_date := l_column_value_list(l_date_col_no).value_list(l_row_num).timestamp_ltz_value;',
'        else',
'            -- Couldn''t get a usable date value; ignore this row.',
'            l_found := false;',
'        end if;',
'        if l_found then',
'            select count(*) into l_count',
'            from apex_collections',
'            where collection_name = c_collection',
'                and d001 = trunc(l_date);',
'',
'            if l_count = 0 then',
'                l_label := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_label_col_no).data_type,',
'                                p_value     => l_column_value_list(l_label_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'                apex_collection.add_member(',
'                    p_collection_name => c_collection,',
'                    p_c001            => l_label,',
'                    p_d001            => trunc(l_date)',
'                );',
'            end if;',
'        end if;',
'    end loop;',
'',
'    open dt_csr;',
'    fetch dt_csr into dt_rec;',
'    if dt_csr%FOUND then',
'        l_date  := dt_rec.the_date;',
'        l_label := dt_rec.label;',
'    else',
'        l_date  := trunc(localtimestamp);',
'        l_label := ''Today'';',
'    end if;',
'',
'    -- Print the calendar header.',
'    sys.htp.prn(''<div class="a-MiniCal">'');',
'    sys.htp.prn(''<h3 class="a-MiniCal-title">''||to_char(l_date, ''Month'')||'' ''||to_char(l_date,''YYYY'')||''</h3>'');',
'    sys.htp.prn(''<table class="a-MiniCal-month" summary="Calendar of ''||to_char(l_date, ''Month'')||'' ''||to_char(l_date,''YYYY'')||''">'');',
'    sys.htp.prn(''<thead>'');',
'    sys.htp.prn(''<tr>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_SUN" title="Sunday">Su</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_MON" title="Monday">Mo</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_TUE" title="Tuesday">Tu</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_WED" title="Wednesday">We</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_THU" title="Thursday">Th</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_FRI" title="Friday">Fr</th>'');',
'    sys.htp.prn(''<th class="a-MiniCal-dayOfWeek" scope="col" id="''||l_id||''_SAT" title="Saturday">Sa</th>'');',
'    sys.htp.prn(''</tr>'');',
'    sys.htp.prn(''</thead>'');',
'    -- Print the calendar body.',
'    sys.htp.prn(''<tbody>'');',
'    -- Do some quick manipulation to get the day of the week that the first of the month',
'     --  lands on, and then shift our starting date to the first day of that week.',
'    l_startdate := trunc(l_date,''MM'') - to_char(trunc(l_date,''MM''),''D'') + 1;',
'    l_enddate := last_day(l_date) + 7-to_char(last_day(l_date),''D'');',
'    l_month := to_char(l_date,''YYYYMM'');',
'',
'    for l_daycount in 0..(l_enddate - l_startdate) loop',
'        l_class := '''';',
'        l_disp := apex_escape.html(to_char(l_startdate+l_daycount,''fmDD''));',
'        -- If the day isn''t part of the month being displayed, grey it out.',
'        if to_char(l_startdate+l_daycount,''YYYYMM'') <> l_month then',
'            l_class := ''is-null'';',
'            l_disp := ''<span class="a-MiniCal-date">''||l_disp||''</span>'';',
'        else',
'            if to_char(l_startdate+l_daycount,''D'') in (''1'',''7'') then',
'                l_class := l_class || ''is-weekend '';',
'                l_disp := ''<span class="a-MiniCal-date">''||l_disp||''</span>'';',
'            end if;',
'            if l_month = to_char(localtimestamp,''YYYYMM'')',
'                    and l_startdate+l_daycount = current_date then',
'                l_class := l_class || ''is-today '';',
'                l_disp := ''<span class="a-MiniCal-date">''||l_disp||''</span>'';',
'            end if;',
'            if to_char(l_startdate+l_daycount,''YYYYMMDD'')',
'                    = to_char(l_date,''YYYYMMDD'') then',
'                l_class := l_class || ''is-active '';',
'                l_disp := ''<span class="a-MiniCal-date" title="''|| apex_escape.html(l_label) ||''">''||l_disp||''</span>'';',
'            end if;',
'        end if;',
'        if to_char(l_startdate+l_daycount,''D'') = ''1'' then',
'            sys.htp.prn(''<tr>'');',
'        end if;',
'        sys.htp.prn(''<td class="a-MiniCal-day ''||l_class||''" headers="''||l_id||''_''||to_char(l_startdate+l_daycount,''DY'')||''">''||l_disp||''</td>'');',
'        if to_char(l_startdate+l_daycount,''D'') = ''7'' then',
'            sys.htp.prn(''</tr>'');',
'        end if;',
'        if to_char(l_startdate+l_daycount,''YYYYMMDD'') = to_char(l_date,''YYYYMMDD'') then',
'            fetch dt_csr into dt_rec;',
'            if dt_csr%FOUND then',
'                l_date  := dt_rec.the_date;',
'                l_label := dt_rec.label;',
'            end if;',
'        end if;',
'    end loop;',
'    close dt_csr;',
'',
'    -- Clean up after ourselves.',
'    apex_collection.delete_collection( p_collection_name => c_collection );',
'',
'    sys.htp.prn(''</tbody>'');',
'    sys.htp.prn(''</table>'');',
'    sys.htp.prn(''</div>'');',
'end render_mini_calendar;',
'',
'function render ( p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin, p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    -- CSS for the Gantt Chart',
'    apex_css.add_file (',
'        p_name => ''com_oracle_apex_minicalendar'',',
'        p_directory => p_plugin.file_prefix );',
'',
'    render_mini_calendar( p_region );',
'    return null;',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_reference_id=>1435018733936024259
,p_subscribe_plugin_settings=>true
,p_help_text=>'This region plug-in displays a small calendar with the specified date highlighted.'
,p_version_identifier=>'5.0.1'
,p_files_version=>2
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170656566745616683)
,p_plugin_id=>wwv_flow_imp.id(1464834111957493552)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Date Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the single date value for the calendar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(170656980186616683)
,p_plugin_id=>wwv_flow_imp.id(1464834111957493552)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the label for the calendar.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(170658263781616684)
,p_plugin_id=>wwv_flow_imp.id(1464834111957493552)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>1
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The query must return at least two columns--a date and its label (other columns will be ignored). The calendar will display for the earliest date returned, highlighting all dates returned within that month.',
'',
'<pre>',
'select date_value, label_value',
'from ...',
'</pre>'))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7461626C652E617065782D6D696E692D63616C656E6461727B77696474683A313030257D0D0A7461626C652E617065782D6D696E692D63616C656E6461722063617074696F6E7B6261636B67726F756E642D636F6C6F723A236563663166393B6261636B';
wwv_flow_imp.g_varchar2_table(2) := '67726F756E642D696D6167653A2D7765626B69742D6772616469656E74286C696E6561722C203530252030252C2035302520313030252C20636F6C6F722D73746F702830252C2023663266356639292C20636F6C6F722D73746F7028313030252C202365';
wwv_flow_imp.g_varchar2_table(3) := '636631663929293B6261636B67726F756E642D696D6167653A2D7765626B69742D6C696E6561722D6772616469656E7428236632663566392C23656366316639293B6261636B67726F756E642D696D6167653A2D6D6F7A2D6C696E6561722D6772616469';
wwv_flow_imp.g_varchar2_table(4) := '656E7428236632663566392C23656366316639293B6261636B67726F756E642D696D6167653A6C696E6561722D6772616469656E7428236632663566392C23656366316639293B666F6E742D73697A653A313270783B666F6E742D7765696768743A626F';
wwv_flow_imp.g_varchar2_table(5) := '6C643B636F6C6F723A233430343034303B636F6C6F723A7267626128302C302C302C302E3735293B746578742D736861646F773A302031707820302072676261283235352C3235352C3235352C302E3735293B70616464696E673A387078203870782030';
wwv_flow_imp.g_varchar2_table(6) := '203870783B746578742D616C69676E3A63656E7465723B2D7765626B69742D626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365743B2D6D6F7A2D626F782D736861646F773A3020317078';
wwv_flow_imp.g_varchar2_table(7) := '20302072676261283235352C3235352C3235352C302E36352920696E7365743B626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365747D0D0A7461626C652E617065782D6D696E692D6361';
wwv_flow_imp.g_varchar2_table(8) := '6C656E6461722074686561642074687B6261636B67726F756E642D636F6C6F723A236537656466393B6261636B67726F756E642D696D6167653A2D7765626B69742D6772616469656E74286C696E6561722C203530252030252C2035302520313030252C';
wwv_flow_imp.g_varchar2_table(9) := '20636F6C6F722D73746F702830252C2023656366316639292C20636F6C6F722D73746F7028313030252C202365376564663929293B6261636B67726F756E642D696D6167653A2D7765626B69742D6C696E6561722D6772616469656E7428236563663166';
wwv_flow_imp.g_varchar2_table(10) := '392C23653765646639293B6261636B67726F756E642D696D6167653A2D6D6F7A2D6C696E6561722D6772616469656E7428236563663166392C23653765646639293B6261636B67726F756E642D696D6167653A6C696E6561722D6772616469656E742823';
wwv_flow_imp.g_varchar2_table(11) := '6563663166392C23653765646639293B666F6E742D73697A653A313070783B666F6E742D7765696768743A626F6C643B636F6C6F723A233630363036303B636F6C6F723A7267626128302C302C302C302E35293B70616464696E673A3470783B74657874';
wwv_flow_imp.g_varchar2_table(12) := '2D736861646F773A302031707820302072676261283235352C3235352C3235352C302E35293B626F726465722D626F74746F6D3A31707820736F6C696420236230626463637D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F';
wwv_flow_imp.g_varchar2_table(13) := '64792074722074647B77696474683A3134253B6261636B67726F756E643A6E6F6E6520236661666166613B746578742D616C69676E3A63656E7465723B626F726465722D626F74746F6D3A31707820736F6C696420236538653865383B6C696E652D6865';
wwv_flow_imp.g_varchar2_table(14) := '696768743A323470783B636F6C6F723A233430343034303B666F6E742D73697A653A313170783B666F6E742D7765696768743A6E6F726D616C3B706F736974696F6E3A72656C61746976657D0D0A7461626C652E617065782D6D696E692D63616C656E64';
wwv_flow_imp.g_varchar2_table(15) := '61722074626F64792074722074643A6C6173742D6368696C647B626F726465722D72696768743A6E6F6E657D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E696E6163746976657B6261636B67726F75';
wwv_flow_imp.g_varchar2_table(16) := '6E642D636F6C6F723A234630463046303B636F6C6F723A234330433043303B666F6E742D7765696768743A6E6F726D616C7D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E7765656B656E647B636F6C';
wwv_flow_imp.g_varchar2_table(17) := '6F723A233730373037303B6261636B67726F756E642D636F6C6F723A234631463446397D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E746F6461797B666F6E742D7765696768743A626F6C647D0D0A';
wwv_flow_imp.g_varchar2_table(18) := '7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074722074642E616374697665207370616E7B646973706C61793A626C6F636B3B6D617267696E3A3370783B666F6E742D73697A653A313170783B6C696E652D686569676874';
wwv_flow_imp.g_varchar2_table(19) := '3A313670783B6261636B67726F756E642D636F6C6F723A234645453439433B626F726465722D7261646975733A3370783B626F726465723A31707820736F6C696420236363623336383B666F6E742D7765696768743A626F6C643B2D7765626B69742D62';
wwv_flow_imp.g_varchar2_table(20) := '6F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365743B2D6D6F7A2D626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365743B';
wwv_flow_imp.g_varchar2_table(21) := '626F782D736861646F773A302031707820302072676261283235352C3235352C3235352C302E36352920696E7365747D0D0A7461626C652E617065782D6D696E692D63616C656E6461722074626F64792074723A6C6173742D6368696C642074647B626F';
wwv_flow_imp.g_varchar2_table(22) := '726465722D626F74746F6D3A6E6F6E657D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(170659035017616687)
,p_plugin_id=>wwv_flow_imp.id(1464834111957493552)
,p_file_name=>'com_oracle_apex_minicalendar.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_sampleappfooter
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1669278648919740860)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_display_name=>'Sample Apps Footer'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.SAMPLEAPPFOOTER'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (   p_region in apex_plugin.t_region,',
'                    p_plugin in apex_plugin.t_plugin,',
'                    p_is_printer_friendly in boolean )',
'        return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<ul class="t-Cards t-Cards--sampleAppsFooter t-Cards--featured force-fa-lg t-Cards--displayIcons t-Cards--hideBody t-Cards--animColorFill">'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/twitter" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-twitter" style="color: #1da1f2"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Twitter</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/linkedin" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-linkedin" style="color: #0077b5"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">LinkedIn</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/facebook" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-facebook" style="color: #3b5998"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Facebook</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/youtube" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-youtube" style="color: red"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">YouTube</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-apex" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">apex.oracle.com</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/community" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-users" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Oracle APEX Community</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://community.oracle.com/tech/developers/categories/1application_express" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-comments-o" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Discussion Forums</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''<li class="t-Cards-item">'');',
'    sys.htp.p(''  <div class="t-Card">'');',
'    sys.htp.p(''    <a href="https://apex.oracle.com/autonomous" target="_blank" class="t-Card-wrap">'');',
'    sys.htp.p(''      <div class="t-Card-icon"><span class="t-Icon fa fa-cloud" style="color: #707070"></span></div>'');',
'    sys.htp.p(''      <div class="t-Card-titleWrap"><h3 class="t-Card-title">Autonomous Database + APEX</h3></div>'');',
'    sys.htp.p(''    </a>'');',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</li>'');',
'    sys.htp.p(''</ul>'');',
'    return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>1660759070362076804
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This region plug-in is used to display a custom footer at the bottom of pages with large icons for navigating to other sites such as twitter and linkedin.</p>',
'<p>Note: This plug-in should be customized to meet your specific requirements, rather than used as is.</p>'))
,p_version_identifier=>'5.0.1'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_timelinestatuslist
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1720588484759341809)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_display_name=>'Timeline and Status List'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TIMELINESTATUSLIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.timelinestatuslist/1.2/')
,p_javascript_file_urls=>'#PLUGIN_FILES#timelinestatuslist#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_list_calendar( p_region in apex_plugin.t_region ) is',
'    c_group_col          constant varchar2(255) := p_region.attribute_01;',
'    c_color_col          constant varchar2(255) := p_region.attribute_02;',
'    c_title_col          constant varchar2(255) := p_region.attribute_03;',
'    c_link_col           constant varchar2(255) := p_region.attribute_04;',
'    c_row1_attr1_val_col constant varchar2(255) := p_region.attribute_05;',
'    c_row1_attr2_val_col constant varchar2(255) := p_region.attribute_06;',
'    c_row2_attr1_val_col constant varchar2(255) := p_region.attribute_07;',
'    c_row2_attr2_val_col constant varchar2(255) := p_region.attribute_08;',
'    c_description_1_col  constant varchar2(255) := p_region.attribute_09;',
'    c_description_2_col  constant varchar2(255) := p_region.attribute_10;',
'    c_description_3_col  constant varchar2(255) := p_region.attribute_11;',
'    c_description_4_col  constant varchar2(255) := p_region.attribute_15;',
'    c_group_type         constant varchar2(255) := p_region.attribute_12;',
'    c_status_col         constant varchar2(255) := p_region.attribute_13;',
'    c_color_label_col    constant varchar2(255) := p_region.attribute_14;',
'',
'    l_group_col_no          pls_integer;',
'    l_color_col_no          pls_integer;',
'    l_title_col_no          pls_integer;',
'    l_link_col_no           pls_integer;',
'    l_row1_attr1_val_col_no pls_integer;',
'    l_row1_attr2_val_col_no pls_integer;',
'    l_row2_attr1_val_col_no pls_integer;',
'    l_row2_attr2_val_col_no pls_integer;',
'    l_description_1_col_no  pls_integer;',
'    l_description_2_col_no  pls_integer;',
'    l_description_3_col_no  pls_integer;',
'    l_description_4_col_no  pls_integer;',
'    l_status_col_no         pls_integer;',
'    l_color_label_col_no    pls_integer;',
'',
'    l_date           timestamp with local time zone;',
'    l_last_day       varchar2(8);',
'    l_group          varchar2(4000);',
'    l_color          varchar2(4000);',
'    l_color_label    varchar2(4000);',
'    l_title          varchar2(4000);',
'    l_link           varchar2(4000);',
'    l_row1_attr1_val varchar2(4000);',
'    l_row1_attr1_lbl varchar2(4000);',
'    l_row1_attr2_val varchar2(4000);',
'    l_row1_attr2_lbl varchar2(4000);',
'    l_row2_attr1_val varchar2(4000);',
'    l_row2_attr1_lbl varchar2(4000);',
'    l_row2_attr2_val varchar2(4000);',
'    l_row2_attr2_lbl varchar2(4000);',
'    l_description_1  varchar2(4000);',
'    l_description_2  varchar2(4000);',
'    l_description_3  varchar2(4000);',
'    l_description_4  varchar2(4000);',
'    l_status         varchar2(4000);',
'',
'    --',
'    l_no_data_found     varchar2(32767) := p_region.no_data_found_message;',
'    l_num_rows          pls_integer     := p_region.fetched_rows;',
'    --',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_region_source        varchar2(32767) := p_region.source;',
'',
'    --',
'    l_last_group  varchar2(255) := ''x'';',
'',
'    l_found boolean;',
'    l_count pls_integer := 0;',
'',
'    type vc2_aat is table of varchar2(32767) index by varchar2(255);',
'    l_colors vc2_aat;',
'    l_color_idx varchar2(255);',
'',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 3,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => null );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_group_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Group column'',',
'                        p_column_alias      => c_group_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => null -- might be date, timestamp, etc.',
'                    );',
'',
'    l_color_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color column'',',
'                        p_column_alias      => c_color_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_color_label_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color Label column'',',
'                        p_column_alias      => c_color_label_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_status_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Status column'',',
'                        p_column_alias      => c_status_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_title_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Title column'',',
'                        p_column_alias      => c_title_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_link_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Link column'',',
'                        p_column_alias      => c_link_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Attribute Value column'',',
'                        p_column_alias      => c_row1_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Attribute Value column'',',
'                        p_column_alias      => c_row1_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Attribute Value column'',',
'                        p_column_alias      => c_row2_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Attribute Value column'',',
'                        p_column_alias      => c_row2_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_1_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Description column'',',
'                        p_column_alias      => c_description_1_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_2_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Description column'',',
'                        p_column_alias      => c_description_2_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_3_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Description column (allows HTML)'',',
'                        p_column_alias      => c_description_3_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_4_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Description column (allows HTML)'',',
'                        p_column_alias      => c_description_4_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    -- Loop through the data',
'    if c_group_type = ''D'' then',
'        sys.htp.p(''<div class="t-StatusList t-StatusList--dates">'');',
'    else',
'        sys.htp.p(''<div class="t-StatusList t-StatusList--bullets">'');',
'    end if;',
'',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        wwv_flow_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => l_row_num );',
'',
'        l_found := true;',
'',
'        if l_group_col_no is not null then',
'            if c_group_type = ''D'' then',
'                if l_column_value_list(l_group_col_no).value_list(l_row_num).date_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).date_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_tz_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_tz_value;',
'                elsif l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_ltz_value is not null then',
'                    l_date := l_column_value_list(l_group_col_no).value_list(l_row_num).timestamp_ltz_value;',
'                else',
'                    -- Couldn''t get a usable date value; ignore this row.',
'                    l_found := false;',
'                end if;',
'            else',
'                l_group := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_group_col_no).data_type,',
'                                p_value     => l_column_value_list(l_group_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'        end if;',
'        if l_found = true and l_count < nvl(l_num_rows,l_count) then',
'            l_count := l_count + 1;',
'            if l_color_col_no is not null then',
'                l_color := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_color_col_no).data_type,',
'                                p_value     => l_column_value_list(l_color_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_color_label_col_no is not null then',
'                l_color_label := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_color_label_col_no).data_type,',
'                                p_value     => l_column_value_list(l_color_label_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_status_col_no is not null then',
'                l_status := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_status_col_no).data_type,',
'                                p_value     => l_column_value_list(l_status_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_title_col_no is not null then',
'                l_title := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_title_col_no).data_type,',
'                                p_value     => l_column_value_list(l_title_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_link_col_no is not null then',
'                l_link := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_link_col_no).data_type,',
'                                p_value     => l_column_value_list(l_link_col_no).value_list(l_row_num) ),',
'                            false );',
'            end if;',
'',
'            if l_row1_attr1_val_col_no is not null then',
'                l_row1_attr1_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row1_attr1_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row1_attr1_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row1_attr1_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row1_attr1_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row1_attr2_val_col_no is not null then',
'                l_row1_attr2_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row1_attr2_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row1_attr2_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row1_attr2_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row1_attr2_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row2_attr1_val_col_no is not null then',
'                l_row2_attr1_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row2_attr1_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row2_attr1_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row2_attr1_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row2_attr1_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_row2_attr2_val_col_no is not null then',
'                l_row2_attr2_lbl := apex_plugin_util.escape(',
'                            p_region.region_columns( l_row2_attr2_val_col_no ).heading,',
'                            p_region.escape_output );',
'                l_row2_attr2_val := apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_row2_attr2_val_col_no).data_type,',
'                                p_value     => l_column_value_list(l_row2_attr2_val_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output );',
'            end if;',
'',
'            if l_description_1_col_no is not null then',
'                l_description_1 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_1_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_1_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output ),0,2000);',
'            end if;',
'',
'            if l_description_2_col_no is not null then',
'                l_description_2 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_2_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_2_col_no).value_list(l_row_num) ),',
'                            p_region.escape_output ),0,2000);',
'            end if;',
'',
'            if l_description_3_col_no is not null then',
'                l_description_3 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_3_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_3_col_no).value_list(l_row_num) ),',
'                            false ),0,2000);',
'            end if;',
'',
'            if l_description_4_col_no is not null then',
'                l_description_4 := substr(apex_plugin_util.escape(',
'                            apex_plugin_util.get_value_as_varchar2(',
'                                p_data_type => l_column_value_list(l_description_4_col_no).data_type,',
'                                p_value     => l_column_value_list(l_description_4_col_no).value_list(l_row_num) ),',
'                            false ),0,2000);',
'            end if;',
'',
'            -- Start of the actual rendering code.',
'            if c_group_type = ''D'' then',
'                if l_last_group != to_char(l_date,''YYYYMM'') then',
'                    l_last_group := to_char(l_date,''YYYYMM'');',
'',
'                    if l_count > 1 then',
'                        -- Not the first row; close the previous group.',
'                        sys.htp.p(''</ul></div>'');',
'                    end if;',
'',
'                    sys.htp.p(''<div class="t-StatusList-block">'');',
'                    sys.htp.p(''<div class="t-StatusList-blockHeader"><span class="t-StatusList-headerTextPrimary">''||trim(to_char(l_date,''Month''))||',
'                        ''</span><span class="t-StatusList-headerTextAlt">''||to_char(l_date,''YYYY'')||''</span></div>'');',
'                    sys.htp.p(''<ul class="t-StatusList-list">'');',
'                end if;',
'            else',
'                if l_last_group != l_group then',
'                    l_last_group := l_group;',
'                    if l_count > 1 then',
'                        -- Not the first row; close the previous group.',
'                        sys.htp.p(''</ul></div>'');',
'                    end if;',
'',
'                    sys.htp.p(''<div class="t-StatusList-block" aria-labelledby="tl_''||trim(l_group)||''">'');',
'                    sys.htp.p(''<div class="t-StatusList-blockHeader" id="tl_''||trim(l_group)||''">''',
'                        ||''<span class="t-StatusList-headerTextPrimary">''||trim(l_group)||''</span></div>'');',
'                    sys.htp.p(''<ul class="t-StatusList-list">'');',
'                end if;',
'            end if;',
'',
'            if l_color_col_no is not null then',
'                -- Limit it down to the colors we support.',
'                l_color := lower(l_color);',
'                if l_color = ''red'' then',
'                    l_color := ''is-danger'';',
'                elsif l_color = ''black'' then',
'                    l_color := ''is-complete'';',
'                elsif l_color = ''blue'' then',
'                    l_color := ''is-info'';',
'                elsif l_color = ''yellow'' then',
'                    l_color := ''is-warning'';',
'                elsif l_color = ''green'' then',
'                    l_color := ''is-success'';',
'                end if;',
'',
'                l_colors(l_color) := l_color_label;',
'            end if;',
'',
'            if c_group_type = ''D'' then',
'                sys.htp.p(''<li class="t-StatusList-item ''||l_color||''" aria-label="''',
'                    ||to_char(l_date,''Month fmDD, YYYY'')||''" aria-describedby="tl_''||to_char(l_date,''DD_MON_YYYY'')||''">''',
'                    ||''<div class="t-StatusList-itemMarker">'');',
'',
'                if l_last_day is null or to_char(l_date,''YYYYMMDD'') != l_last_day',
'                then',
'                    sys.htp.p(''<span class="t-StatusList-marker" role="presentation">''',
'                        ||to_char(l_date,''fmDD'')||''</span>'');',
'                end if;',
'',
'                sys.htp.p(''</div>'');',
'',
'                l_last_day := to_char(l_date, ''YYYYMMDD'');',
'',
'                sys.htp.p(''<div class="t-StatusList-itemBody" id="tl_''||to_char(l_date,''DD_MON_YYYY'')||''_''||l_count||''_''|| p_region.static_id ||''">'');',
'            else',
'                sys.htp.p(''<li class="t-StatusList-item ''||l_color||''" aria-label="''',
'                    ||trim(l_title)||''" aria-describedby="tl_''||trim(l_title)||''">''',
'                    ||''<div class="t-StatusList-itemMarker">''',
'                    ||''<span class="t-StatusList-marker" role="presentation">''',
'                    ||trim(l_title)||''</span></div>'');',
'',
'                sys.htp.p(''<div class="t-StatusList-itemBody" id="tl_''||trim(l_title)||''_''||l_count||''">'');',
'            end if;',
'',
'            sys.htp.p(''<h3 class="t-StatusList-itemTitle">''',
'                ||case when l_link is null then l_title',
'                    else ''<a href="''||apex_util.prepare_url(l_link)||''">''||l_title||''</a>''',
'                    end',
'                ||''</h3>'');',
'',
'            if l_row1_attr1_lbl is not null or l_row1_attr1_val is not null',
'                    or l_row1_attr2_lbl is not null or l_row1_attr2_val is not null then',
'                sys.htp.prn(''<div class="t-StatusList-itemAttrs">'');',
'',
'                if l_status is not null then',
'                    sys.htp.p(''<span class="t-Badge t-Badge--basic t-Badge--xsmall ''',
'                        ||l_color||''">''||l_status||''</span>'');',
'                end if;',
'',
'                if l_row1_attr1_lbl is not null and l_row1_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row1_attr1_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row1_attr1_val||''</span></span>'');',
'                elsif l_row1_attr1_lbl is null and l_row1_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row1_attr1_val||''</span></span>'');',
'                elsif l_row1_attr1_lbl is not null and l_row1_attr1_val is null then',
'                    sys.htp.prn(''<span><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr1.',
'                    null;',
'                end if;',
'',
'                if l_row1_attr2_lbl is not null and l_row1_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row1_attr2_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row1_attr2_val||''</span></span>'');',
'                elsif l_row1_attr2_lbl is null and l_row1_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row1_attr2_val||''</span></span>'');',
'                elsif l_row1_attr2_lbl is not null and l_row1_attr2_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr2.',
'                    null;',
'                end if;',
'                -- sys.htp.prn(''</div>'');',
'            end if;',
'',
'            if l_row2_attr1_lbl is not null or l_row2_attr1_val is not null',
'                    or l_row2_attr2_lbl is not null or l_row2_attr2_val is not null then',
'                -- sys.htp.prn(''<p>'');',
'                if l_row2_attr1_lbl is not null and l_row2_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row2_attr1_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row2_attr1_val||''</span></span>'');',
'                elsif l_row2_attr1_lbl is null and l_row2_attr1_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row2_attr1_val||''</span></span>'');',
'                elsif l_row2_attr1_lbl is not null and l_row2_attr1_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr3.',
'                    null;',
'                end if;',
'',
'                if l_row2_attr2_lbl is not null and l_row2_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel">''||l_row2_attr2_lbl||''</span> ''',
'                        ||''<span class="t-StatusList-attrValue">''||l_row2_attr2_val||''</span></span>'');',
'                elsif l_row2_attr2_lbl is null and l_row2_attr2_val is not null then',
'                    sys.htp.prn(''<span class="t-StatusList-attrValue">''||l_row2_attr2_val||''</span></span>'');',
'                elsif l_row2_attr2_lbl is not null and l_row2_attr2_val is null then',
'                    sys.htp.prn(''<span class="t-StatusList-attr"><span class="t-StatusList-attrLabel"></span></span>'');',
'                else',
'                    -- No attr4.',
'                    null;',
'                end if;',
'                sys.htp.prn(''</div>'');',
'            end if;',
'',
'            if l_description_1 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_1||''</p>'');',
'            end if;',
'',
'            if l_description_2 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_2||''</p>'');',
'            end if;',
'',
'            if l_description_3 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_3||''</p>'');',
'            end if;',
'',
'            if l_description_4 is not null then',
'                sys.htp.prn(''<p class="t-StatusList-textDesc">''||l_description_4||''</p>'');',
'            end if;',
'',
'            sys.htp.prn(''</div></li>'');',
'        end if;',
'    end loop;',
'    if l_count > 0 then',
'        -- Close the HTML.',
'        sys.htp.p(''</ul></div>'');',
'',
'        -- Print Legend',
'        if l_color_label_col_no is not null then',
'            sys.htp.p(''<div class="t-StatusList-legend" style="padding: 8px; border-top: 1px solid rgba(0,0,0,.05); font-size: 11px;">'');',
'            sys.htp.p(''  <strong>Status Color Coding:</strong>'');',
'            l_color_idx := l_colors.first;',
'            while l_color_idx is not null loop',
'                if l_colors(l_color_idx) is not null then',
'                    sys.htp.p(''  <span class="t-Badge t-Badge--basic t-Badge--small ''||apex_escape.html(p_string => l_color_idx)||''">''||apex_escape.html(p_string => l_colors(l_color_idx))||''</span>'');',
'                end if;',
'                l_color_idx := l_colors.next( l_color_idx );',
'            end loop;',
'            sys.htp.p(''</div>'');',
'        end if;',
'    else',
'        sys.htp.p(''<span class="nodatafound">''||l_no_data_found||''</span>'');',
'    end if;',
'    sys.htp.p(''</div>'');',
'end render_list_calendar;',
'',
'function render ( p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin, p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    sys.htp.p(''<div id="'' || p_region.static_id || ''_inner">'');',
'    render_list_calendar( p_region );',
'    sys.htp.p(''</div>'');',
'    ',
'    /* ',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function( apex, util, server, $ ){',
'  window.com_oracle_apex_timeline_status_list = function( regionId, details ) {',
'    function _clear() {',
'      _inner$.empty();',
'    }',
'    function _render( markup ) {',
'      _inner$.html( markup );',
'    }',
'    function _debug( error ) {',
'            if ( error.status >= 200 && error.status < 300 ) {',
'                _render( error.responseText );',
'            } else {',
'                debugger;',
'            }',
'    }',
'    function _refresh() {',
'      server.plugin( details.ajaxIdentifier, { pageItems : details.pageItems }, {',
'        refreshObject : _region$,',
'        clear : _clear,',
'        success : _render,',
'        error : _debug,',
'        loadingIndicator : _inner$,',
'        loadingIndicatorPosition : "append"',
'      });',
'    }',
'',
'    var _region$ = $( "#" + regionId );',
'        var _inner$ = $( "#" + details.innerRegionId );',
'    _region$.on( "apexrefresh", _refresh );',
'  }',
'})( apex, apex.util, apex.server, apex.jQuery );''',
'    );',
'    */',
'    ',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_timeline_status_list('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''innerRegionId'',  p_region.static_id || ''_inner'' ) ||',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''});})()'' );',
'    return null;',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin )',
'    return apex_plugin.t_region_ajax_result is',
'begin',
'    render_list_calendar( p_region );',
'    return null;',
'end ajax;'))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT:COLUMNS:COLUMN_HEADING'
,p_substitute_attributes=>true
,p_reference_id=>9646339904178755041
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Timeline and Status lists are useful for displaying a region with calendar dates and summary information. </p>',
'<p>This plug-in is suitable for adding to Master / Detail pages to show important summary information with dates.</p>'))
,p_version_identifier=>'5.1'
);
end;
/
begin
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149496791512547238)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Group By Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:TIMESTAMP:TIMESTAMP_TZ:TIMESTAMP_LTZ'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the column the report will be grouped by.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149497181263547239)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>120
,p_prompt=>'Color Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the color for the list.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149497646868547239)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Title Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the title for each grouping.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149498046825547239)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the link for each record.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149498418056547239)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'First Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the first value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149498765760547239)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Second Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the second value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149499168755547240)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Third Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the third value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149499648301547240)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Fourth Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the fourth value to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149499990346547240)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Primary Description'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the primary description to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149500440676547240)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Secondary Description'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the secondary description to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149500768021547240)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Additional Description (with HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds an additional description to be displayed in the report, which allows HTML content.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149501198671547240)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>5
,p_prompt=>'Display As'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the region should be displayed as a timeline, based on a given date, or a list.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(149501584168547241)
,p_plugin_attribute_id=>wwv_flow_imp.id(149501198671547240)
,p_display_sequence=>10
,p_display_value=>'Timeline'
,p_return_value=>'D'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(149502067144547241)
,p_plugin_attribute_id=>wwv_flow_imp.id(149501198671547240)
,p_display_sequence=>20
,p_display_value=>'Status List'
,p_return_value=>'L'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149502567998547241)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>20
,p_prompt=>'Status Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the status to be displayed in the report.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149503025168547241)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Color Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(149497181263547239)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(149503373620547242)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>115
,p_prompt=>'Second Additional Description (with HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_is_common=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds an additional description to be displayed in the report, which allows HTML content.'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(149504675926547243)
,p_plugin_id=>wwv_flow_imp.id(1720588484759341809)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>3
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Sample Calendar'
,p_alias=>'HOME'
,p_step_title=>'&APP_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'13'
,p_last_updated_by=>'HILARY'
,p_last_upd_yyyymmddhh24miss=>'20210309053857'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1305514111161098272)
,p_plug_name=>'About this application'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Oracle Application Express (APEX) has an integrated calendaring component.  This application demonstrates how this component can be used and also shows Oracle APEX plugins which can display calendars useful in some applications.  Calendars in Orac'
||'le Application Express (APEX) are based on data obtained from SQL queries.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1669278859055746608)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>60
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2131319247837190401)
,p_plug_name=>'&APP_NAME.'
,p_icon_css_classes=>'app-sample-calendar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705152875674465541)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Demonstrations of calendars in Oracle APEX</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2583905831676172614)
,p_plug_name=>'Calendar Examples'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--displayIcons:t-Cards--3cols:t-Cards--desc-4ln:u-colors:t-Cards--animColorFill'
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_imp.id(2583904737050172610)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705172217205465587)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Edit Calendar Entry'
,p_alias=>'EDIT-CALENDAR-ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Calendar Entry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(1705134347670465481)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223050845'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790297364918220801)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2578388916970337417)
,p_plug_name=>'Edit Calendar Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2578389130295337418)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(790297364918220801)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3287647828441409946)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(790297364918220801)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2578389313499337418)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(790297364918220801)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P3_LASTVIEW.:&SESSION.::&DEBUG.:&P3_LASTVIEW.::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1633412947874803645)
,p_name=>'P3_LASTVIEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2578389733491337425)
,p_name=>'P3_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2578389913347337436)
,p_name=>'P3_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2578390138066337439)
,p_name=>'P3_END_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_date(:"P3_END_DATE_TMP",''RRRRMMDDHH24MISS'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2592984816559462959)
,p_name=>'P3_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_date(:"P3_END_DATE_TMP",''RRRRMMDDHH24MISS'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3287646822481152756)
,p_name=>'P3_END_DATE_TMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_format_mask=>'RRRRMMDDHH24MISS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3287649243257508819)
,p_name=>'P3_PROJECT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a Project'
,p_cHeight=>1
,p_display_when=>'P3_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3287650025558551078)
,p_name=>'P3_STATUS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2578388916970337417)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'VALID STATUS CODES'
,p_lov=>'.'||wwv_flow_imp.id(2659266423496959720)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select a Status'
,p_cHeight=>1
,p_display_when=>'P3_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1899710803432878045)
,p_validation_name=>'End Date later than start date'
,p_validation_sequence=>10
,p_validation=>'to_date(:P3_START_DATE,''DD-MON-YYYY'') <= to_date(:P3_END_DATE, ''DD-MON-YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'End date must be later than the start date.'
,p_associated_item=>wwv_flow_imp.id(2578390138066337439)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284935521003019994)
,p_name=>'Update End Date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_START_DATE'
,p_condition_element=>'P3_END_DATE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284935811208020014)
,p_event_id=>wwv_flow_imp.id(3284935521003019994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v("P3_START_DATE")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2578390738650337442)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P3_ID'
,p_attribute_11=>'I:U:D'
,p_return_key_into_item1=>'P3_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2578390929261337443)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P3_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_return_key_into_item1=>'P3_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(790297447575220802)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_tab_set=>'TS1'
,p_name=>'Time Line'
,p_alias=>'TIME-LINE'
,p_step_title=>'Time Line'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div.ebaTimeline{border-bottom:1px solid #DDD;clear:both;position:relative;}',
'div.ebaTimeline:last-child{border-bottom:none;}',
'div.ebaTimeline h3{font:bold 11px/12px Arial,sans-serif;margin:0;padding:9px 10px;width:80px;color:#333;position:absolute;top:0;left:0;}',
'div.ebaTimeline h3 + ul{margin:0;list-style:none;padding:0;margin:0 0 0 80px;}',
'div.ebaTimeline ul li{display:table;width:100%;position:relative;}',
'div.ebaTimeline ul.ebaNoHover li:hover span.eS,',
'div.ebaTimeline ul.ebaNoHover li:hover span.eL{background:transparent;}',
'div.ebaTimeline ul li:hover span.eS{background-color:#F8F8F8;}',
'div.ebaTimeline ul li:hover span.eL{background:#F8F8F8;}',
'div.ebaTimeline ul li:hover span.eL a.eN span{text-decoration:underline;}',
'div.ebaTimeline ul li span.eD,',
'div.ebaTimeline ul li span.eS,',
'div.ebaTimeline ul li span.eL{display:table-cell;vertical-align:top;}',
'div.ebaTimeline ul li span.eD{width:20px;padding:0 10px 0 0;font:normal 11px/30px Arial,sans-serif;border-right:1px solid #EEE;text-align:right;color:#666;}',
'div.ebaTimeline ul li span.eS{padding:5px;width:20px;border-bottom:1px dotted #EEE;;}',
'div.ebaTimeline ul li:last-child span.eS,',
'div.ebaTimeline ul li:last-child span.eL{border-bottom:none;}',
'div.ebaTimeline ul li span.eS span{display:block;width:12px;height:12px;border-radius:10px;-moz-border-radius:10px;-webkit-box-shadow:0 1px 1px rgba(255,255,255,.75),0 0 2px rgba(0,0,0,.5) inset;-moz-box-shadow:0 1px 1px rgba(255,255,255,.75),0 0 2px'
||' rgba(0,0,0,.5) inset;box-shadow:0 1px 1px rgba(255,255,255,.75),0 0 2px rgba(0,0,0,.5) inset;background:-webkit-gradient(linear,0 0,0 100%,from(transparent),to(rgba(0,0,0,.25)));background:-moz-linear-gradient(top,transparent,rgba(0,0,0,.25));margin'
||':4px;}',
'div.ebaTimeline ul li span.eS span.ebaRed{background-color:#F00;}',
'div.ebaTimeline ul li span.eS span.ebaYellow{background-color:#FCE709;}',
'div.ebaTimeline ul li span.eS span.ebaGreen{background-color:#22C615;}',
'div.ebaTimeline ul li span.eS span.ebaBlack{background-color:#444;}',
'div.ebaTimeline ul li span.eS span.ebaNull{background-color:#CCC;}',
'div.ebaTimeline ul li span.eL{border-bottom:1px dotted #EEE;}',
'div.ebaTimeline ul li a.eN{display:block;padding:7px 0;text-decoration:none;}',
'div.ebaTimeline ul li a.eN span{display:block;font:bold 12px/16px Arial,sans-serif;color:#333;}',
'div.ebaTimeline ul li a.eN em,',
'div.ebaTimeline ul li span.eL em{display:block;font:normal 11px/16px Arial,sans-serif;color:#666;}',
'div.ebaTimeline ul li a.ebaEditLink{position:absolute;right:0;top:0;display:block;margin:7px 7px 0 0;font:normal 11px/12px Arial,sans-serif;text-decoration:none;color:#666;padding:2px 10px;border-radius:4px;-moz-border-radius:4px;border:1px solid #EE'
||'E;-webkit-transition:background .2s linear,border .2s linear,color .2s linear;}',
'div.ebaTimeline ul li a.ebaEditLink:hover{border:1px solid #BBB;background:#FFF;color:#333;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1307578237221731367)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page uses an Oracle Application Express (APEX) plugin region to display this custom hand crafted timeline. The HTML is generated in a PL/SQL function and is displayed using the PL/SQL web toolkit via the <strong>HTP</strong> package.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1633411020667803625)
,p_plug_name=>'Project Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    ''#''         the_link,',
'    null color,',
'    project,',
'    task_name   primary_label,',
'    status,',
'    assigned_to,',
'    cost,',
'    end_date',
'from eba_demo_cal_projects',
'where (nvl(:P4_PROJECTS,''0'') = ''0'' or project = :P4_PROJECTS)',
'order by end_date'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'END_DATE'
,p_attribute_03=>'PRIMARY_LABEL'
,p_attribute_04=>'THE_LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'ASSIGNED_TO'
,p_attribute_07=>'COST'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633411129593803626)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'ID'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633411149229803627)
,p_name=>'THE_LINK'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'THE_LINK'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'The link'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633411332204803629)
,p_name=>'PRIMARY_LABEL'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'PRIMARY_LABEL'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Primary label'
,p_display_sequence=>50
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633411722787803632)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'COST'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Cost'
,p_display_sequence=>80
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633411798961803633)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'END_DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'End date'
,p_display_sequence=>90
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633412220649803637)
,p_name=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'PROJECT'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633412318815803638)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'STATUS'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>60
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633412362446803639)
,p_name=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'ASSIGNED_TO'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Assigned to'
,p_display_sequence=>70
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1633412497599803640)
,p_name=>'COLOR'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'COLOR'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2578802437764420997)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2585290829282359556)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>40
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2589001713453837531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2578802437764420997)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2585291013702359558)
,p_name=>'P4_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2585290829282359556)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_tab_set=>'TS1'
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_navigation_list_position=>'TOP'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081840'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2591525443305259796)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3179639835287551598)
,p_plug_name=>'Manage Sample Data'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(1705144983076465509)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Click the Reset Data button to reset data used by the department and employee tables to their initial defaults. Click the View Report button to see the data used for this application in a report.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2134511949312242911)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(3179639835287551598)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2593520717692520109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2134511949312242911)
,p_button_name=>'VIEW_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'View Report'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2591591613809263441)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2134511949312242911)
,p_button_name=>'RESET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3281032725911744876)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2134511949312242911)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2591650331124268436)
,p_branch_name=>'Go Back To Admin'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 01-DEC-2011 11:26 by MIKE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2591611619003265001)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  EBA_DEMO_CAL_DATA;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2591591613809263441)
,p_process_success_message=>'Data Reset'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_tab_set=>'TS1'
,p_name=>'Report'
,p_alias=>'REPORT'
,p_step_title=>'Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2593137116514479714)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2593137528893479717)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705155908534465545)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 "ID",',
'	 "PROJECT",',
'	 "TASK_NAME",',
'	 "START_DATE",',
'	 "END_DATE",',
'	 "STATUS",',
'	 "ASSIGNED_TO",',
'	 "COST",',
'	 "BUDGET",',
'	 "ROW_VERSION_NUMBER" ',
' from	 "EBA_DEMO_CAL_PROJECTS"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2593137611202479717)
,p_name=>'Report'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_owner=>'MIKE'
,p_internal_uid=>1942696500298079223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593137820757479721)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593137919454479723)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138015604479723)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138114330479723)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138237816479723)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138328189479723)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138433730479723)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138515718479723)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138637483479723)
,p_db_column_name=>'BUDGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2593138722939479723)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2593146642317479878)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'19427056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2593601237431525799)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2593137528893479717)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180225400465622)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,RIR,CIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Application Theme Style'
,p_alias=>'APPLICATION-THEME-STYLE'
,p_step_title=>'Application Theme Style'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(661777835643875400)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
,p_last_updated_by=>'ANTHONY'
,p_last_upd_yyyymmddhh24miss=>'20210225130547'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1870085450434851817)
,p_plug_name=>'Set User Interface Theme Style'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1870085851736851817)
,p_plug_name=>'About this page'
,p_parent_plug_id=>wwv_flow_imp.id(1870085450434851817)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<br><p>Select the look and feel of the application you would like to use as default for all users of this application.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1870086263258851818)
,p_plug_name=>'items'
,p_parent_plug_id=>wwv_flow_imp.id(1870085450434851817)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1870089281810851821)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1870087457628851819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1870089281810851821)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1870087875510851820)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1870089281810851821)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1870090351069851824)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1870087875510851820)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(978897702817058103)
,p_name=>'P8_ENABLE_USER_STYLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1870086263258851818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End users can choose Theme Styles'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1870086692257851818)
,p_name=>'P8_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1870086263258851818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'          s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1870089838773851822)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P8_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_theme.set_current_style (',
'            p_theme_number  => c1.theme_number,',
'            p_id => :P8_DESKTOP_THEME_STYLE_ID',
'            );',
'        if :P8_ENABLE_USER_STYLE = ''Y'' then ',
'            apex_theme.enable_user_style (',
'                p_theme_number  => c1.theme_number',
'                );',
'        else ',
'            apex_theme.disable_user_style (',
'                p_theme_number  => c1.theme_number',
'                );',
'        end if;    ',
'',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1870087875510851820)
,p_process_success_message=>'Theme Style Set for All Users.'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_tab_set=>'TS1'
,p_name=>'Date Reporting'
,p_alias=>'DATE-REPORTING'
,p_step_title=>'Date Reporting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1307583223771831550)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This page uses an Oracle Application Express (APEX) interactive report and highlights some data format masks.  The <strong>End Date (Formatted)</strong> report column uses a <strong>Day Month DD, YYYY</strong> format mask.  The <strong>SINCE</stro'
||'ng> report column format mask displays the time elapsed or before the current time in the format X seconds / minutes / hours or days ago.  The <strong>SINCE</strong> format mask is specific to Oracle APEX, however the other data formats are standard '
||'Oracle data format masks.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2194945620529696408)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1328264320137414184)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(2194945620529696408)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1705153336283465542)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'date_reporting'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658859912033896726)
,p_plug_name=>'Date Reporting'
,p_region_name=>'date_reporting'
,p_parent_plug_id=>wwv_flow_imp.id(2194945620529696408)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(1705155908534465545)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    row_version_number,',
'    project,',
'    task_name,',
'    start_date,',
'    end_date,',
'    end_date end_date2,',
'    end_date end_date3,',
'    status,',
'    assigned_to,',
'    cost,',
'    budget',
'from eba_demo_cal_projects'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2658860126752896727)
,p_name=>'Project Due Dates'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>2008419015848496233
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860222457896733)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860312715896734)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860438198896734)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860525207896735)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860619645896735)
,p_db_column_name=>'START_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860735097896735)
,p_db_column_name=>'END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'End Date (default)'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860833469896736)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658860923062896736)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658861025110896736)
,p_db_column_name=>'COST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658861124431896736)
,p_db_column_name=>'BUDGET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658942123533912398)
,p_db_column_name=>'END_DATE2'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'End Date (Formatted)'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Day Month DD, YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2658942234944912399)
,p_db_column_name=>'END_DATE3'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'End Date (Since)'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2658866135738896957)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'20084251'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'PROJECT:TASK_NAME:END_DATE:END_DATE2:END_DATE3:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658861438165896737)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2659113025527931867)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2658861438165896737)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_button_image_alt=>'Reset'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658861343295896736)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2658861438165896737)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Project'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-plus'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Project Detail'
,p_alias=>'PROJECT-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(1705143873782465507)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1633412737531803643)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2658854417402896687)
,p_plug_name=>'Project Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658854842683896688)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1633412737531803643)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658854740083896688)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1633412737531803643)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658854616666896688)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1633412737531803643)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2658855021733896688)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1633412737531803643)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2658855942291896701)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658856115213896702)
,p_name=>'P10_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658856331879896704)
,p_name=>'P10_PROJECT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658856541595896705)
,p_name=>'P10_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658856726941896706)
,p_name=>'P10_START_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658856933270896706)
,p_name=>'P10_END_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658857139639896706)
,p_name=>'P10_STATUS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'VALID STATUS CODES'
,p_lov=>'.'||wwv_flow_imp.id(2659266423496959720)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Status -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658857341283896706)
,p_name=>'P10_ASSIGNED_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658857542471896706)
,p_name=>'P10_COST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2658857714890896708)
,p_name=>'P10_BUDGET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2658854417402896687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237032883214782515)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2658855021733896688)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237033003293782516)
,p_event_id=>wwv_flow_imp.id(237032883214782515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2658858921555896715)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2658859118749896717)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2658859341573896718)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2658854842683896688)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_tab_set=>'TS1'
,p_name=>'Help'
,p_alias=>'HELP'
,p_step_title=>'Help'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div.helpContainer{width:960px;margin:16px auto;zoom:1}',
'div.helpContainer:before,div.helpContainer:after{content:"\0020";display:block;height:0;overflow:hidden}',
'div.helpContainer:after{clear:both}',
'div.helpContainer div.helpSide{float:left;width:300px}',
'div.helpContainer div.helpSide h1.appNameHeader{position:relative;font:bold 22px/36px Arial,sans-serif;color:#404040;padding:0;margin:0}',
'div.helpContainer div.helpSide h1.appNameHeader img{display:block;position:absolute;left:0;top:0}',
'div.helpContainer div.helpMain{float:right;border-left:1px solid #EEE;width:632px;padding-left:16px}',
'div.helpContainer div.helpMain h2{font:bold 20px/32px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h3{font:bold 16px/24px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h4{font:bold 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain p{font:normal 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain ul{list-style:outside disc;margin:0 0 0 24px}',
'div.helpContainer div.helpMain ul li{font:normal 12px/20px Arial,sans-serif;color:#404040}',
'div.helpContainer div.helpMain .aboutApp,div.helpContainer div.helpMain .textRegion{border-bottom:1px solid #EEE;padding-bottom:16px;margin-bottom:16px}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2056839336933867729)
,p_name=>'&APP_NAME.'
,p_template=>wwv_flow_imp.id(1705152875674465541)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'t-HeroRegion--featured'
,p_icon_css_classes=>'app-sample-calendar'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.version app_version,',
'       to_char(aa.pages,''999G999G990'') pages,',
'       ''Oracle'' vendor',
'from apex_applications aa',
'where aa.application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(1705168775511465578)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2056839508500867730)
,p_query_column_id=>1
,p_column_alias=>'APP_VERSION'
,p_column_display_sequence=>1
,p_column_heading=>'App version'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2056839625132867731)
,p_query_column_id=>2
,p_column_alias=>'PAGES'
,p_column_display_sequence=>2
,p_column_heading=>'Pages'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2056839667813867732)
,p_query_column_id=>3
,p_column_alias=>'VENDOR'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248312820030407348)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248313212824407352)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_imp.id(3248312820030407348)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Express Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248313441326407357)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_imp.id(3248312820030407348)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'<ul>',
'<li>Standard Calendars</li>',
'<ul>',
'<li>SQL Query Driven</li>',
'<li>Monthly, Weekly, Daily, and List Views</li>',
'<li>Drag and Drop</li>',
'<li>Template Driven</li>',
'<li>Easy to use Wizard to Create</li>',
'</ul>',
'<li>Calendars and Dynamic Actions</li>',
'<ul>',
'<li>Synchronize Calendar with a Report</li>',
'<li>Create new events by selecting a date range</li>',
'<li>Change or copy events with a mouse click</li>',
'</ul>',
'<li>Calendars and Javascript</li>',
'<ul>',
'<li>Control your calendar with APEX components</li>',
'<li>Query current Calendar view </li>',
'<li>Create calendar events with Javascript</li>',
'</ul>',
'',
'<li>Calendar Styling</li>',
'<ul>',
'<li>Use your own CSS classes</li>',
'<li>Add Icons to your calendar events</li>',
'</ul>',
'</ul>',
'</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248313619657407357)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_imp.id(3248312820030407348)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>This application highlights the native calendaring capabilities of Oracle Application Express. It features the CSS Calendar component which provides monthly, weekly or daily calendars with stylized tasks. The dates can be changed using forms, dial'
||'ogs or drag and drop, which is all declarative and easily created using native Application Express wizards. Advanced developers can use custom Javascript code and the FullCalendar API to fully exploit all calendar capabilities.</p><p>',
'',
'Use this application to familiarize yourself with the Calendar component, the combination with Dynamic Actions or how to apply custom Javascript code. </p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248314233664407359)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_tab_set=>'TS1'
,p_name=>'Report'
,p_alias=>'REPORT2'
,p_step_title=>'Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(1705141898081465498)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_upd_yyyymmddhh24miss=>'20200116130642'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311246417860094655)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705155908534465545)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    project,',
'    task_name,',
'    start_date,',
'    end_date,',
'    status,',
'    assigned_to,',
'    cost,',
'    budget',
'from eba_demo_cal_projects'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1311246631267094655)
,p_name=>'Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>660805520362694161
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311246738491094658)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311246837198094660)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311246943228094660)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_ID:#ID#'
,p_column_linktext=>'#TASK_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311247025446094660)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311247128104094660)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311247243198094660)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311247334524094661)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311247429712094661)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1311247519558094661)
,p_db_column_name=>'BUDGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1311254734515096286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6608137'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TASK_NAME:PROJECT:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311248024556094664)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311588322750168576)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>To view the mini calendar click on a task name.  This will display a form page with mini calendars in the side bar.  Mini Calendars are implemented using Oracle Application Express (APEX) plugins.  Oracle APEX region plugins allow APEX developers '
||'to extend the APEX application builder with custom solutions not currently available in Oracle APEX.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1311885816610223601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1311246417860094655)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180225400465622)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_tab_set=>'TS1'
,p_name=>'&P14_PROJECT.'
,p_alias=>'P14-PROJECT'
,p_step_title=>'&P14_PROJECT.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(1705129507270465472)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311241623347094631)
,p_plug_name=>'Project Details'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin: 8px;"'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311248330539094664)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1311912039213286873)
,p_plug_name=>'Hidden Items'
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1464837925531502441)
,p_plug_name=>'Start Date'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'select start_date, ''Start Date'' lbl from EBA_DEMO_CAL_PROJECTS where id = :P14_ID'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'LBL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1464838113023508227)
,p_plug_name=>'End Date'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'select END_DATE, ''End Date'' lbl from EBA_DEMO_CAL_PROJECTS where id = :P14_ID'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'END_DATE'
,p_attribute_02=>'LBL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1311242138222094632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1311248330539094664)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1311242441428094632)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311242612951094633)
,p_name=>'P14_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1311912039213286873)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311242837290094643)
,p_name=>'P14_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311243028328094643)
,p_name=>'P14_TASK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1311912039213286873)
,p_use_cache_before_default=>'NO'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311243231447094643)
,p_name=>'P14_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311243440228094644)
,p_name=>'P14_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311243620427094644)
,p_name=>'P14_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311243828023094644)
,p_name=>'P14_ASSIGNED_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311244027894094644)
,p_name=>'P14_COST'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1311244214816094645)
,p_name=>'P14_BUDGET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1311241623347094631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1311245611295094647)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1311245815713094647)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1311245432909094646)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_PROJECTS'
,p_attribute_02=>'EBA_DEMO_CAL_PROJECTS'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1870569548300336061)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(1870571412415336074)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1870570788682336069)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Standard Calendars'
,p_alias=>'STANDARD-CALENDARS'
,p_step_title=>'Standard Calendars'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790299074406220818)
,p_plug_name=>'Breakcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2650385566195531715)
,p_plug_name=>'Standard Calendars'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(790336059640626988)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Monthly Calendar: Projects'
,p_alias=>'MONTHLY-CALENDAR-PROJECTS'
,p_step_title=>'Monthly Calendar: Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080701'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790297817041220805)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2484380247536215408)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is a standard Oracle Application Express (APEX) calendar region component built using the create calendar region wizard. A <strong>Button Bar</strong> region was also created and a <strong>P31_PROJECTS</strong> page item to allow for filterin'
||'g by project. Click on a calendar event to open a dialog which allows you to change details.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2484381379346215414)
,p_plug_name=>'Tasks'
,p_region_name=>'task_due_dates'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P31_PROJECTS,''0'') = ''0'' or project = :P31_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P31_PROJECTS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (p) {',
' p.endDateExclusive = false;',
'}'))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'3'
,p_attribute_22=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2484383350768215498)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786443396762486992)
,p_name=>'P31_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2484383350768215498)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_template_options=>'#DEFAULT#:margin-bottom-md'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786445522023486995)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786445997027486996)
,p_event_id=>wwv_flow_imp.id(786445522023486995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2484381379346215414)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790297601661220803)
,p_name=>'Dialog closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2484381379346215414)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790297676122220804)
,p_event_id=>wwv_flow_imp.id(790297601661220803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2484381379346215414)
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Week Calendar: Conference'
,p_alias=>'WEEK-CALENDAR-CONFERENCE'
,p_step_title=>'Week Calendar: Conference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080313'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790297864341220806)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2475003287234493638)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This suits well to display conference or similar schedules.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2475004419044493644)
,p_plug_name=>'Sessions'
,p_region_name=>'task_due_dates'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(777068801532765291)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(777069264511765296)
,p_event_id=>wwv_flow_imp.id(777068801532765291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2475004419044493644)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Weekly Calendar: Edit Sessions'
,p_alias=>'WEEKLY-CALENDAR-EDIT-SESSIONS'
,p_step_title=>'Weekly Calendar: Edit Sessions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080630'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(776577905361911927)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790297997263220807)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248142089619128788)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This suits well to display conference or similar schedules. In this example you can select existing events'
||' to edit and date ranges in the calendar to create new events.</p>',
'<p>To have the edit dialog open upon clicking an existing event, navigate to the calendar components <b>Edit Link</b> attribute. Fill out the dialog to navigate to an application page containing the edit form and make sure to pass a primary key (whic'
||'h must be returned by your SQL query).</p>',
'<p>To have the edit dialog open upon selecting an empty date range (in order to create a new event), navigate to the calendar attribute <b>Create Link</b>. Fill out the dialog to navigate to the form page. The selected start and end timestamps must b'
||'e passed to the form using the substitutions <b>&amp;APEX$NEW_START_DATE.</b> and <b>&amp;APEX$NEW_END_DATE.</b>.'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248143221429128794)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P33_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P33_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_05=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.'
,p_attribute_06=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP,301:P301_START_DATE,P301_END_DATE:&APEX$NEW_START_DATE.,&APEX$NEW_END_DATE.'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(776577940963911928)
,p_name=>'P33_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(776577905361911927)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(776577642390911925)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3248143221429128794)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776577780334911926)
,p_event_id=>wwv_flow_imp.id(776577642390911925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3248143221429128794)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(776578119686911929)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776578208370911930)
,p_event_id=>wwv_flow_imp.id(776578119686911929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3248143221429128794)
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Weekly Calendar: Drag & Drop'
,p_alias=>'WEEKLY-CALENDAR-DRAG-DROP'
,p_step_title=>'Weekly Calendar: Drag & Drop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080434'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298040783220808)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1552443131638729991)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4024007315895946852)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This suits well to display conference or similar schedules. On this page, you can change the start and end'
||' timestamps for the individual sessions by dragging them around.</p>',
'<p>Calendar drag and drop can be enabled using the component attribute <b>Drag and Drop</b>. Your SQL query <i>must</i> select a primary key column and you must have set the <b>Primary Key Column</b> calendar attribute. Then enter the PL/SQL code to '
||'update the event row in the database in the <b>Drag and Drop PL/SQL Code</b> attribute. That PL/SQL code typically performs a SQL update on the database table - the bind variables <b>:APEX$PK_VALUE.</b>, <b>:APEX$NEW_START_DATE</b> and <b>:APEX$NEW_E'
||'ND_DATE</b> contain the dragged events primary key value as well as the new start and new end timestamp.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4024008447705946858)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P34_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P34_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_06=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP,301:P301_START_DATE,P301_END_DATE:&APEX$NEW_START_DATE.,&APEX$NEW_END_DATE.'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update eba_demo_cal_sessions',
'       set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
'           end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
'     where id = :APEX$PK_VALUE;',
'end;'))
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786385410090236495)
,p_name=>'P34_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1552443131638729991)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786386619055236497)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4024008447705946858)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786387101963236498)
,p_event_id=>wwv_flow_imp.id(786386619055236497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4024008447705946858)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786387459108236499)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786388027918236499)
,p_event_id=>wwv_flow_imp.id(786387459108236499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4024008447705946858)
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'Weekly Calendar: Time format'
,p_alias=>'WEEKLY-CALENDAR-TIME-FORMAT'
,p_step_title=>'Weekly Calendar 12h/24h'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080556'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(786457473058558245)
,p_plug_name=>'Sessions (12h)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'12'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'12'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(786457601175558246)
,p_plug_name=>'Sessions (24h)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'24'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298185178220809)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2332191717509306106)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4803755901766522967)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This page allows to choose the time format (12h, 24h) which is being used to display the time component of'
||' an event timestamp. </p>',
'<p>Note the <b>Time Format</b> attribute of the calendar component. It can be set to <b>Default</b> which chooses the time format based on the current locale (e.g. 12h for the US, 24h for Germany). <b>12 hour</b> or <b>24 hour</b> force the chosen fo'
||'rmat independenly from the current locale.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4803757033576522973)
,p_plug_name=>'Sessions (default)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'default'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786457639603558247)
,p_name=>'P35_SHOW_TIME_FORMAT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2332191717509306106)
,p_item_default=>'default'
,p_prompt=>'Time format'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Default (based on NLS);default,12 hour;12,24 hour;24'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(790268630825994580)
,p_name=>'P35_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2332191717509306106)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790270676994994616)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790271207902994617)
,p_event_id=>wwv_flow_imp.id(790270676994994616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4803757033576522973)
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Faceted Search: Projects'
,p_alias=>'FACETED-SEARCH-PROJECTS'
,p_step_title=>'Faceted Search: Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080459'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(617186449137298659)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(3093555296561772868)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1399471734256778259)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3093554164751772862)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is a standard Oracle Application Express (APEX) Calendar region component built using the create calendar region wizard. Additionally a Faceted Search region was added to enable rich search capabilities of the calendar region. Click on a cale'
||'ndar event to open a dialog which allows you to change details.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3093555296561772868)
,p_plug_name=>'Tasks'
,p_region_name=>'task_due_dates'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'order by end_date'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (p) {',
' p.endDateExclusive = false;',
'}'))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'3'
,p_attribute_22=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617186533676298660)
,p_name=>'P36_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(617186449137298659)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(617186651351298661)
,p_name=>'P36_PROJECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(617186449137298659)
,p_prompt=>'Project'
,p_source=>'PROJECT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(617183974916296606)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(617184475019296608)
,p_event_id=>wwv_flow_imp.id(617183974916296606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3093555296561772868)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(617184869719296609)
,p_name=>'Dialog closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3093555296561772868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(617185420594296609)
,p_event_id=>wwv_flow_imp.id(617184869719296609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3093555296561772868)
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Calendars and Dynamic Actions'
,p_alias=>'CALENDARS-AND-DYNAMIC-ACTIONS'
,p_step_title=>'Calendars and Dynamic Actions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790299160865220819)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3430210540884825784)
,p_plug_name=>'Calendars and Dynamic Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(790341273506679815)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Calendar with Report'
,p_alias=>'CALENDAR-WITH-REPORT'
,p_step_title=>'Calendar with Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080839'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298236016220810)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3250397047574531637)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Upon a view change (navigate to next or previous month), the calendar Component sends a <b>View changed [Calendar]</b> event for which a <i>dynamic action</i> can be created. The event passes the current view''s begin (attribute <b>startDate</b>) a'
||'nd end (<b>endDate</b>) timestamps as the <b>data</b> object (<b>this.data</b>). In this example, the <b>Set Value</b> action stores the timestamps in hidden APEX items <b>P51_CAL_START_DATE</b> and <b>P51_CAL_END_DATE</b> and then refreshes the clas'
||'sic report region.',
'</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3250398179384531643)
,p_plug_name=>'Tasks'
,p_region_name=>'tasks_cal'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'       case STATUS',
'           when ''Open''    then ''apex-cal-green''',
'           when ''Pending'' then ''apex-cal-yellow''',
'           when ''Closed''  then ''apex-cal-red''',
'           when ''On-Hold'' then ''apex-cal-black''',
'       end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P51_PROJECTS,''0'') = ''0'' or project = :P51_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P51_PROJECTS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.'
,p_attribute_07=>'N'
,p_attribute_09=>'navigation'
,p_attribute_13=>'N'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'5'
,p_attribute_22=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1552452182827784458)
,p_name=>'Tasks '
,p_parent_plug_id=>wwv_flow_imp.id(3250398179384531643)
,p_template=>wwv_flow_imp.id(1705157342915465550)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'          case STATUS',
'           when ''Open''    then ''apex-cal-green''',
'           when ''Pending'' then ''apex-cal-yellow''',
'           when ''Closed''  then ''apex-cal-red''',
'           when ''On-Hold'' then ''apex-cal-black''',
'       end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P51_PROJECTS,''0'') = ''0'' or project = :P51_PROJECTS)',
'and (:P51_CAL_END_DATE is null or :P51_CAL_START_DATE is null or (',
'    start_date < next_day(to_date(:P51_CAL_END_DATE, ''YYYYMMDDHH24MISS''),1) -1  and ',
'    end_date   > next_day(to_date(:P51_CAL_START_DATE, ''YYYYMMDDHH24MISS'')-7,1)',
'))',
'order by start_date'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P51_PROJECTS,P51_CAL_START_DATE,P51_CAL_END_DATE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(1705167124857465574)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No tasks found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786398034258290973)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786398444405290973)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>4
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786398843610290973)
,p_query_column_id=>3
,p_column_alias=>'TASK_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Task name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786399278756290974)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786399642737290978)
,p_query_column_id=>5
,p_column_alias=>'ASSIGNED_TO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786400111596290979)
,p_query_column_id=>6
,p_column_alias=>'COST'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786400489316290979)
,p_query_column_id=>7
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'from'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786400832344290979)
,p_query_column_id=>8
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'to'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(786397651677290971)
,p_query_column_id=>9
,p_column_alias=>'CSS_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<div class="fc"><div class="fc-event  #CSS_CLASS#">#STATUS#</div></div>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3250400150806531727)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786396352319290967)
,p_name=>'P51_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3250400150806531727)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786401238239290980)
,p_name=>'P51_CAL_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1552452182827784458)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786401687797290980)
,p_name=>'P51_CAL_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1552452182827784458)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786402849532290981)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786403381350290982)
,p_event_id=>wwv_flow_imp.id(786402849532290981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3250398179384531643)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786403900134290982)
,p_event_id=>wwv_flow_imp.id(786402849532290981)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1552452182827784458)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786404265721290982)
,p_name=>'Calendar View Changed: Refresh Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3250398179384531643)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendarviewchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786404820315290991)
,p_event_id=>wwv_flow_imp.id(786404265721290982)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_START_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.startDate'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786405790781291003)
,p_event_id=>wwv_flow_imp.id(786404265721290982)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.endDate'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786405310046290991)
,p_event_id=>wwv_flow_imp.id(786404265721290982)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1552452182827784458)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786406166974291004)
,p_name=>'Page Load: Restrict Report to current Month'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786406690953291004)
,p_event_id=>wwv_flow_imp.id(786406166974291004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_START_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( apex.region("tasks_cal").widget().data("fullCalendar").view.activeStart )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786407192263291005)
,p_event_id=>wwv_flow_imp.id(786406166974291004)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_CAL_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( apex.region("tasks_cal").widget().data("fullCalendar").view.activeEnd )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786407634114291005)
,p_event_id=>wwv_flow_imp.id(786406166974291004)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1552452182827784458)
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_imp_page.create_page(
 p_id=>52
,p_name=>'Create Calendar Events'
,p_alias=>'CREATE-CALENDAR-EVENTS'
,p_step_title=>'Create Calendar Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519080959'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298344029220811)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1552468105607798230)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4024032289865015091)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This suits well to display conference or similar schedules. Upon clicking an existing event, the edit dial'
||'og opens, like on page <a href="f?p=&APP_ID.:33:&APP_SESSION.">"Weekly Calendar: Edit Sessions</a>. When an empty date is selected, the new event is being created <i>immediately</i> using a default title (<b>New Event</b>). The newly created event ca'
||'n then be edited by simply clicking on it.</p>',
'<p>This page uses a dynamic action on a <b>Date Selected [Calendar]</b> event which the calendar component fires upon selecting an empty date or date range. The event passes information about the selection as the <b>data</b> event object (<b>this.dat'
||'a</b>). In this object, the <b>newStartDate</b> and <b>newEndDate</b> attributes contain the selected start and end timestamp as strings in <b>YYYYMMDDHH24MMSS</b> format.',
'</p><p>Note that this dynamic action is only fired when the calendar attribute <b>Create Link</b> <i>is empty</i>.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4024033421675015097)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P52_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P52_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_05=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.'
,p_attribute_11=>'week:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(776578826022911936)
,p_name=>'P52_ENDDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1552468105607798230)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(776578899920911937)
,p_name=>'P52_STARTDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1552468105607798230)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786410388311304710)
,p_name=>'P52_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1552468105607798230)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786411578887304712)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4024033421675015097)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786412032986304713)
,p_event_id=>wwv_flow_imp.id(786411578887304712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4024033421675015097)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786412458703304714)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786413019883304714)
,p_event_id=>wwv_flow_imp.id(786412458703304714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4024033421675015097)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(776578626859911934)
,p_name=>'Date Range Selected: Create new Event'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4024033421675015097)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776578650480911935)
,p_event_id=>wwv_flow_imp.id(776578626859911934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.newStartDate'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579021017911938)
,p_event_id=>wwv_flow_imp.id(776578626859911934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.newEndDate'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579196188911940)
,p_event_id=>wwv_flow_imp.id(776578626859911934)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into eba_demo_cal_sessions (title, speaker, session_type, status, start_date, end_date)',
'values (''New Event'', ''N/A'', ''GENERAL'', ''ACTIVE'', to_date(:P52_STARTDATE, ''YYYYMMDDHH24MISS''),  to_date(:P52_ENDDATE, ''YYYYMMDDHH24MISS''));',
'end;'))
,p_attribute_02=>'P52_STARTDATE,P52_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579235301911941)
,p_event_id=>wwv_flow_imp.id(776578626859911934)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4024033421675015097)
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_imp_page.create_page(
 p_id=>53
,p_name=>'Delete Events by Click'
,p_alias=>'DELETE-EVENTS-BY-CLICK'
,p_step_title=>'Delete Events by Click'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081032'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298478432220812)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2328373574464764012)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4799937758721980873)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This suits well to display conference or similar schedules. In this page, calendar events can be deleted b'
||'y simply clicking them. Upon clicking an existing event, an alert box opens to confirm whether this object should really be deleted. When <b>OK</b> is chosen, the event is being deleted in the database and the calendar view is being refreshed.</p>',
'<p>This page uses a dynamic action on  the <b>Event Selected [Calendar]</b> event which the calendar component fires upon clicking an existing event. The event passes the <a href="https://fullcalendar.io/docs/event-object" target="_blank">FullCalenda'
||'r Event Object</a> (<b>this.data</b>). In this object, the <b>id</b> attribute contains the primary key value which is being stored in a hidden APEX page item (<b>P53_SESSION_ID</b>). Finally, the calendar event is being deleted with the <b>Execute P'
||'L/SQL Code</b> action.</p>',
'<p>Note that the <b>Event Selected [Calendar]</b> event is only fired when the calendar attribute <b>Edit Link</b> <i>is empty</i>.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4799938890531980879)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P53_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P53_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(776579601879911944)
,p_name=>'P53_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2328373574464764012)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786425539578384190)
,p_name=>'P53_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2328373574464764012)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786428508921384193)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P53_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786428942137384193)
,p_event_id=>wwv_flow_imp.id(786428508921384193)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4799938890531980879)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(776579423666911942)
,p_name=>'Event Clicked: Confirm and Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4799938890531980879)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579467448911943)
,p_event_id=>wwv_flow_imp.id(776579423666911942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579702187911945)
,p_event_id=>wwv_flow_imp.id(776579423666911942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you really want to delete that event?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579776354911946)
,p_event_id=>wwv_flow_imp.id(776579423666911942)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from eba_demo_cal_sessions where id =:P53_SESSION_ID;',
'end;'))
,p_attribute_02=>'P53_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776579898874911947)
,p_event_id=>wwv_flow_imp.id(776579423666911942)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4799938890531980879)
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_imp_page.create_page(
 p_id=>54
,p_name=>'Copy Events by Click'
,p_alias=>'COPY-EVENTS-BY-CLICK'
,p_step_title=>'Copy Events by Click'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081134'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790299538665220823)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3108224033369348906)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5579788217626565767)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. This suits well to display conference or similar schedules. In this page, calendar events can be copied by'
||' simply clicking them. Upon clicking an existing event, a new event with the same attributes will be created. The application will add 30 minutes to the begin and end timestamps of the new event.</p>',
'<p>This page uses a dynamic action on the <b>Event Selected [Calendar]</b> event which the calendar component fires upon clicking an existing event. The event passes the <a href="https://fullcalendar.io/docs/event-object" target="_blank">FullCalendar'
||' Event Object</a> (<b>this.data</b>). In this object, the <b>id</b> attribute contains the primary key value which is then being stored in a hidden APEX page item (<b>P54_SESSION_ID</b>) using a <b>Set Value</b> action. Finally, the calendar event is'
||' being copied with the <b>Execute PL/SQL Code</b> action.</p>',
'<p>Note that the <b>Event Selected [Calendar]</b> event is only fired when the calendar attribute <b>Edit Link</b> <i>is empty</i>.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5579789349436565773)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P54_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P54_SHOW_INACTIVE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(790370853004003305)
,p_name=>'P54_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3108224033369348906)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(790371252188003314)
,p_name=>'P54_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3108224033369348906)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790371916898003315)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790372347798003319)
,p_event_id=>wwv_flow_imp.id(790371916898003315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5579789349436565773)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790372737519003320)
,p_name=>'Event Clicked: Confirm and Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5579789349436565773)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790374789382003322)
,p_event_id=>wwv_flow_imp.id(790372737519003320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790373734213003321)
,p_event_id=>wwv_flow_imp.id(790372737519003320)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into eba_demo_cal_sessions (title, session_type, status, speaker, start_date, end_date)',
'  (',
'      select ''Copy of ''||title, session_type, status, speaker, start_date + interval ''30'' minute, end_date + interval ''30'' minute',
'        from eba_demo_cal_sessions ',
'       where id =:P54_SESSION_ID);',
'end;'))
,p_attribute_02=>'P54_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790374240751003321)
,p_event_id=>wwv_flow_imp.id(790372737519003320)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5579789349436565773)
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_imp_page.create_page(
 p_id=>70
,p_name=>'Calendars and Javascript'
,p_alias=>'CALENDARS-AND-JAVASCRIPT'
,p_step_title=>'Calendars and Javascript'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790299314408220820)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4210040858823173082)
,p_plug_name=>'Calendars and Javascript'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(790346437364737819)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00071
begin
wwv_flow_imp_page.create_page(
 p_id=>71
,p_name=>'Custom Navigation'
,p_alias=>'CUSTOM-NAVIGATION'
,p_step_title=>'Custom Navigation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDD( pDate ) {',
'    var date = pDate || new Date(),',
'        separator = "-";',
'',
'    return ( "0000" + date.getFullYear() ).substr( -4 ) + separator + ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) + separator + ( "00" + date.getDate() ).substr( -2 );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081500'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298550530220813)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3260310610224345978)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This calendar component has all navigation elements being disabled. Instead, Application Express buttons (<b>NEXT</b> and <b>PREV</b>) have been created to move to the next or previous pages. After entering a date (format <b>YYYY-MM-DD</b>) into t'
||'he <b>P71_GOTODATE</b> text field, the calendar component displays that date immediately.</p>',
'<p>Dynamic actions with <b>Execute JavaScript Code</b> action have been created on the buttons as well as on the text field. The <i>Application Express region interface</i> allows to access the calendar widget Javascript object, onto which <a href="h'
||'ttps://fullcalendar.io/docs/" target="_blank">FullCalendar</a> API methods are being executed as follows.</p>',
'<pre>',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").gotoDate("<i>YYYY-MM-DD</i>");',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").next();',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").prev();',
'</pre>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3260311742034345984)
,p_plug_name=>'Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P71_PROJECTS,''0'') = ''0'' or project = :P71_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P71_PROJECTS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.'
,p_attribute_07=>'N'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'5'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3260313713456346068)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(786457175566558242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3260313713456346068)
,p_button_name=>'TODAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Today'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(776579990910911948)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3260313713456346068)
,p_button_name=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_button_image_alt=>'Next Calendar Page'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-double-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(786453222028558202)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3260313713456346068)
,p_button_name=>'PREV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1705180270641465626)
,p_button_image_alt=>'Previous Calendar Page'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786450455396548978)
,p_name=>'P71_PROJECTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3260313713456346068)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786453712243558207)
,p_name=>'P71_GOTODATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3260313713456346068)
,p_prompt=>'Goto date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786455239960558223)
,p_name=>'P71_VIEWTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3260313713456346068)
,p_prompt=>'View Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Month;dayGridMonth,Week;timeGridWeek,Day;timeGridDay,List;list'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786451635505548980)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786452206252548980)
,p_event_id=>wwv_flow_imp.id(786451635505548980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3260311742034345984)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(776580125388911949)
,p_name=>'Calendar: Next Month'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(776579990910911948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786452994143558200)
,p_event_id=>wwv_flow_imp.id(776580125388911949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").next()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786453524749558205)
,p_name=>'Calendar: Prev Month'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(786453222028558202)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786453601788558206)
,p_event_id=>wwv_flow_imp.id(786453524749558205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").prev()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786453751954558208)
,p_name=>'Focus Date'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_GOTODATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P71_GOTODATE").match(/\d\d\d\d\-\d\d\-\d\d/) != null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786453836650558209)
,p_event_id=>wwv_flow_imp.id(786453751954558208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").gotoDate($v("P71_GOTODATE"))'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786454168779558212)
,p_event_id=>wwv_flow_imp.id(786453751954558208)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please use YYYY-MM-DD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786455374754558224)
,p_name=>'set View Type'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786455515801558225)
,p_event_id=>wwv_flow_imp.id(786455374754558224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PROJECTS,P71_VIEWTYPE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.region("project_tasks").widget().data("fullCalendar").view.type'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786455559218558226)
,p_name=>'Change View'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_VIEWTYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786455651761558227)
,p_event_id=>wwv_flow_imp.id(786455559218558226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").changeView($v("P71_VIEWTYPE"))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786457324307558243)
,p_name=>'Set Goto Date to "today"'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(786457175566558242)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786457371077558244)
,p_event_id=>wwv_flow_imp.id(786457324307558243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_GOTODATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDD()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_imp_page.create_page(
 p_id=>72
,p_name=>'Query Calendar Status'
,p_alias=>'QUERY-CALENDAR-STATUS'
,p_step_title=>'Query Calendar Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298711808220814)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4036267472174668652)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to get the current calendar status with javascript methods. Upon switching the view type or navigating to the next or previous page, a dynamic action is being executed. The <a href="https://fullcalendar.io/docs/" target="_blank'
||'">FullCalendar API</a> <b>view</b> object is being used to get the current <i>calendar view</i> object. Its attributes can then be used to query the view type or start and end dates. Use a <b>Set Value</b> action to store this information in Applicat'
||'ion Express page items.</p>',
'<pre>',
'// get the view type (dayGridMonth, timeGridWeek, timeGridDay or list',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.type ',
'',
'// get the start date of the view',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.activeStart',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.currentStart',
'',
'// get the end date of the view',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.activeEnd',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").view.currentEnd',
'</pre>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4036268603984668658)
,p_plug_name=>'Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'5'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4036270575406668742)
,p_plug_name=>'Button Bar'
,p_region_name=>'texfields-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786454254503558213)
,p_name=>'P72_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4036270575406668742)
,p_prompt=>'to'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_icon_css_classes=>'fa-calendar'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786454349006558214)
,p_name=>'P72_VIEW_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4036270575406668742)
,p_prompt=>'View type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_icon_css_classes=>'fa-calendar-search'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786477762301741081)
,p_name=>'P72_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4036270575406668742)
,p_prompt=>'View from'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_icon_css_classes=>'fa-calendar'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786479363245741084)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786479918222741085)
,p_event_id=>wwv_flow_imp.id(786479363245741084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4036268603984668658)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786480328000741085)
,p_name=>'Calendar: Next Month'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(776579990910911948)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786480826755741086)
,p_event_id=>wwv_flow_imp.id(786480328000741085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").next()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786454487214558215)
,p_name=>'Get Calendar Status'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4036268603984668658)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendarviewchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786454533405558216)
,p_event_id=>wwv_flow_imp.id(786454487214558215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_VIEW_TYPE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.viewType'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786454666485558217)
,p_event_id=>wwv_flow_imp.id(786454487214558215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_START_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.dates.startDate.toDateString()'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786454778821558218)
,p_event_id=>wwv_flow_imp.id(786454487214558215)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_END_DATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.dates.endDate.toDateString()'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790297284067220800)
,p_event_id=>wwv_flow_imp.id(786454487214558215)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#texfields-container input")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;'))
);
end;
/
prompt --application/pages/page_00073
begin
wwv_flow_imp_page.create_page(
 p_id=>73
,p_name=>'Calendar Client Events'
,p_alias=>'CALENDAR-CLIENT-EVENTS'
,p_step_title=>'Calendar Client Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        "-" +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        "-" +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        " " +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081542'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298826855220815)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2328525792070294427)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4800089976327511288)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows, how additional, <i>client-only</i> events can be placed onto the calendar view. Fill out the text fields and click the <b>Show in Calendar</b> button. You''ll then see your input displayed as a "red" event. That event is only visib'
||'le in your browser and not saved to the database so far. You can also select a date range with the mouse, after finishing, the text fields will be updated and the "red" event will appear. Click the <b>Save to Database</b> button to make the event per'
||'sistent.</p>',
'<p>This example uses the <i>FullCalendar API</i>''s <b>EventObject / CalendarObject</b> and its methods <b>setProp</b>, <b>setDates</b> and <b>addEvent</b> (<a href="https://fullcalendar.io/docs/" target="_blank">FullCalendar Documentation</a>). For e'
||'xample:',
'<pre>',
'var calendar = apex.region( "week_calendar" ).widget().data( "fullCalendar" );',
'',
'calendar.addEvent( {',
'    id:     "javascript-event-id",',
'    title:  "a client-only event",',
'    start:  "2016-05-03T14:00:00",',
'    end:    "2016-05-03T16:00:00",',
'    allDay: false',
'} );',
'</pre>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4800091108137511294)
,p_plug_name=>'Sessions'
,p_region_name=>'week_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_05=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.'
,p_attribute_11=>'week'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(786456044574558231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2328525792070294427)
,p_button_name=>'SHOW_IN_CALENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show in Calendar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(786456619947558236)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2328525792070294427)
,p_button_name=>'SAVE_IN_DATABASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Save to Database'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786455990403558230)
,p_name=>'P73_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2328525792070294427)
,p_item_default=>'My Session'
,p_prompt=>'Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786456493628558235)
,p_name=>'P73_SESSION_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2328525792070294427)
,p_prompt=>'Session Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SESSION_TYPES'
,p_lov=>'.'||wwv_flow_imp.id(786373535879193407)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786578209293914613)
,p_name=>'P73_STARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2328525792070294427)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 09:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786578598148914613)
,p_name=>'P73_ENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2328525792070294427)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 11:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786581548518914617)
,p_name=>'Date Range Selected: Create new Event'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4800091108137511294)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786582036916914617)
,p_event_id=>wwv_flow_imp.id(786581548518914617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newStartDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786582611723914618)
,p_event_id=>wwv_flow_imp.id(786581548518914617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newEndDate )'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786456422737558234)
,p_event_id=>wwv_flow_imp.id(786581548518914617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(786456044574558231)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P73_STARTDATE,#P73_ENDDATE")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;',
'',
'apex.event.trigger(this.affectedElements, "click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786456209825558232)
,p_name=>'Create Javascript Event'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(786456044574558231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786456315032558233)
,p_event_id=>wwv_flow_imp.id(786456209825558232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var calendar = apex.region( "week_calendar" ).widget().data( "fullCalendar" );',
'var event = calendar.getEventById( "javascript-event-id" );',
'',
'if ( event ) {',
'',
'    event.setProp( "title", $v( "P73_TITLE" ) );',
'    event.setDates( $v( "P73_STARTDATE" ), $v( "P73_ENDDATE" ), { allDay: false } );',
'',
'} else {',
'',
'    calendar.addEvent( {',
'        id: "javascript-event-id",',
'        description: ''this is a "client-only" event which is not stored in the database so far'',',
'        title: $v( "P73_TITLE" ),',
'        start: $v( "P73_STARTDATE" ),',
'        end: $v( "P73_ENDDATE" ),',
'        className: "apex-cal-red",',
'        backgroundColor: "rgba(255,0,0,0.75)",',
'        overlap: true,',
'        allDay: false',
'    } );',
'    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786456647926558237)
,p_name=>'Save Event to Database'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(786456619947558236)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786456788705558238)
,p_event_id=>wwv_flow_imp.id(786456647926558237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_demo_cal_sessions (title, speaker, session_type, status, start_date, end_date)',
'    values (:P73_TITLE, ''TBD'', :P73_SESSION_TYPE, ''ACTIVE'', to_date(:P73_STARTDATE, ''YYYY-MM-DD HH24:MI:SS''), to_date(:P73_ENDDATE, ''YYYY-MM-DD HH24:MI:SS''));',
'        ',
'end;',
'        '))
,p_attribute_02=>'P73_TITLE,P73_SESSION_TYPE,P73_STARTDATE,P73_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786456905279558239)
,p_event_id=>wwv_flow_imp.id(786456647926558237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4800091108137511294)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786456938165558240)
,p_name=>'Event Data Changed: Show in Calendar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_TITLE,P73_STARTDATE,P73_ENDDATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786457090990558241)
,p_event_id=>wwv_flow_imp.id(786456938165558240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(786456044574558231)
,p_attribute_01=>'apex.event.trigger(this.affectedElements, "click");'
);
end;
/
prompt --application/pages/page_00074
begin
wwv_flow_imp_page.create_page(
 p_id=>74
,p_name=>'Schedule Builder'
,p_alias=>'SCHEDULE-BUILDER'
,p_step_title=>'Schedule Builder'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        "-" +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        "-" +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        " " +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210224011833'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790299671921220824)
,p_plug_name=>'My Sessions'
,p_region_name=>'my_session_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'      when session_type = ''PERSONAL'' then ''apex-cal-red''',
'   end as css_class',
'from eba_demo_cal_mysessions',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "My Schedule" };',
'    pOptions.slotMinTime            = "08:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:list'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>'&ABSTRACT.'
,p_attribute_17=>'N'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'7'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(893220460479113135)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3112407166067292712)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5583971350324509573)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demomstrates how to build a <i>schedule builder</i> using the Application Express Calendar Component. On the right side, you see a list of available sessions; on the left side is the personal schedule. Click an event on the right hand si'
||'de to copy to your schedule; clicking in the personal schedule deletes it. With the mouse and the text fields, additional events can be added to the personal schedule.</p>',
'<p>This example makes use of the <i>FullCalendar API</i> <b>EventObject / CalendarObject</b> and its methods <b>setProp</b>, <b>setDates</b> and <b>addEvent</b> (<a href="https://fullcalendar.io/docs/" target="_blank">FullCalendar Documentation</a>).'
||'</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5583972482134509579)
,p_plug_name=>'Sessions'
,p_region_name=>'session_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'      when session_type = ''PERSONAL'' then ''apex-cal-red''',
'   end as css_class',
'from eba_demo_cal_sessions',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Sessions" };',
'    pOptions.slotMinTime            = "08:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    return pOptions;',
'}'))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'N'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'7'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(794401742500416775)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3112407166067292712)
,p_button_name=>'SHOW_IN_CALENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show in Calendar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(794402132872416777)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3112407166067292712)
,p_button_name=>'SAVE_IN_DATABASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Save to Database'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(794449734153025401)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3112407166067292712)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Clear Schedule'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(790299978376220827)
,p_name=>'P74_MY_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(790299671921220824)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(794402563428416777)
,p_name=>'P74_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3112407166067292712)
,p_item_default=>'My Session'
,p_prompt=>'Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(794403345172416785)
,p_name=>'P74_STARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3112407166067292712)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 09:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(794403802766416786)
,p_name=>'P74_ENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3112407166067292712)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 11:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1705179899956465617)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(794409495821416833)
,p_name=>'Create Javascript Event'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(794401742500416775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794410028944416833)
,p_event_id=>wwv_flow_imp.id(794409495821416833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var calendar = apex.region( "my_session_calendar" ).widget().data( "fullCalendar" );',
'var event = calendar.getEventById( "javascript-event-id" );',
'',
'if ( event ) {',
'    event.setProp( "title", $v( "P74_TITLE" ) );',
'    event.setDates( $v( "P74_STARTDATE" ), $v( "P74_ENDDATE" ), { allDay: false } );',
'} else {',
'    calendar.addEvent( {',
'        id: "javascript-event-id",',
'        description: ''this is a "client-only" event which is not stored in the database so far'',',
'        title: $v( "P74_TITLE" ),',
'        start: $v( "P74_STARTDATE" ),',
'        end: $v( "P74_ENDDATE" ),',
'        className: "apex-cal-red",',
'        backgroundColor: "rgba(255,0,0,0.75)",',
'        overlap: true,',
'        allDay: false',
'    } );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(794404376072416818)
,p_name=>'Save Event to Database'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(794402132872416777)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794404889473416822)
,p_event_id=>wwv_flow_imp.id(794404376072416818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_demo_cal_mysessions (id, title, status, session_type, speaker, start_date, end_date)',
'    values (to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''), :P74_TITLE, ''ACTIVE'', ''PERSONAL'', '''', to_date(:P74_STARTDATE, ''YYYY-MM-DD HH24:MI:SS''), to_date(:P74_ENDDATE, ''YYYY-MM-DD HH24:MI:SS''));',
'        ',
'end;',
'        '))
,p_attribute_02=>'P74_TITLE,P74_STARTDATE,P74_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794405400466416827)
,p_event_id=>wwv_flow_imp.id(794404376072416818)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(790299671921220824)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(978897808030058104)
,p_event_id=>wwv_flow_imp.id(794404376072416818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + $v("P74_TITLE") + "\u0022 added.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(794405794566416827)
,p_name=>'Event Data Changed: Show in Calendar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TITLE,P74_STARTDATE,P74_ENDDATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794406243814416830)
,p_event_id=>wwv_flow_imp.id(794405794566416827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(794401742500416775)
,p_attribute_01=>'apex.event.trigger(this.affectedElements, "click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790299802567220825)
,p_name=>'Event selected: Copy to "My Sessions"'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5583972482134509579)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300240690220830)
,p_event_id=>wwv_flow_imp.id(790299802567220825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_MY_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790299862183220826)
,p_event_id=>wwv_flow_imp.id(790299802567220825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into eba_demo_cal_mysessions (select * from eba_demo_cal_sessions where id = :P74_MY_SESSION_ID);',
'exception',
'  when dup_val_on_index then null;',
'end;    '))
,p_attribute_02=>'P74_MY_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300204470220829)
,p_event_id=>wwv_flow_imp.id(790299802567220825)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(790299671921220824)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300390916220831)
,p_event_id=>wwv_flow_imp.id(790299802567220825)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + this.data.event.title + "\u0022 added.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790300508721220832)
,p_name=>'Delete Selected Event'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(790299671921220824)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.data && this.data.event.id != ''javascript-event-id''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300713887220834)
,p_event_id=>wwv_flow_imp.id(790300508721220832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_MY_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300734409220835)
,p_event_id=>wwv_flow_imp.id(790300508721220832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  delete from  eba_demo_cal_mysessions where id = :P74_MY_SESSION_ID;',
'end;    '))
,p_attribute_02=>'P74_MY_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300871609220836)
,p_event_id=>wwv_flow_imp.id(790300508721220832)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(790299671921220824)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790300972693220837)
,p_event_id=>wwv_flow_imp.id(790300508721220832)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + this.data.event.title + "\u0022 removed.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790301122286220838)
,p_name=>'Date Range Selected'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(790299671921220824)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790301189828220839)
,p_event_id=>wwv_flow_imp.id(790301122286220838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newStartDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790301256109220840)
,p_event_id=>wwv_flow_imp.id(790301122286220838)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newEndDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790301396784220841)
,p_event_id=>wwv_flow_imp.id(790301122286220838)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(794401742500416775)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P74_STARTDATE,#P74_ENDDATE")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;',
'',
'apex.event.trigger(this.affectedElements, "click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(790302086561220848)
,p_name=>'Search Changed - Refresh'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(790302160160220849)
,p_event_id=>wwv_flow_imp.id(790302086561220848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5583972482134509579)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(794449904907025402)
,p_name=>'Clear Schedule'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(794449734153025401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794450023026025403)
,p_event_id=>wwv_flow_imp.id(794449904907025402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Clear your schedule: Really?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794450063827025404)
,p_event_id=>wwv_flow_imp.id(794449904907025402)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from eba_demo_cal_mysessions;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794450150529025405)
,p_event_id=>wwv_flow_imp.id(794449904907025402)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(790299671921220824)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794450291642025406)
,p_event_id=>wwv_flow_imp.id(794449904907025402)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("Schedule cleared.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(794450594186025409)
,p_name=>'Change topic'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(794450644733025410)
,p_event_id=>wwv_flow_imp.id(794450594186025409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5583972482134509579)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2100095280359708004)
,p_name=>'Sync "Conf Session" Scroll with "My Session" Scroll'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#my_session_calendar .fc-scroller'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'scroll'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2100095377810708005)
,p_event_id=>wwv_flow_imp.id(2100095280359708004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#session_calendar .fc-scroller").scrollTop($("#my_session_calendar .fc-scroller").scrollTop());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(617186745898298662)
,p_name=>'Set Calendar AspectRatio'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(617186857973298663)
,p_event_id=>wwv_flow_imp.id(617186745898298662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("session_calendar").widget().data("fullCalendar").setOption("aspectRatio", 1.3);',
'apex.region("my_session_calendar").widget().data("fullCalendar").setOption("aspectRatio", 1.3);'))
);
end;
/
prompt --application/pages/page_00090
begin
wwv_flow_imp_page.create_page(
 p_id=>90
,p_name=>'Calendar Styling'
,p_alias=>'CALENDAR-STYLING'
,p_step_title=>'Calendar Styling'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790299387057220821)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4989876000224556208)
,p_plug_name=>'Calendar Styling'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(790352077595783017)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00091
begin
wwv_flow_imp_page.create_page(
 p_id=>91
,p_name=>'Week Calendar: Conference'
,p_alias=>'WEEK-CALENDAR-CONFERENCE2'
,p_step_title=>'Week Calendar: Conference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fc-event .fc-content div.fc-time { display: none;}',
'',
'.fc-event.my-cal-blue {',
'    background-color: lightblue;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-blue .fc-title {',
'    color: darkblue;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-orange {',
'    background-color: orange;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-orange .fc-title {',
'    color: darkred;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-dark-orange {',
'    background-color: #8B5A00;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-dark-orange .fc-title {',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-white {',
'    background-color: white;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-white .fc-title {',
'    color: black;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-green {',
'    background-color: lightgreen;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-green .fc-title {',
'    color: darkgreen;',
'    font-weight: bold;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081746'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298846724220816)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3251031834188683489)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows custom styling of calendar events using own CSS classes. Define your CSS classes (e.g. in the page attribute <b>CSS - Inline</b>) and use them as the <b>CSS_CLASS</b> column in your SQL query. An example CSS class definition (setti'
||'ng a light-blue background with black border and a dark-blue, bold font) looks as follows.</p>',
'<pre>',
'.fc-event.my-cal-blue {',
'    background-color: lightblue;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-blue .fc-title {',
'    color: darkblue;',
'    font-weight: bold;',
'}',
'</pre>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3251032965998683495)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when session_type = ''BREAK''    then ''my-cal-green''',
'      when session_type = ''BUSINESS'' then ''my-cal-blue''',
'      when session_type = ''GENERAL''  then ''my-cal-white''',
'      when session_type = ''TECHNICAL'' then ''my-cal-orange''',
'      when session_type = ''HANDS_ON'' then ''my-cal-dark-orange''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.slotMinTime      = "07:00:00";                               // hide slots before minTime',
'    pOptions.slotMaxTime      = "18:00:00";                               // hide slots after maxTime',
'    pOptions.slotDuration     = "00:15:00";                               // custom slot duration',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786549602994608310)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786550102348608316)
,p_event_id=>wwv_flow_imp.id(786549602994608310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3251032965998683495)
);
end;
/
prompt --application/pages/page_00092
begin
wwv_flow_imp_page.create_page(
 p_id=>92
,p_name=>'Week Calendar with Icons'
,p_alias=>'WEEK-CALENDAR-WITH-ICONS'
,p_step_title=>'Week Calendar with Icons'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.icon-left .fc-content .fc-title:before {',
'  font-family: FontAwesome;',
'  margin-right: 5px;',
'  float: left;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210224013020'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(790298992530220817)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4027067221304960255)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page displays <i>icons</i> with each calendar event, depending on the event type. This is being achieved by passing HTML code as the <b>title</b> column as follows.</p>',
'<pre>',
'select apex_escape.html( id ),',
'       <b>''&lt;span class="fa fa-flag&gt;&lt;/span&gt;'' || apex_escape.html( title )</b>,',
'       :',
'  from eba_demo_cal_sessions',
'</pre>',
'<p>Set the <b>Escape Special Characters</b> region attribute to <b>No</b> in order to prevent HTML code escaping. To avoid CSS vulnerabilities make sure to use <b>APEX_ESCAPE.HTML</b> in your SQL query for all columns.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4027068353114960261)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   ''<span class="fa fa-'' ||',
'       case',
'          when status       = ''INACTIVE'' then  ''times-circle-o''',
'          when session_type = ''BREAK''    then  ''coffee''',
'          when session_type = ''BUSINESS'' then  ''money''',
'          when session_type = ''GENERAL''  then  ''users''',
'          when session_type = ''TECHNICAL'' then ''wrench''',
'          when session_type = ''HANDS_ON'' then ''laptop''',
'          else ''apex''',
'       end || '' fc fc-title" style="float: left;"></span>&nbsp;'' || apex_escape.html(title) as title,',
'   apex_escape.html(speaker) as speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P33_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.slotMinTime      = "07:00:00";                               // hide slots before minTime',
'    pOptions.slotMaxTime      = "18:00:00";                               // hide slots after maxTime',
'    pOptions.slotDuration     = "00:15:00";                               // custom slot duration',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>'&SPEAKER.'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(786555995410695177)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(786556445268695178)
,p_event_id=>wwv_flow_imp.id(786555995410695177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4027068353114960261)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Sign In | &APP_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(1705126921384465468)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8201444450558373538)
,p_plug_name=>'Sample Calendar'
,p_region_name=>'sample_calendar'
,p_icon_css_classes=>'app-sample-calendar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705156215889465546)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3135453923206956057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8201444450558373538)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8201444563161373542)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8201444450558373538)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8201444662887373542)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8201444450558373538)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(1705179370404465612)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3251905213415915817)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3251905534821915818)
,p_event_id=>wwv_flow_imp.id(3251905213415915817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3251905714693915818)
,p_event_id=>wwv_flow_imp.id(3251905213415915817)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8201444938073373544)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8201444844977373543)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8201445139897373544)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8201445035579373544)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_imp_page.create_page(
 p_id=>110
,p_name=>'Custom Calendar Initialization'
,p_alias=>'CUSTOM-CALENDAR-INITIALIZATION'
,p_step_title=>'Custom Calendar Initialization'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'06'
,p_last_updated_by=>'DANIEL'
,p_last_upd_yyyymmddhh24miss=>'20210223043514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(801528041091069531)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5047648204158737323)
,p_plug_name=>'Custom Calendar Initialization'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(848127362091989633)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1705175756147465598)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00111
begin
wwv_flow_imp_page.create_page(
 p_id=>111
,p_name=>'FullCalendar API initialization'
,p_alias=>'FULLCALENDAR-API-INITIALIZATION'
,p_step_title=>'FullCalendar API initialization'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081723'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(801528132454069532)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4861625166662449092)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. In this example the region attribute <b>Plugin Initialization Javascript</b> is being used to override the'
||' standard FullCalendar initialization attributes with custom values. The javascript function, provided by the developer, must accept an Object containing the calendar initialization attributes, as parameter. In the javascript code, modify that object'
||' as needed and return. The function will be called by the calendar component automatically.</p>',
'<pre>',
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };       // custom title',
'    pOptions.slotMinTime            = "07:00:00";                                               // hide slots before minTime',
'    pOptions.slotMaxTime            = "21:00:00";                                               // hide slots after maxTime',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };   // week view column headings',
'    pOptions.slotDuration           = "00:15:00";                                               // custom slot duration',
'    pOptions.weekNumbers            = true;                                                     // show week numbers',
'    pOptions.weekText               = "CW";                                                     // heading for week numbers',
'    pOptions.weekNumberCalculation  = "ISO";                                                    // use "ISO" week numbers',
'    pOptions.displayEventTime       = true;                                                     // show event time ...',
'    pOptions.displayEventEnd        = false;                                                    // ... but not the end time',
'    pOptions.disableKeyboardSupport = true;                                                     // disable builtin keyboard navigation',
'    pOptions.windowResize           = null;                                                     // suppress automatic switch to list view on small screens',
'    return pOptions;',
'}',
'</pre>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4861626298472449098)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };',
'    pOptions.slotMinTime            = "07:00:00";',
'    pOptions.slotMaxTime            = "21:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    pOptions.weekNumbers            = true;',
'    pOptions.weekText               = "CW";',
'    pOptions.weekNumberCalculation  = "ISO";',
'    pOptions.displayEventTime       = true;',
'    pOptions.displayEventEnd        = false;',
'    pOptions.disableKeyboardSupport = true;',
'    pOptions.windowResize           = null;',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_05=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.'
,p_attribute_11=>'week:list'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(848114785118852407)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4861626298472449098)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(848115293927852407)
,p_event_id=>wwv_flow_imp.id(848114785118852407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4861626298472449098)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(848115684948852408)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(848116188837852408)
,p_event_id=>wwv_flow_imp.id(848115684948852408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4861626298472449098)
);
end;
/
prompt --application/pages/page_00112
begin
wwv_flow_imp_page.create_page(
 p_id=>112
,p_name=>'Custom Drag & Drop Handlers'
,p_alias=>'CUSTOM-DRAG-DROP-HANDLERS'
,p_step_title=>'Custom Drag & Drop Handlers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210519081358'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(820366607631554091)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705159957999465553)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8201445254602373544)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1705180931281465630)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5743135963949089970)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle Application Express (APEX) calendar region component showing a <b>weekly</b> view on events with a time component. Using drag and drop, calendar events can be moved within the displayed week. In this example, dynamic acti'
||'ons are being executed to display messages based on drag and drop events. These advanced calendar events are not exposed in the builder, but can be accessed as a custom event type. When creating a dynamic action, choose <b>Custom</b> as the event typ'
||'e, <b>Region</b> as <b>Selection Type</b> the the calendar region as <b>Region</b>.</p>',
'<ul>',
'<li>The <b>apexcalendardragdropstart</b> event is being fired when the user starts dragging an event. The event data is being passed as the <b>data</b> attribute.</li>',
'<li>The <b>apexcalendardragdropfinish</b> event is being fired after the drag and drop PL/SQL code has been successfully executed on the server.</li>',
'<li>The <b>apexcalendardragdroperror</b> event is being fired when an error occurs on the server. The <b>data</b> attribute contains the server''s error message.</li>',
'</ul>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5743137095759089976)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1705157342915465550)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };',
'    pOptions.slotMinTime            = "07:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    pOptions.weekNumbers            = true;',
'    pOptions.weekText               = "CW";',
'    pOptions.weekNumberCalculation  = "ISO";',
'    pOptions.eventStartEditable     = true;',
'    pOptions.disableKeyboardSupport = true;',
'    return pOptions;',
'}'))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_title eba_demo_cal_sessions.title%type;',
'  l_start varchar2(30);',
'begin',
'    update eba_demo_cal_sessions',
'       set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
'           end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
'     where id = :APEX$PK_VALUE',
'     returning title, ltrim(to_char(start_date, ''Dy, HH24:MI'')) ',
'     into l_title, l_start;',
'     :P112_DRAGDROP_MSG := ''"'' || l_title || ''": now at '' || l_start ||''.'';',
'end;'))
,p_attribute_11=>'week:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(946677117538873146)
,p_name=>'P112_DRAGDROP_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5743137095759089976)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(946676672055873142)
,p_name=>'Begin Drag & Drop '
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5743137095759089976)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'apexcalendardragdropstart'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(946676828391873143)
,p_event_id=>wwv_flow_imp.id(946676672055873142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess("moving \"" + this.data.title + "\" ...");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(946676845994873144)
,p_name=>'Finish Drag & Drop'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5743137095759089976)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'apexcalendardragdropfinish'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(946676945394873145)
,p_event_id=>wwv_flow_imp.id(946676845994873144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_DRAGDROP_MSG'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'v( ''P112_DRAGDROP_MSG'' ) '
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(978897457268058101)
,p_event_id=>wwv_flow_imp.id(946676845994873144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( $v( "P112_DRAGDROP_MSG") );'
);
end;
/
prompt --application/pages/page_00301
begin
wwv_flow_imp_page.create_page(
 p_id=>301
,p_name=>'Edit Session'
,p_alias=>'EDIT-SESSION'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Session'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(783660804754061051)
,p_plug_name=>'Edit Session'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705146829295465534)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(783661501904061052)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1705147025288465535)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(783661911758061053)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(783661501904061052)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(783661379447061052)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(783661501904061052)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(783661328669061052)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(783661501904061052)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(783661176704061052)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(783661501904061052)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1705180831013465628)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P301_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783664291631061062)
,p_name=>'P301_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(1705179803753465616)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783664692538061096)
,p_name=>'P301_ROW_VERSION_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783664977524061100)
,p_name=>'P301_TITLE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783665416657061100)
,p_name=>'P301_SESSION_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Session Type'
,p_source=>'SESSION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SESSION_TYPES'
,p_lov=>'.'||wwv_flow_imp.id(786373535879193407)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783665773894061101)
,p_name=>'P301_SPEAKER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Speaker'
,p_source=>'SPEAKER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783666143767061101)
,p_name=>'P301_START_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783666615762061101)
,p_name=>'P301_END_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(783666987148061102)
,p_name=>'P301_STATUS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(783660804754061051)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ACTIVE'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS'
,p_lov=>'.'||wwv_flow_imp.id(330971336938306646)||'.'
,p_field_template=>wwv_flow_imp.id(1705179940962465618)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(783661940259061053)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(783661911758061053)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(783662774107061056)
,p_event_id=>wwv_flow_imp.id(783661940259061053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(776578325533911931)
,p_name=>'Change Session Type'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_SESSION_TYPE'
,p_condition_element=>'P301_SESSION_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'BREAK'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776578378301911932)
,p_event_id=>wwv_flow_imp.id(776578325533911931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_SPEAKER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(776578492021911933)
,p_event_id=>wwv_flow_imp.id(776578325533911931)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_SPEAKER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(783667823256061108)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_CAL_SESSIONS'
,p_attribute_02=>'EBA_DEMO_CAL_SESSIONS'
,p_attribute_03=>'P301_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(783668187950061109)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_CAL_SESSIONS'
,p_attribute_02=>'EBA_DEMO_CAL_SESSIONS'
,p_attribute_03=>'P301_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(783668555691061109)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(783661379447061052)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(783669003404061109)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(2573476237549532762)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DROP TABLE  "EBA_DEMO_CAL_PROJECTS" cascade constraints;',
'',
'drop table "EBA_DEMO_CAL_SESSIONS" cascade constraints;',
'',
'drop table "EBA_DEMO_CAL_MYSESSIONS" cascade constraints;',
'',
'',
'drop procedure EBA_DEMO_CAL_DATA;',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_DEMO_CAL_DATA:EBA_DEMO_CAL_PROJECTS'
);
end;
/
prompt --application/deployment/install/install_set_plscope_settings
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(3350282621130614715)
,p_install_id=>wwv_flow_imp.id(2573476237549532762)
,p_name=>'Set plscope_settings'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
end;
/
prompt --application/deployment/install/install_create_tables
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2577397626803204509)
,p_install_id=>wwv_flow_imp.id(2573476237549532762)
,p_name=>'create tables'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE EBA_DEMO_CAL_PROJECTS',
'   (',
'    "ID" NUMBER, ',
'    row_version_number number,',
'    "PROJECT" VARCHAR2(30) not null, ',
'    "TASK_NAME" VARCHAR2(255) not null, ',
'    "START_DATE" DATE not null, ',
'    "END_DATE" DATE not null, ',
'    "STATUS" VARCHAR2(30) not null, ',
'    "ASSIGNED_TO" VARCHAR2(30), ',
'    "COST" NUMBER, ',
'    "BUDGET" NUMBER, ',
'     CONSTRAINT EBA_DEMO_CAL_PROJECTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_CAL_PROJECTS',
'   before insert or update on EBA_DEMO_CAL_PROJECTS',
'   for each row',
'begin',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.start_date > :new.end_date then',
'       RAISE_APPLICATION_ERROR(-20001, ''Error start date must be before end date'');',
'   end if;',
'end;',
'/',
'ALTER TRIGGER BIU_EBA_DEMO_CAL_PROJECTS ENABLE',
'/',
'',
'',
'CREATE TABLE EBA_DEMO_CAL_SESSIONS',
'   (',
'    "ID"                 NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "TITLE"              VARCHAR2(50)  not null, ',
'    "SESSION_TYPE"       VARCHAR2(30)  not null,',
'    "SPEAKER"            VARCHAR2(255),',
'    "START_DATE"         DATE          not null, ',
'    "END_DATE"           DATE          not null, ',
'    "STATUS"             VARCHAR2(30)  not null, ',
'     CONSTRAINT EBA_DEMO_CAL_EVENTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_CAL_SESSIONS',
'   before insert or update on EBA_DEMO_CAL_SESSIONS',
'   for each row',
'begin',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.start_date > :new.end_date then',
'       RAISE_APPLICATION_ERROR(-20001, ''Error start date must be before end date'');',
'   end if;',
'end;',
'/',
'',
'',
'CREATE TABLE EBA_DEMO_CAL_MYSESSIONS',
'   (',
'    "ID"                 NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "TITLE"              VARCHAR2(50)  not null, ',
'    "SESSION_TYPE"       VARCHAR2(30)  not null,',
'    "SPEAKER"            VARCHAR2(255),',
'    "START_DATE"         DATE          not null, ',
'    "END_DATE"           DATE          not null, ',
'    "STATUS"             VARCHAR2(30)  not null, ',
'     CONSTRAINT EBA_DEMO_CAL_MYEVENTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'',
'',
''))
);
end;
/
prompt --application/deployment/install/install_insert_data
begin
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2577469011696209523)
,p_install_id=>wwv_flow_imp.id(2573476237549532762)
,p_name=>'insert data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure EBA_DEMO_CAL_DATA as',
'begin',
'  delete from EBA_DEMO_CAL_PROJECTS;',
'  ',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Identify server requirements'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/21/2015'',''MM/DD/YYYY''),'''
||'Closed'',''John Watson'',''200'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Determine Web listener configuration(s)'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/'
||'DD/YYYY''),''Closed'',''James Cassidy'',''600'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Run installation'',to_date(''12/25/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Closed'',''Jam'
||'es Cassidy'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Create pilot workspace'',to_date(''12/27/2015'',''MM/DD/YYYY''),to_date(''12/27/2015'',''MM/DD/YYYY''),''Closed'
||''',''John Watson'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Specify security authentication scheme(s)'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/01/2016'',''M'
||'M/DD/YYYY''),''Open'',''John Watson'',''200'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Configure Workspace provisioning'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY'
||'''),''Open'',''John Watson'',''200'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Select servers for Development, Test, Production'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/07/2'
||'016'',''MM/DD/YYYY''),''Open'',''James Cassidy'',''200'',''600'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Document quality assurance procedures'',to_date(''11/05/2015'',''MM/DD/YYYY''),to_date(''11/08/2015'',''MM/DD/YYYY''),''Closed'',''M'
||'yra Sutcliff'',''3000'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Review automated testing tools'',to_date(''11/09/2015'',''MM/DD/YYYY''),to_date(''11/11/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sut'
||'cliff'',''750'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Implement bug tracking software'',to_date(''11/24/2015'',''MM/DD/YYYY''),to_date(''11/24/2015'',''MM/DD/YYYY''),''Closed'',''Myra Su'
||'tcliff'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Train developers on tracking bugs'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''On-Hold'',''Myra'
||' Sutcliff'',''1000'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Measure effectiveness of improved QA'',to_date(''12/13/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Pending'',''M'
||'yra Sutcliff'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Collect mission-critical spreadsheets'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''C'
||'losed'',''Pam King'',''2500'',''4000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Lock spreadsheets'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/DD/YYYY''),''Closed'',''Pam King'',''3'
||'00'',''800'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Create ACME Web Express applications from spreadsheets'',to_date(''12/30/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'''
||',''MM/DD/YYYY''),''Open'',''Pam King'',''6000'',''10000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Send links to previous spreadsheet owners'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/05/2016'',''MM/DD/YYYY'''
||'),''Pending'',''Pam King'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Identify owners'',to_date(''11/25/2015'',''MM/DD/YYYY''),to_date(''11/25/2015'',''MM/DD/YYYY''),''Closed'',''Hank Davis'',''250'','
||'''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Install ACME Web Express application on internet server'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''M'
||'M/DD/YYYY''),''Closed'',''Hank Davis'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Monitor participation'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY''),''Open'',''Hank Davis'',''4'
||'50'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Complete plan'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'',''3000'',''1'
||'500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Check software licenses'',to_date(''12/15/2015'',''MM/DD/YYYY''),to_date(''12/15/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'''
||',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Get RFPs for new server'',to_date(''12/29/2015'',''MM/DD/YYYY''),to_date(''12/30/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'''
||',''2000'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Purchase backup server'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/17/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'''
||',''0'',''3000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Complete questionnaire'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Closed'','
||'''Irene Jones'',''1200'',''800'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Review with legal'',to_date(''12/07/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY''),''On-Hold'',''Ire'
||'ne Jones'',''200'',''400'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Plan rollout schedule'',to_date(''12/08/2015'',''MM/DD/YYYY''),to_date(''12/08/2015'',''MM/DD/YYYY''),''On-Hold'','
||'''Irene Jones'',''0'',''750'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Identify pilot Client Server applications'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/17/2015'',''MM/DD/Y'
||'YYY''),''Closed'',''Scott Spencer'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate pilot Client Server to ACME Web Express'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''M'
||'M/DD/YYYY''),''Closed'',''Scott Spencer'',''4500'',''5000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Post-migration review'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/23/2015'',''MM/DD/YYYY''),''Closed'',''Pam '
||'King'',''500'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Plan migration schedule'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''Closed'',''Pa'
||'m King'',''1000'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate Client Server applications'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),'''
||'Open'',''Pam King'',''300'',''12000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Test migrated applications'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/06/2016'',''MM/DD/YYYY''),''Pending'''
||',''Russ Saunders'',''0'',''6000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''User acceptance testing'',to_date(''01/09/2016'',''MM/DD/YYYY''),to_date(''01/11/2016'',''MM/DD/YYYY''),''Pending'',''R'
||'uss Saunders'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''End-user Training'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Pending'',''Myra Su'
||'tcliff'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Rollout migrated Client Server in ACME Web Express'',to_date(''01/16/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'''
||',''MM/DD/YYYY''),''Pending'',''Pam King'',''0'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Identify point solutions required'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYYY''),''Closed'''
||',''John Watson'',''200'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Install in development'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Closed'',''John Wats'
||'on'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Customize solutions'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Open'',''John Watson'','''
||'1500'',''4000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Implement in Production'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''On-Hold'',''John Wa'
||'tson'',''200'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Train Administrators of Packaged Apps'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Pen'
||'ding'',''John Watson'',''0'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''HR software upgrades'',to_date(''11/28/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM/DD/YYYY''),''Closed'',''Pam K'
||'ing'',''8000'',''7000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Apply Billing System updates'',to_date(''12/02/2015'',''MM/DD/YYYY''),to_date(''12/04/2015'',''MM/DD/YYYY''),''Closed'
||''',''Russ Saunders'',''9500'',''7000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Arrange for vacation coverage'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Open'''
||',''Al Bines'',''300'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Investigate new Virus Protection software'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'',''MM/DD/Y'
||'YYY''),''Open'',''Pam King'',''1700'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Identify pilot desktop applications'',to_date(''12/10/2015'',''MM/DD/YYYY''),to_date(''12/10/2015'',''MM/DD/YYYY'
||'''),''Closed'',''Bob Nile'',''300'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate pilot applications to ACME Web Express'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'','
||'''MM/DD/YYYY''),''Closed'',''Bob Nile'',''1250'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Plan migration schedule'',to_date(''12/16/2015'',''MM/DD/YYYY''),to_date(''12/16/2015'',''MM/DD/YYYY''),''Closed'','
||'''Bob Nile'',''600'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate desktop applications'',to_date(''01/08/2016'',''MM/DD/YYYY''),to_date(''01/12/2016'',''MM/DD/YYYY''),''Ope'
||'n'',''Bob Nile'',''1000'',''8000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''User acceptance testing'',to_date(''01/14/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Open'',''B'
||'ob Nile'',''1500'',''6000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''End-user Training'',to_date(''01/18/2016'',''MM/DD/YYYY''),to_date(''01/19/2016'',''MM/DD/YYYY''),''Open'',''John Wa'
||'tson'',''0'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Post-migration review'',to_date(''02/01/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'','''
||'Bob Nile'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Obtain Legacy Server credentials'',to_date(''01/20/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),'''
||'Pending'',''James Cassidy'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Map data usage'',to_date(''01/22/2016'',''MM/DD/YYYY''),to_date(''01/24/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'
||''',''0'',''8000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Identify integration points'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/26/2016'',''MM/DD/YYYY''),''Pendi'
||'ng'',''Bob Nile'',''0'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Create DB Connection to new server'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/25/2016'',''MM/DD/YYYY'')'
||',''Pending'',''Scott Spencer'',''0'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Migrate table structures'',to_date(''01/19/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''Pending'''
||',''John Watson'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Import data'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/01/2016'',''MM/DD/YYYY''),''Pending'',''John Watson'
||''',''0'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Convert processes'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''Pam K'
||'ing'',''0'',''3000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Notify users'',to_date(''02/05/2016'',''MM/DD/YYYY''),to_date(''02/05/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','
||'''0'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Cut over to new database'',to_date(''02/06/2016'',''MM/DD/YYYY''),to_date(''02/06/2016'',''MM/DD/YYYY''),''Pending'''
||',''Bob Nile'',''0'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Decommission Legacy Server'',to_date(''02/20/2016'',''MM/DD/YYYY''),to_date(''02/20/2016'',''MM/DD/YYYY''),''Pendin'
||'g'',''Al Bines'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Determine host server'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tiger Scott'','''
||'200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Check software licenses'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tom Suess'','''
||'100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Purchase additional software licenses, if needed'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY'
||'''),''On-Hold'',''Al Bines'',''300'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Develop web pages'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY''),''Open'',''Tiger Scott'',''0'',''20'
||'00'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Plan rollout schedule'',to_date(''01/03/2016'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''Open'',''Tom Suess'',''0'','''
||'100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Conduct project kickoff meeting'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Cl'
||'osed'',''Pam King'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Customize Software Projects software'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY'''
||'),''Open'',''Tom Suess'',''600'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Enter base data (Projects, Milestones, etc.)'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/'
||'DD/YYYY''),''Open'',''Tom Suess'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Load current tasks and enhancements'',to_date(''01/04/2016'',''MM/DD/YYYY''),to_date(''01/04/2016'',''MM/DD/YYYY'')'
||',''Open'',''Tom Suess'',''400'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Create training workspace'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/18/2015'',''MM/DD/YYYY''),''Clos'
||'ed'',''James Cassidy'',''500'',''700'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish links to self-study courses'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YY'
||'YY''),''Closed'',''John Watson'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish development standards'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),'''
||'On-Hold'',''John Watson'',''1000'',''2000'');',
'  ',
'  update eba_demo_cal_projects',
'  set start_date = start_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''))',
'  ,   end_date = end_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''));',
'  ',
'  delete from eba_demo_cal_sessions;',
'',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Keynote'',                             ''GENERAL'',   ''Irene Jones'',   to_date(''20160101100000'',''YYYYMMDDHH24MISS''),to_date(''20160101110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Current Product Overview'',            ''GENERAL'',   ''Scott Spencer'', to_date(''20160101110000'',''YYYYMMDDHH24MISS''),to_date(''20160101120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160101120000'',''YYYYMMDDHH24MISS''),to_date(''20160101133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''New Features Overview'',               ''GENERAL'',   ''John  Watson'',  to_date(''20160101133000'',''YYYYMMDDHH24MISS''),to_date(''20160101143000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Planned / Upcoming Features'',         ''GENERAL'',   ''Scott Spencer'', to_date(''20160101143000'',''YYYYMMDDHH24MISS''),to_date(''20160101153000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffe Break'',                         ''BREAK'',     null,            to_date(''20160101153000'',''YYYYMMDDHH24MISS''),to_date(''20160101154500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Ask the Experts'',                     ''GENERAL'',   ''John Watson'',   to_date(''20160101154500'',''YYYYMMDDHH24MISS''),to_date(''20160101170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Open Mic Night'',                      ''GENERAL'',   null,            to_date(''20160101190000'',''YYYYMMDDHH24MISS''),to_date(''20160101214500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'                 ',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Networking Breakfast'',                ''BREAK'',     null,            to_date(''20160102073000'',''YYYYMMDDHH24MISS''),to_date(''20160102084500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Technical Overview'',                  ''TECHNICAL'', ''Tom Suess'',     to_date(''20160102084500'',''YYYYMMDDHH24MISS''),to_date(''20160102094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Common Use Cases'',                    ''BUSINESS'',  ''Russ Saunders'', to_date(''20160102084500'',''YYYYMMDDHH24MISS''),to_date(''20160102094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Building your first Web application'', ''HANDS_ON'',  ''Pam King'',      to_date(''20160102090000'',''YYYYMMDDHH24MISS''),to_date(''20160102110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Installation Tips and Tricks'',        ''TECHNICAL'', ''Hank Davis'',    to_date(''20160102094500'',''YYYYMMDDHH24MISS''),to_date(''20160102104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Success Stories'',                     ''BUSINESS'',  ''Russ Saunders'', to_date(''20160102094500'',''YYYYMMDDHH24MISS''),to_date(''20160102104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160102104500'',''YYYYMMDDHH24MISS''),to_date(''20160102110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Expanding with Plug-Ins'',             ''TECHNICAL'', ''Bob Nile'',      to_date(''20160102110000'',''YYYYMMDDHH24MISS''),to_date(''20160102120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Differentiated Data Reporting'',       ''BUSINESS'',  ''Hank Davis'',    to_date(''20160102110000'',''YYYYMMDDHH24MISS''),to_date(''20160102120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160102120000'',''YYYYMMDDHH24MISS''),to_date(''20160102133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Integrating External Frameworks'',     ''TECHNICAL'', ''Bob Nile'',      to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''From Zero to Hero for the Noob'',      ''TECHNICAL'', ''Myra Sutcliff'', to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Mobilizng Apps'',                      ''HANDS_ON'',  ''Pam King'',      to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160102144500'',''YYYYMMDDHH24MISS''),to_date(''20160102150000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Client-Side Interactivity'',           ''TECHNICAL'', ''Al Bines'',      to_date(''20160102150000'',''YYYYMMDDHH24MISS''),to_date(''20160102160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Showing ROI on your investment'',      ''BUSINESS'',  ''Hank Davis'',    to_date(''20160102150000'',''YYYYMMDDHH24MISS''),to_date(''20160102160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Server-Side Logic Utilization'',       ''TECHNICAL'', ''Myra Sutcliff'', to_date(''20160102160000'',''YYYYMMDDHH24MISS''),to_date(''20160102170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upselling to C-Level Executives'',     ''BUSINESS'',  ''Irene Jones'',   to_date(''20160102160000'',''YYYYMMDDHH24MISS''),to_date(''20160102170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Appreciation Event'',                  ''BREAK'',     null,            to_date(''20160102190000'',''YYYYMMDDHH24MISS''),to_date(''20160102223000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  ',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Networking Breakfast'',                ''BREAK'',     null,            to_date(''20160103073000'',''YYYYMMDDHH24MISS''),to_date(''20160103084500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upgrading your Apps'',                 ''TECHNICAL'', ''James Cassidy'', to_date(''20160103084500'',''YYYYMMDDHH24MISS''),to_date(''20160103094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Redevloping Legacy Apps'',             ''BUSINESS'',  ''John Watson'',   to_date(''20160103084500'',''YYYYMMDDHH24MISS''),to_date(''20160103094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Building an Advanced App'',            ''HANDS_ON'',  ''Pam King'',      to_date(''20160103090000'',''YYYYMMDDHH24MISS''),to_date(''20160103110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Application Globalization'',           ''TECHNICAL'', ''Tom Suess'',     to_date(''20160103094500'',''YYYYMMDDHH24MISS''),to_date(''20160103104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''The importance of UX and UI'',         ''BUSINESS'',  ''Russ Saunders'', to_date(''20160103094500'',''YYYYMMDDHH24MISS''),to_date(''20160103104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160103104500'',''YYYYMMDDHH24MISS''),to_date(''20160103'))
);
end;
/
begin
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(2577469011696209523)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'110000'',''YYYYMMDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Enhancing Usability'',                 ''TECHNICAL'', ''James Cassidy'', to_date(''20160103110000'',''YYYYMMDDHH24MISS''),to_date(''20160103120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Why is Accessibility Important?'',     ''BUSINESS'',  ''Scott Spencer'', to_date(''20160103110000'',''YYYYMMDDHH24MISS''),to_date(''20160103120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160103120000'',''YYYYMMDDHH24MISS''),to_date(''20160103133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Vendor Presnetations'',                ''GENERAL'',   null,            to_date(''20160103133000'',''YYYYMMDDHH24MISS''),to_date(''20160103144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160103144500'',''YYYYMMDDHH24MISS''),to_date(''20160103150000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Testing Applications'',                ''TECHNICAL'', ''Al Bines'',      to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''The Power of Citizen Developers'',     ''BUSINESS'',  ''Myra Sutcliff'', to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upgrading to the Latest Version'',     ''HANDS_ON'',  ''Pam King'',      to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Deploying Applications'',              ''TECHNICAL'', ''Hank Davis'',    to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Managing Agile Development Projects'', ''BUSINESS'',  ''Bob Nile'',      to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Wowing End Users Easily'',             ''HANDS_ON'',  ''Pam King'',      to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  ',
'  update eba_demo_cal_sessions',
'  set start_date = start_date + (trunc(SYSDATE) - TO_DATE(''01012016'',''MMDDYYYY''))',
'  ,   end_date = end_date + (trunc(SYSDATE) - TO_DATE(''01012016'',''MMDDYYYY''));',
'  ',
'  delete from eba_demo_cal_mysessions;',
'',
'end EBA_DEMO_CAL_DATA;',
'/',
'show errors',
'',
'begin',
'  EBA_DEMO_CAL_DATA;',
'  commit;',
'end;',
'/',
''))
);
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
