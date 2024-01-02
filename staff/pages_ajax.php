<?php
include('conf/pdoconfig.php');
if (!empty($_POST["eBankAccountType"])) {
    //get bank account rate
    $id = $_POST['eBankAccountType'];
    $stmt = $DB_con->prepare("SELECT * FROM tbl_acc_types WHERE  name = :id");
    $stmt->execute(array(':id' => $id));
?>
<?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
<?php echo htmlentities($row['rate']); ?>
<?php
    }
}

if (!empty($_POST["eBankAccNumber"])) {
    //get  back account transferables name
    $id = $_POST['eBankAccNumber'];
    $stmt = $DB_con->prepare("SELECT * FROM tbl_bankaccounts WHERE  account_number= :id");
    $stmt->execute(array(':id' => $id));
?>
<?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
<?php echo htmlentities($row['acc_name']); ?>
<?php
    }
}

if (!empty($_POST["eBankAccHolder"])) {
    //get  back account transferables name
    $id = $_POST['eBankAccHolder'];
    $stmt = $DB_con->prepare("SELECT * FROM tbl_bankaccounts WHERE  account_number= :id");
    $stmt->execute(array(':id' => $id));
?>
<?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
<?php echo htmlentities($row['client_name']); ?>
<?php
    }
}

?>


