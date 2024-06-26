<?php
include_once 'pdo.php';
function checkLogin($email, $pass){
    $sql = "SELECT * FROM users WHERE email=? AND password=?";
    return pdo_query_one($sql, $email, $pass);
}

function userRegister($userName, $name, $email, $pass, $phone, $address){
    $sql = "INSERT INTO users(userName, fullName, email, password, phoneNumber, address) VALUE (?,?,?,?,?,?)";
    return pdo_execute($sql, $userName, $name, $email, $pass, $phone,$address);
}

function userOne($id){
    $sql = "SELECT * FROM users WHERE usersID=?";
    return pdo_query_one($sql,$id);
}

// hàm quên mật khẩu
function forgotPass($email){
    $sql = "SELECT * FROM users WHERE email =?";
    return pdo_query_one($sql, $email);
}
// hàm cập nhật mật khẩu
function updatedPass($email, $newPassword){
    $sql = "UPDATE users SET password = '$newPassword' WHERE email = '$email'";
    pdo_execute($sql);
    return $sql;
}
function changePass($email ,$oldPassword, $newPassword1){
    $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$oldPassword'";
    return pdo_query($sql);
}

function userUpdate($id, $userName, $name, $email, $phone, $address){
    $sql = "UPDATE users SET userName=?, fullName=?, email=?, phoneNumber =?, address=? WHERE usersID=?";
    return pdo_execute($sql, $userName, $name, $email, $phone, $address, $id);
}
// function updatePass($email, $newPassword){
//     $sql = "UPDATE users SET password = ? WHERE email = ?";
//     return pdo_execute($sql, $email, $newPassword);
// }  

// liên hệ
function contactForm($fullname, $email, $phone, $content){
    $ndthu = "Có khách hàng liên hệ : <br><br>
            Email : <b> $email </b> <br>
            Họ tên : <b> $fullname </b>
            Số điện thoại : <b> $phone </b>
            <hr>
            $content
            ";
    require "../PHPMailer-master/PHPMailer-master/src/PHPMailer.php";
    require "../PHPMailer-master/PHPMailer-master/src/SMTP.php";
    require '../PHPMailer-master/PHPMailer-master/src/Exception.php';
    $mail = new PHPMailer\PHPMailer\PHPMailer(true);//true:enables exceptions
    try {
        $mail->SMTPDebug = 0; //0,1,2: chế độ debug
        $mail->isSMTP();
        $mail->CharSet = "utf-8";
        $mail->Host = 'smtp.gmail.com';  //SMTP servers
        $mail->SMTPAuth = true; // Enable authentication
        $mail->Username = 'katakuri10000@gmail.com'; // SMTP username
        $mail->Password = 'myzr szzz fkpg ycwq';   // SMTP password
        $mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
        $mail->Port = 465;  // port to connect to                
        $mail->setFrom( $email);
        $mail->addAddress('katakuri10000@gmail.com');
        $mail->isHTML(true);  // Set email format to HTML
        $mail->Subject = 'Thư liên hệ';
        $noidungthu = $ndthu;
        $mail->Body = $noidungthu;
        $mail->smtpConnect(
            array(
                "ssl" => array(
                    "verify_peer" => false,
                    "verify_peer_name" => false,
                    "allow_self_signed" => true
                )
            )
        );
        $mail->send();
        // echo 'Đã gửi mail xong';
    } catch (Exception $e) {
        echo 'Error: ', $mail->ErrorInfo;
    }
}
// admin
function userList(){
    $sql = "SELECT * FROM users";
    return pdo_query($sql);
}

function forgotPassMail( $email, $newPassword){
require "../PHPMailer-master/PHPMailer-master/src/PHPMailer.php";
require "../PHPMailer-master/PHPMailer-master/src/SMTP.php";
require '../PHPMailer-master/PHPMailer-master/src/Exception.php';
$mail = new PHPMailer\PHPMailer\PHPMailer(true);//true:enables exceptions
try {
$mail->SMTPDebug = 0; //0,1,2: chế độ debug
$mail->isSMTP();
$mail->CharSet = "utf-8";
$mail->Host = 'smtp.gmail.com';  //SMTP servers
$mail->SMTPAuth = true; // Enable authentication
$mail->Username = 'katakuri10000@gmail.com'; // SMTP username
$mail->Password = 'myzr szzz fkpg ycwq';   // SMTP password
$mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
$mail->Port = 465;  // port to connect to                
$mail->setFrom( 'katakuri10000@gmail.com');
$mail->addAddress($email);
$mail->isHTML(true);  // Set email format to HTML
$mail->Subject = 'Thư gửi lại mật khẩu';
$noidungthu = " Mật khẩu của bạn là {$newPassword}";
$mail->Body = $noidungthu;
$mail->smtpConnect(
    array(
        "ssl" => array(
            "verify_peer" => false,
            "verify_peer_name" => false,
            "allow_self_signed" => true
        )
    )
);
$mail->send();
// echo 'Đã gửi mail xong';
} catch (Exception $e) {
echo 'Error: ', $mail->ErrorInfo;
}
}





// trang admin
function user_list(){
    $sql = "SELECT * FROM users";
    return pdo_query($sql);
}

function user_add($email, $matKhau,$name,$DiaChi, $Sdt, $vaiTro, $hinhAnh,$TrangThai ){
    $sql = "INSERT INTO users(Email,password,fullName,address,phoneNumber, Admin, image, status) VALUES(?, ?, ?, ?, ?, ?,?,?)";
    return pdo_query($sql,$email, $matKhau,$name,$DiaChi, $Sdt, $vaiTro, $hinhAnh,$TrangThai);
}

function user_delete($id){
    $sql = "DELETE FROM users WHERE usersID=?";
    return pdo_execute($sql, $id);
}


function check_login($email, $pass){
    $sql = "SELECT * FROM users WHERE Email=? AND password=?";
    return pdo_query_one($sql, $email, $pass);
}

function user_one($id){
    $sql = " SELECT * FROM users WHERE usersID=?";
    return pdo_query_one($sql, $id);
}

function user_register($name, $email, $pass, $address, $phone, $image){
    $sql = "INSERT INTO KhachHang(HoTen, Email, MatKhau, DiaChi, SDT, Anh) VALUE (?,?,?,?,?,?)";
    return pdo_execute($sql, $name, $email, $pass, $address, $phone, $image);
}

function user_edit($id,$email,$matKhau,$name,$DiaChi,$Sdt,$vaiTro,$hinhAnh,$TrangThai){
    $sql = "UPDATE users SET email =?,password =?, userName =?,address=?,phoneNumber=?,admin =?,image=?,status=? WHERE usersID =?";
    return pdo_execute($sql,$email,$matKhau,$name,$DiaChi,$Sdt,$vaiTro,$hinhAnh,$TrangThai,$id);
}
?>

