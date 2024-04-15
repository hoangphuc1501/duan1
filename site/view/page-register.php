<section class="wrapper">
    <div class="login-form-list">
        <form action="" method="POST" class="form" id="form-1">
            <h3 class="heading">Đăng Ký</h3>
            <div class="spacer"></div>

            <div class="form-group">
                <input id="username" name="userName" type="text" placeholder="Tên đăng nhập" class="form-control">
                <label for=""><i class="fa-solid fa-user"></i></label>
                <span class="form-message" id="errUserName"></span>
            </div>
            <div class="form-group">
                <input id="fullname" name="name" type="text" placeholder="Họ & Tên" class="form-control">
                <label for=""><i class="fa-solid fa-user"></i></label>
                <span class="form-message" id="errFullname"> </span>
            </div>
            <div class="form-group">
                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                <label for=""><i class="fa-solid fa-envelope"></i></label>
                <span class="form-message" id="errEmail"></span>
            </div>
            <div class="form-group">
                <input id="phoneNumber" name="phone" type="text" placeholder="Số điện thoại" class="form-control">
                <label for=""><i class="fa-solid fa-phone"></i></label>
                <span class="form-message"> </span>
            </div>
            <div class="form-group">
                <input id="address" name="address" type="text" placeholder="Địa chỉ" class="form-control">
                <label for=""><i class="fa-solid fa-location-dot"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="password" name="pass" type="password" placeholder="Nhập mật khẩu" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message" id="errPass1"></span>
            </div>
            <div class="form-group">
                <input id="password_confirmation" name="repass" placeholder="Nhập lại mật khẩu"
                    type="password" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message" id="errPass2"></span>
            </div>

            <?php if (isset ($data)): ?>
                <div class="alert alert-warning" role="alert">
                    <?= $data; ?>
                </div>
            <?php endif;
            unset($data); ?>
            <button class="form-submit" name="register_submit" type="submit" onclick=  "return  formValid();">Đăng ký</button>
            <p>hoặc sử dụng tài khoản của bạn</p>
            <div class="form-account">
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                <a href="#"><i class="fa-solid fa-g"></i></a>
                <a href="#"><i class="fa-brands fa-twitter"></i></a>
            </div>
            <div class="tab display-flex">
                <p>Bạn đã có tài khoản?</p><a href="?mod=user&act=login">Đăng nhập</a>
            </div>
            <!-- Báo lỗi khi người dùng không điền đúng thông tin -->
            <!-- <?php echo '<div style="color: red;">' . $error . '</div>'; ?> -->
        </form>
</section>


<script>
    function formValid(){
        let userName =document.getElementById("username").value;
        if(userName == ""){
            document.getElementById("errUserName").innerHTML = "Vui lòng nhập tên đăng nhập";
            document.getElementById("username").focus();
            return false;
        }
        document.getElementById("errUserName").innerHTML = "";

        let fullname =document.getElementById("fullname").value;
        if(fullname == ""){
            document.getElementById("errFullname").innerHTML = "Vui lòng nhập họ và tên";
            document.getElementById("fullname").focus();
            return false;
        }
        document.getElementById("errFullname").innerHTML = "";

        let email =document.getElementById("email").value;
        if(email == ""){
            document.getElementById("errEmail").innerHTML = "Vui lòng nhập email";
            document.getElementById("email").focus();
            return false;
        }
        document.getElementById("errEmail").innerHTML = "";

        let password =document.getElementById("password").value;
        if(password == ""){
            document.getElementById("errPass1").innerHTML = "Vui lòng nhập mật khẩu";
            document.getElementById("password").focus();
            return false;
        }
        document.getElementById("errPass1").innerHTML = "";

        let passwordConfirmation =document.getElementById("password_confirmation").value;
        if(passwordConfirmation == ""){
            document.getElementById("errPass2").innerHTML = "Vui lòng nhập lại mật khẩu";
            document.getElementById("password_confirmation").focus();
            return false;
        }
        document.getElementById("errPass2").innerHTML = "";
    }
</script>