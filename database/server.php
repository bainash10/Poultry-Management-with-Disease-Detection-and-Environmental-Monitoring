<?php

$u_supplier ="";
$u_date ="";
$u_l_no ="";
$u_telephone ="";
$u_address ="";
$u_u_price ="";
$u_type ="";
$u_rate ="";
$u_t_amount ="";
$u_name ="";
$u_city ="";
$u_state ="";
$u_country ="";
$u_comments ="";
$u_u_name = "";
$u_email ="";
$u_customer ="";
$u_u_customer ="";
$unit_price ="";
$edit_state ="";
$reset_state ="";

$mysqli = mysqli_connect("localhost", "root", "", "pofarms_db");

if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
 } 
//else {
//     echo "Connection successful";
// }


?>