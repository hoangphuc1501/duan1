<?php
include_once 'pdo.php';
function checkLogin($email, $pass)
{
    $sql = "SELECT * FROM users WHERE email=? AND password=?";
    return pdo_query_one($sql, $email, $pass);
}

function userRegister($userName, $name, $email, $pass, $phone)
{
    $sql = "INSERT INTO users(userName, fullName, email, password, phoneNumber) VALUE (?,?,?,?,?)";
    return pdo_execute($sql, $userName, $name, $email, $pass, $phone);
}

// hàm quên mật khẩu
function forgotPass($email)
{
    $sql = "SELECT * FROM users WHERE email =?";
    return pdo_query_one($sql, $email);
}
function updatedPass($email, $newPassword){
    $sql = "UPDATE users SET password = ? WHERE email = ?";
    return pdo_execute($sql, $email, $newPassword);
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
function userList()
{
    $sql = "SELECT * FROM users";
    return pdo_query($sql);
}
?>