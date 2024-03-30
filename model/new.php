<?php 
    include_once 'pdo.php';

    function service(){
    $sql = "SELECT * FROM news WHERE category = 'Dịch vụ'";
    return pdo_query($sql);
}    function knowledge(){
        $sql = "SELECT * FROM news WHERE category = 'Kiến thức' LIMIT 4";
        return pdo_query($sql);
    }

    function newList(){
        $sql = "SELECT * FROM news WHERE category = 'Tin tức' LIMIT 4";
        return pdo_query($sql);
    }
    
?>