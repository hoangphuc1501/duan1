<?php
include_once '../model/user.php';
extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'login':
            if (isset($login_submit)) {
                $data = checkLogin($email, $pass);
                if ($data) {
                    $_SESSION['user'] = $data;
                    header('location: ?mod=page&act=home');
                    print_r($data);
                } else {
                    $data = "Đăng nhập thất bại";
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-login.php';
            include_once 'view/template-footer.php';
            break;
        case 'register':
            if (isset($register_submit)) {
                if ($pass != $repass) {
                    $data = "Nhập mật khẩu không khớp";
                } else {
                    userRegister($userName, $name, $email, $pass, $phone);
                    header('location: ?mod=user&act=login');
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-register.php';
            include_once 'view/template-footer.php';
            break;
        case 'info':
            include_once 'view/template-header.php';
            include_once 'view/page-info.php';
            include_once 'view/template-footer.php';
            break;
        case 'forgotPassword':
            // if (isset($forgot_submit)){
            //     $forgotPass = forgotPass($email);
            //     if(is_array($forgotPass)){
            //         $Notification =  substr(md5( rand(0,999999)), 0, 8);
                    
            //     }else{
            //         $Notification = "Email không tồn tại";
            //     }
            // }
            if (isset($forgot_submit)) {
                $forgotPass = forgotPass($email);
                if ($forgotPass) {
                    $newPassword = substr(md5(rand(0, 999999)), 0, 8);
                    $updatedPass = updatedPass($email, $newPassword);

                    if ($updatedPass) {
                        $Notification = "Mật khẩu đã được cập nhật thành công.";
                        
                    } else {
                        $Notification = "Có lỗi xảy ra khi cập nhật mật khẩu.";
                    }
                } else {
                    $Notification = "Email không tồn tại";
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-forgot-password.php';
            include_once 'view/template-footer.php';
            break;
        case 'changePassword':
            include_once 'view/template-header.php';
            include_once 'view/page-change-password.php';
            include_once 'view/template-footer.php';
            break;
    }
}

?>