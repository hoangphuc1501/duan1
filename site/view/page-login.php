<section class="wrapper">
    <div class="login-form-list container">
        <form action="" method="POST" class="form" id="form-2">
            <h3 class="heading">Đăng nhập</h3>
            <div class="spacer"></div>
            <div class="form-group">
                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                <label for=""><i class="fa-solid fa-envelope"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="password" name="pass" type="password" placeholder="Nhập mật khẩu" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-remember">
                <label for=""><input type="checkbox" name="" id="">Nhớ mật khẩu</label>
                <a href="forgotPassword.php">Quên mật khẩu</a>
            </div>
            <button class="form-submit" type="submit" name="login_submit">Đăng nhập</button>
            <p>hoặc sử dụng tài khoản của bạn</p>
            <div class="form-account">
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                <a href="#"><i class="fa-solid fa-g"></i></a>
                <a href="#"><i class="fa-brands fa-twitter"></i></a>
            </div>
            <div class="tab display-flex">
                <p>Bạn chưa có tài khoản?</p><a href="?mod=user&act=register">Đăng kí</a>
            </div>
            <div id="error-message"></div>
            <?php if(isset($data)):?>
                <div class="alert " role="alert">
                    <?=$data;?>
                </div>
                <?php endif; unset($data);?>
    </div>
    </form>
    </div>
</section>