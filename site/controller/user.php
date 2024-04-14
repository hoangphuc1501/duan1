<?php
include_once '../model/user.php';
include_once '../model/category.php';
extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'login':
            $categoryList = categoryList();
            $emailError = "";
            $passwordError = "";
            if (isset($login_submit)) {
                $data = checkLogin($email, $pass);
                if(empty($email)){
                    $emailError = "Bạn chưa nhập email";
                }
                if(empty($password)){
                    $passwordError = "Bạn chưa nhập nhập mật khẩu";
                }
                if ($data) {
                    $_SESSION['user'] = $data;
                    header('location: ?mod=page&act=home');
                } else {
                    $data = "Đăng nhập thất bại";
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-login.php';
            include_once 'view/template-footer.php';
            break;
        case 'register':
            $categoryList = categoryList();
            $data = $userNameError="";
            $emailError = "";
            $passwordError = "";
            $nameError = "";
            $phoneError="";
            $addressError="";
            
            if (isset($register_submit)) {
                if(empty($userName)){
                    $userNameError = "Vui lòng nhập tên tài khoản";
                }
                if(empty($name)){
                    $nameError = "Vui lòng nhập họ và tên";
                }
                if(empty($email)){
                    $emailError = "Vui lòng nhập email";
                }
                if(empty($phone)){
                    $phoneError = "Vui lòng nhập số điện thoại";
                }
                if(empty($address)){
                    $addressError = "Vui lòng nhập địa chỉ";
                }
                if(empty($password)){
                    $passwordError = "Vui lòng nhập mật khẩu";
                }
                if ($pass != $repass) {
                    $data = "Nhập mật khẩu không khớp";
                } else {
                    userRegister($userName, $name, $email, $pass, $phone,$address);
                    header('location: ?mod=user&act=login');
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-register.php';
            include_once 'view/template-footer.php';
            break;
        case 'info':
            $categoryList = categoryList();
            $id = $_SESSION['user']['usersID'];
            // print_r($id);
            $user = userOne($id);
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
            
            $categoryList = categoryList();
            if (isset($forgot_submit)) {
                $forgotPass = forgotPass($email);
                if ($forgotPass) {
                    $newPassword = substr(md5(rand(0, 999999)), 0, 8);
                    // print_r($email . " " . $newPassword);
                    $updatedPass = updatedPass($email, $newPassword);       
                    if ($updatedPass) {
                        $Notification = "Mật khẩu đã được cập nhật thành công.";
                        // chờ hàm php mail
                        forgotPassMail( $email, $newPassword);
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
            $categoryList = categoryList();
            if(isset($change_submit)){
                $changePass = changePass($email ,$oldPassword, $newPassword1);
                if($newPassword1 !== $newPassword2){
                    $Notification = "Mật khẩu mới không khớp. Vui lòng nhập lại.";
                } else {
                    if($changePass){
                        updatedPass($email, $newPassword1);
                        $Notification = "Mật khẩu đã được cập nhật thành công.";
                        // header('location: ?mod=user&act=info');
                        // Gửi email thông báo
                    } else {
                        $Notification = "Mật khẩu cũ không đúng.";
                    }
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-change-password.php';
            include_once 'view/template-footer.php';
            break;
        case 'updateInfo':
            $categoryList = categoryList();
            $user = userOne($id);
            if(isset($update_info_submit)){
                userUpdate($id, $userName, $name, $email, $phone, $address);
                header('location: ?mod=user&act=info');
            }
            include_once 'view/template-header.php';
            include_once 'view/page-update-info.php';
            include_once 'view/template-footer.php';
            break;
        case 'logout':
            unset($_SESSION['user']);
            header('location: ?mod=page&act=home');
            break;
    }
}

?>