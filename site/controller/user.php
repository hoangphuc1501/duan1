<?php
include_once '../model/user.php';
extract($_REQUEST);
if (isset ($act)) {
    switch ($act) {
        case 'login':
            if(isset($login_submit)){
                $data = checkLogin($email, $pass);
                if($data){
                    $_SESSION['user']=$data;
                    header('location: ?mod=page&act=home');
                }else{
                    $data = "Đăng nhập thất bại";
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-login.php';
            include_once 'view/template-footer.php';
            break;
        case 'register':
            if(isset($register_submit)){
                if($pass!=$repass){
                    $data = "Nhập mật khẩu không khớp";
                }else{
                    userRegister($userName, $name, $email, $pass, $phone);
                    header('location: ?mod=user&act=login');
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-register.php';
            include_once 'view/template-footer.php';
            break;
    }
}

?>