<?php
include_once 'pdo.php';
//  function other_list(){
//     $sql = "SELECT * FROM orders Inner join users on orders.usersID = users.usersID";
//     return pdo_query($sql);
// }

function other_list(){
    $sql = "SELECT * FROM orders ";
    return pdo_query($sql);
}

?>