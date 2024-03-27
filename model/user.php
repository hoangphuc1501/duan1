<?php 
    include_once 'pdo.php';
    function checkLogin($email, $pass){
        $sql = "SELECT * FROM users WHERE email=? AND password=?";
        return pdo_query_one($sql, $email, $pass);
    }

    function userRegister($userName, $name, $email, $pass, $phone){
        $sql = "INSERT INTO users(userName, fullName, email, password, phoneNumber) VALUE (?,?,?,?,?)";
        return pdo_execute($sql,$userName, $name, $email, $pass, $phone);
    }


    // admin
    function userList(){
        $sql = "SELECT * FROM users";
        return pdo_query($sql);
    }
?>