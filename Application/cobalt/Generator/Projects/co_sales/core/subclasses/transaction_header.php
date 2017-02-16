<?php
require_once 'transaction_header_dd.php';
class transaction_header extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = transaction_header_dd::load_dictionary();
        $this->relations  = transaction_header_dd::load_relationships();
        $this->subclasses = transaction_header_dd::load_subclass_info();
        $this->table_name = transaction_header_dd::$table_name;
        $this->tables     = transaction_header_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('transaction_header_id, date, employee_id, client_id, or number, amount_due, amount_tendered, change_due, total_cash, total_credit, total_check, total_debit, total_gift_card, total_gift_certificate, total_coupon, total_voucher, total_discount, vatable_sale, VAT Amount, vat_zero_rated_sale, vat_exempt_sale, cancelled');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isiisdddddddddddddddds',
                                 &$this->fields['transaction_header_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['client_id']['value'],
                                 &$this->fields['or number']['value'],
                                 &$this->fields['amount_due']['value'],
                                 &$this->fields['amount_tendered']['value'],
                                 &$this->fields['change_due']['value'],
                                 &$this->fields['total_cash']['value'],
                                 &$this->fields['total_credit']['value'],
                                 &$this->fields['total_check']['value'],
                                 &$this->fields['total_debit']['value'],
                                 &$this->fields['total_gift_card']['value'],
                                 &$this->fields['total_gift_certificate']['value'],
                                 &$this->fields['total_coupon']['value'],
                                 &$this->fields['total_voucher']['value'],
                                 &$this->fields['total_discount']['value'],
                                 &$this->fields['vatable_sale']['value'],
                                 &$this->fields['VAT Amount']['value'],
                                 &$this->fields['vat_zero_rated_sale']['value'],
                                 &$this->fields['vat_exempt_sale']['value'],
                                 &$this->fields['cancelled']['value']);

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
            $this->set_update("transaction_header_id = ?, date = ?, employee_id = ?, client_id = ?, or number = ?, amount_due = ?, amount_tendered = ?, change_due = ?, total_cash = ?, total_credit = ?, total_check = ?, total_debit = ?, total_gift_card = ?, total_gift_certificate = ?, total_coupon = ?, total_voucher = ?, total_discount = ?, vatable_sale = ?, VAT Amount = ?, vat_zero_rated_sale = ?, vat_exempt_sale = ?, cancelled = ?");
            $this->set_where("transaction_header_id = ?");

            $bind_params = array('isiisddddddddddddddddsi',
                                 &$this->fields['transaction_header_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['client_id']['value'],
                                 &$this->fields['or number']['value'],
                                 &$this->fields['amount_due']['value'],
                                 &$this->fields['amount_tendered']['value'],
                                 &$this->fields['change_due']['value'],
                                 &$this->fields['total_cash']['value'],
                                 &$this->fields['total_credit']['value'],
                                 &$this->fields['total_check']['value'],
                                 &$this->fields['total_debit']['value'],
                                 &$this->fields['total_gift_card']['value'],
                                 &$this->fields['total_gift_certificate']['value'],
                                 &$this->fields['total_coupon']['value'],
                                 &$this->fields['total_voucher']['value'],
                                 &$this->fields['total_discount']['value'],
                                 &$this->fields['vatable_sale']['value'],
                                 &$this->fields['VAT Amount']['value'],
                                 &$this->fields['vat_zero_rated_sale']['value'],
                                 &$this->fields['vat_exempt_sale']['value'],
                                 &$this->fields['cancelled']['value'],
                                 $param['orig_transaction_header_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
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
        $this->set_where("transaction_header_id = ?");

        $bind_params = array('i',
                             &$this->fields['transaction_header_id']['value']);

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
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("transaction_header_id = ? AND (transaction_header_id != '$orig_transaction_header_id')");

        $bind_params = array('i',
                             &$this->fields['transaction_header_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
