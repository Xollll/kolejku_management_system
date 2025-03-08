<?php
    $DB_host = "localhost";
    $DB_user = "root";
    $DB_pass = "";
    $DB_name = "hostelupsi";
    $DB_port = "3366";
    try
    {
        $DB_con = new PDO("mysql:host={$DB_host};port={$DB_port};dbname={$DB_name}", $DB_user, $DB_pass);
        $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
        catch(PDOException $e)
    {
        $e->getMessage();
    }
?>