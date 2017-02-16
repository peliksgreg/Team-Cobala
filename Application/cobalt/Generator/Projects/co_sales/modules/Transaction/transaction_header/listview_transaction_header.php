<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View transaction header');

$page_title       = 'ListView: %%';
$db_subclass      = 'transaction_header';
$html_subclass    = 'transaction_header_html';
$arr_pkey_name    = array('transaction_header_id');
$results_per_page = LISTVIEW_RESULTS_PER_PAGE;

//user links / passport tags
$add_link         = 'Add transaction header';
$edit_link        = 'Edit transaction header';
$delete_link      = 'Delete transaction header';
$view_link        = 'View transaction header';

//pages - set to empty if you don't want to include them in the listview
$add_page         = 'add_transaction_header.php';
$edit_page        = 'edit_transaction_header.php';
$delete_page      = 'delete_transaction_header.php';
$view_page        = 'detailview_transaction_header.php';
$csv_page         = 'csv_transaction_header.php';
$report_page      = 'reporter_transaction_header.php';

//Extra entries under operations column (name of include file, not html code)
$operations_extra = '';

//Formatting and alignment options for data columns
$arr_formatting   = array();
$arr_alignment    = array();

//For custom join & select clause, you need to set the following variables so that the default
//listview components do not rely on DD data
$join_clause       = '';
$where_clause      = "";
$lst_fields        = '';
$arr_fields        = '';
$arr_field_labels  = '';
$lst_filter_fields = '';
$arr_filter_field_labels = '';
$arr_subtext_separators  = '';

//ORDER BY clause to use before a user clicks an ascending/descending column arrow.
$default_sort_order = '';

//Uncomment $print_settings and enable DEBUG_MODE to show the values of the settings for custom join & select
//$print_settings=TRUE;


require 'components/listview_proc_head.php';
require 'components/listview_proc_html.php';
require 'components/listview_proc_query.php';
require 'components/listview_body_head.php';
require 'components/listview_body_data.php';
require 'components/listview_body_end.php';