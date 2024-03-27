<section class="wrapper">
    <div class="login-form-list">
        <form action="" method="POST" class="form" id="form-1">
            <h3 class="heading">Đăng Ký</h3>
            <div class="spacer"></div>

            <div class="form-group">
                <input id="username" name="userName" type="text" placeholder="Tên đăng nhập" class="form-control">
                <label for=""><i class="fa-solid fa-user"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="fullname" name="name" type="text" placeholder="Họ & Tên" class="form-control">
                <label for=""><i class="fa-solid fa-user"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                <label for=""><i class="fa-solid fa-envelope"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="phoneNumber" name="phone" type="text" placeholder="Số điện thoại" class="form-control">
                <label for=""><i class="fa-solid fa-phone"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="password" name="pass" type="password" placeholder="Nhập mật khẩu" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="password_confirmation" name="repass" placeholder="Nhập lại mật khẩu"
                    type="password" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div>
            <?php if (isset ($data)): ?>
                <div class="alert alert-warning" role="alert">
                    <?= $data; ?>
                </div>
            <?php endif;
            unset($data); ?>
            <button class="form-submit" name="register_submit" type="submit">Đăng ký</button>
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