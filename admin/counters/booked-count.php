<?php
    include '../includes/dbconn.php';

    $sql = "SELECT id FROM booking";
                $query = $mysqli->query($sql);
                echo "$query->num_rows";
?>