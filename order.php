<?php

require "Controller/OrderController.php";
require "Controller/ProductController.php";
$order = new OrderController();
$product = new ProductController();
$tableid = $_GET['table'];
session_start();
echo $_SESSION['orderid'];

$products = $_SESSION['products'];
require "head.php";
?>

<div class="create-order">
    <form method="post">
        tafelnummer: <?= $tableid?>
        <br>
        <input type="submit" name="createOrder" class="btn btn-primary">
    </form>
    <?php
    if (isset($_POST['createOrder'])) {

         $orderId = $order->createOrder($tableid, 1);
         $_SESSION["orderid"] = $orderId;
    }
    ?>
</div>

<div class="products-list">
    <?php
    foreach ($product->getProducts() as $item) {?>
    <div class="product-item">
        <form method="post">
            <input type="submit" class="btn btn-secondary" name="submit" value="<?= $item->name ?>">
            <input type="hidden" name="productid" value="<?= $item->id ?>">
        </form>
    </div>
    <?php
    }?>
    
    <?php
    if (isset($_POST['submit'])){
//        array_push($products, (int)$_POST['productid']);
        $products[] = $_POST['productid'];
        $_SESSION['products'] = $products;
    }
    var_dump($products)
    ?>
</div>

<div class="submit-order">
    <form method="post">
        <input type="submit" name="sendOrder" class="btn btn-primary">
    </form>
    <?php
    if (isset($_POST['sendOrder'])) {
        $orderId = $_SESSION['orderid'];
        $productArray = json_encode($_SESSION['products']);
        $order->createOrderProduct($productArray, $orderId);
        session_unset();
    }
    ?>
</div>


