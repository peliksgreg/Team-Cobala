<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View refstudentclearance');

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_refstudentclearance.php");
    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        require 'subclasses/refstudentclearance.php';
        $dbh_refstudentclearance = new refstudentclearance;

        if($message=="")
        {
            log_action('Exported table data to CSV');
            $timestamp = date('Y-m-d');
            $token = generate_token(0,'fs');
            $csv_name = $token . $_SESSION['user'] . '_refstudentclearance_' . $timestamp . '.csv';
            $filename = TMP_DIRECTORY . '/' .  $csv_name;

            $csv_contents = $dbh_refstudentclearance->export_to_csv();

            $csv_file=fopen($filename,"wb");
            fwrite($csv_file, $csv_contents);
            fclose($csv_file);
            chmod($filename, 0755);

            $csv_name = urlencode($csv_name);
            $message='CSV file successfully generated: <a href="/' . BASE_DIRECTORY . '/download_generic.php?filename=' . $csv_name . '">Download the CSV file.</a>';
            $message_type='system';
        }
    }
}

require 'subclasses/refstudentclearance_html.php';
$html = new refstudentclearance_html;
$html->draw_header('CSV Exporter: %%', $message, $message_type);

echo '<div class="container">';
echo '<fieldset class="container_invisible">';
$html->draw_fieldset_header('Table Data to CSV Export');
$html->draw_fieldset_body_start();
echo '<tr><td>';
$html->display_info('Exporting data to CSV will let you have an offline backup of this module.');
$html->display_tip('Your system admin can use this CSV file to restore data for this module in case of catastrophic data loss on the server.');
echo '</td></tr>';
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
$html->draw_submit_cancel();
$html->draw_fieldset_footer_end();
echo '</fieldset>';
echo '</div>';

$html->draw_footer();