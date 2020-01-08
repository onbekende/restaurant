<?php
/**
 * Created by PhpStorm.
 * User: onbek
 * Date: 8-1-2020
 * Time: 17:19
 */

class OrderController
{
    protected $conn;

    public function __construct()
    {
        global $conn;
        $this->conn = $conn;
    }

    public function createOrder($tableid, $reservated) {
        $query = "INSERT INTO ordertable VALUES(0,'$reservated',$tableid)";
        $stm = $this->conn->prepare($query);
        $stm->execute();
        return $this->conn->lastInsertId();
    }

    public function createOrderProduct($productids, $orderid)
    {
        $productids = json_decode($productids);
        foreach ($productids as $productid) {
            $query = "INSERT INTO ordertableproduct VALUES(0,$orderid,$productid)";
            $stm = $this->conn->prepare($query);
            $stm->execute();
        }
        return true;
    }

}