<?php
require_once 'transaction_details_dd.php';
class transaction_details extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = transaction_details_dd::load_dictionary();
        $this->relations  = transaction_details_dd::load_relationships();
        $this->subclasses = transaction_details_dd::load_subclass_info();
        $this->table_name = transaction_details_dd::$table_name;
        $this->tables     = transaction_details_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('entry_id, transaction_header_id, product_id, unit_price, quantity, net_amount, discount_type, discount_value');
            $this->set_values("?,?,?,?,?,?,?,?");

            $bind_params = array('iiididsd',
                                 &$this->fields['entry_id']['value'],
                                 &$this->fields['transaction_header_id']['value'],
                                 &$this->fields['product_id']['value'],
                                 &$this->fields['unit_price']['value'],
                                 &$this->fields['quantity']['value'],
                                 &$this->fields['net_amount']['value'],
                                 &$this->fields['discount_type']['value'],
                                 &$this->fields['discount_value']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("transaction_header_id = ?, product_id = ?, unit_price = ?, quantity = ?, net_amount = ?, discount_type = ?, discount_value = ?");
            $this->set_where("entry_id = ?");

            $bind_params = array('iididsdi',
                                 &$this->fields['transaction_header_id']['value'],
                                 &$this->fields['product_id']['value'],
                                 &$this->fields['unit_price']['value'],
                                 &$this->fields['quantity']['value'],
                                 &$this->fields['net_amount']['value'],
                                 &$this->fields['discount_type']['value'],
                                 &$this->fields['discount_value']['value'],
                                 &$this->fields['entry_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("entry_id = ?");

        $bind_params = array('i',
                             &$this->fields['entry_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("transaction_header_id = ?");

        $bind_params = array('i',
                             &$this->fields['transaction_header_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("entry_id = ?");

        $bind_params = array('i',
                             &$this->fields['entry_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);


        $this->set_query_type('SELECT');
        $this->set_where("entry_id = ? AND (entry_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['entry_id']['value'],
                             &$this->fields['entry_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
