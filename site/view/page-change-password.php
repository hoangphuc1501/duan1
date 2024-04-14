<div class="section-forgot-password container display-flex">

    <div class="forgot-password">
        <h3>Đổi mật khẩu?</h3>
        <p>Nhập mật khẩu mới cho tài khoản của bạn</p>
        <form action="" method="post">
        <div class="form-group">
                <input id="email" name="email" type="text" placeholder="email" class="form-control">
                <label for=""><i class="fa-solid fa-envelope"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="old-password" name="oldPassword" type="password" placeholder="Nhập mật khẩu cũ" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="new-password" name="newPassword1" type="password" placeholder="Nhập mật khẩu mới" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="news-password" name="newPassword2" type="password" placeholder="Nhập lại mật khẩu mới" class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div>
            <button class="form-submit" name="change_submit" type="submit">Đổi mật khẩu</button>
            <?php if (isset($change_submit)): ?>
                <p>
                    <?php
                    if (isset($Notification) && ($Notification != "")) {
                        echo $Notification;
                    } ?>
                </p>
            <?php endif; ?>
        </form>
        <!-- <a href="#">Quay lại đăng nhập</a> -->
    </div>
</div>