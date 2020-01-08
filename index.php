<?php
require "Controller/TableController.php";
$table = new TableController();
?>

<!doctype html>
<html lang="en">
<?php require "head.php";?>
<body>
<div class="tables">
    <?php
       $tables= $table->getTables();

       foreach ($tables as $item) { ?>
        <a href="order.php?table=<?=$item->tableid ?>" class="btn btn-primary"><?= $item->name ?></a>
    <?php
       }
    ?>
    <a href="" class="btn btn-primary">tablename</a>
</div>
</body>
</html>
