<?php
class refsubjectofferinghdr_dd
{
    static $table_name = 'refsubjectofferinghdr';
    static $readable_name = 'Subject Offering Header';

    static function load_dictionary()
    {
        $fields = array(
                    'subject_offering_id' => array('value'=>'',
                                          'nullable'=>FALSE,
                                          'data_type'=>'integer',
                                          'length'=>20,
                                          'required'=>FALSE,
                                          'attribute'=>'primary key',
                                          'control_type'=>'textbox',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Subject Offering ID',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>FALSE,
                                          'char_set_method'=>'generate_num_set',
                                          'char_set_allow_space'=>FALSE,
                                          'extra_chars_allowed'=>'-',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'',
                                          'list_settings'=>array(''),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'center',
                                          'rpt_show_sum'=>TRUE),
                    'term_id' => array('value'=>'',
                                          'nullable'=>FALSE,
                                          'data_type'=>'integer',
                                          'length'=>20,
                                          'required'=>TRUE,
                                          'attribute'=>'foreign key',
                                          'control_type'=>'drop-down list',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Term',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>TRUE,
                                          'char_set_method'=>'generate_num_set',
                                          'char_set_allow_space'=>FALSE,
                                          'extra_chars_allowed'=>'-',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'sql generated',
                                          'list_settings'=>array('query' => "SELECT term.term_id AS `Queried_term_id`, term.school_year, term.term FROM term ORDER BY `school_year`, `term`",
                                                                     'list_value' => 'Queried_term_id',
                                                                     'list_items' => array('school_year', 'term'),
                                                                     'list_separators' => array()),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'center',
                                          'rpt_show_sum'=>TRUE),
                    'subject_id' => array('value'=>'',
                                          'nullable'=>FALSE,
                                          'data_type'=>'integer',
                                          'length'=>20,
                                          'required'=>TRUE,
                                          'attribute'=>'foreign key',
                                          'control_type'=>'drop-down list',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Subject',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>TRUE,
                                          'char_set_method'=>'generate_num_set',
                                          'char_set_allow_space'=>FALSE,
                                          'extra_chars_allowed'=>'-',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'sql generated',
                                          'list_settings'=>array('query' => "SELECT subject.subject_id AS `Queried_subject_id`, subject.subject_name FROM subject ORDER BY `subject_name`",
                                                                     'list_value' => 'Queried_subject_id',
                                                                     'list_items' => array('subject_name'),
                                                                     'list_separators' => array()),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'center',
                                          'rpt_show_sum'=>TRUE),
                    'section' => array('value'=>'',
                                          'nullable'=>TRUE,
                                          'data_type'=>'varchar',
                                          'length'=>255,
                                          'required'=>TRUE,
                                          'attribute'=>'',
                                          'control_type'=>'textbox',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Section',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>TRUE,
                                          'char_set_method'=>'',
                                          'char_set_allow_space'=>TRUE,
                                          'extra_chars_allowed'=>'',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'',
                                          'list_settings'=>array(''),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'left',
                                          'rpt_show_sum'=>FALSE),
                    'subject_code' => array('value'=>'',
                                          'nullable'=>FALSE,
                                          'data_type'=>'varchar',
                                          'length'=>250,
                                          'required'=>TRUE,
                                          'attribute'=>'',
                                          'control_type'=>'textbox',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Subject Code',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>TRUE,
                                          'char_set_method'=>'',
                                          'char_set_allow_space'=>TRUE,
                                          'extra_chars_allowed'=>'',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'',
                                          'list_settings'=>array(''),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'left',
                                          'rpt_show_sum'=>FALSE)
                       );
        return $fields;
    }

    static function load_relationships()
    {
        $relations = array(array('type'=>'1-1',
                                 'table'=>'term',
                                 'alias'=>'',
                                 'link_parent'=>'term_id',
                                 'link_child'=>'term_id',
                                 'link_subtext'=>array('school_year','term'),
                                 'where_clause'=>''),
                           array('type'=>'1-1',
                                 'table'=>'subject',
                                 'alias'=>'',
                                 'link_parent'=>'subject_id',
                                 'link_child'=>'subject_id',
                                 'link_subtext'=>array('subject_name'),
                                 'where_clause'=>''),
                           array('type'=>'1-M',
                                 'table'=>'refsubjectofferingdtl',
                                 'link_parent'=>'subject_offering_id',
                                 'link_child'=>'subject_offering_id',
                                 'where_clause'=>''));

        return $relations;
    }

    static function load_subclass_info()
    {
        $subclasses = array('html_file'=>'refsubjectofferinghdr_html.php',
                            'html_class'=>'refsubjectofferinghdr_html',
                            'data_file'=>'refsubjectofferinghdr.php',
                            'data_class'=>'refsubjectofferinghdr');
        return $subclasses;
    }

}