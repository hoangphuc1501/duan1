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
                    userRegister($userName, $name, $email, $pass, $phone,$address);
                    header('location: ?mod=user&act=login');
                }
            }
            include_once 'view/template-header.php';
            include_once 'view/page-register.php';
            include_once 'view/template-footer.php';
            break;
        case 'info':
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
            if (isset($forgot_submit)) {
                $forgotPass = forgotPass($email);
                if ($forgotPass) {
                    $newPassword = substr(md5(rand(0, 999999)), 0, 8);
                    // print_r($email . " " . $newPassword);
                    $updatedPass = updatedPass($email, $newPassword);       
                    if ($updatedPass) {
                        $Notification = "Mật khẩu đã được cập nhật thành công.";
                        // chờ hàm php mail
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
        case 'updateInfo':
            if(isset($update_info_submit)){
                $user = userOne($id);
                if($_FILES['image']['name'] != null){
                    userUpdate($id,$userName, $name, $email, $phone, $address,$_FILES['image']['name']);
                    move_uploaded_file(['image']['tmp_name'],'../assets/image/'.$_FILES['image']['name']);
                }else{
                    userUpdate($id,$userName, $name, $email, $phone, $address, $user['image']);
                }
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