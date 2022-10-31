<?php
// Import Database Connection And Class
require("db-config.php");

// Set JSON As Content-Type
header("Content-Type: application/json; charset=utf-8");






/* --------------------- */
/* GET REQUEST | ACTIONS */
/* --------------------- */
if ($_SERVER["REQUEST_METHOD"] === "GET") {
    // Select Data
    $all_rows = $db->Select("SELECT * FROM `fruits_list` ORDER BY `id` ASC");

    // Display Data As JSON
    die(json_encode($all_rows));
}






/* ---------------------- */
/* POST REQUEST | ACTIONS */
/* ---------------------- */
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Get Raw POST Data As Associative Array
    $raw_data = json_decode(file_get_contents("php://input"), TRUE);

    // Display Raw Data
    # echo json_encode($raw_data);

    // Define Data Variables
    $target_id       = $raw_data["target_id"];
    $target_cell     = $raw_data["target_cell"];
    $target_new_data = $raw_data["target_new_data"];

    // Update Database
    try {
        $db->Update(
            "UPDATE `fruits_list`
                SET $target_cell = :table_cell
                    WHERE `id`   = :id",
            [
                // Update Data
                "table_cell" => $target_new_data,
                "id"         => $target_id
            ]
        );

        // Cell Updated
        die(json_encode(["cell_updated" => TRUE]));
    } catch (Exception $e) {
        // Cell Not Updated
        die(json_encode(["cell_updated" => FALSE]));
    }
}






// Terminate Program
die();
