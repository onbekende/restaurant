<?php
/**
 * Created by PhpStorm.
 * User: onbek
 * Date: 8-1-2020
 * Time: 17:10
 */

require "connection.php";

class TableController
{
    protected $conn;

    public function __construct()
    {
        global $conn;
        $this->conn = $conn;
    }

    public function getTables() {
        $query ="SELECT * FROM restauranttable";
        $stm = $this->conn->prepare($query);
        $stm->execute();
        return $stm->fetchAll(PDO::FETCH_OBJ);
    }
}