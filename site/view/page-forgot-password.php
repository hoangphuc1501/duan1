<div class="section-forgot-password container display-flex">
    
    <div class="forgot-password">
        <h3>Quên mật khẩu?</h3>
        <p>Nhập địa chỉ email được liên kết với tài khoản của bạn và chúng tôi sẽ gửi liên kết để đặt lại mật khẩu của bạn</p>
    <form action="" method="post">
    <div class="form-group">
                <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                <label for=""><i class="fa-solid fa-envelope"></i></label>
                <span class="form-message"></span>
            </div>
            <button class="form-submit" name="forgot_submit" type="submit">Lấy mật khẩu mới</button>
            <p><?php 
            if(isset($Notification) && ($Notification !="")){
                echo $Notification;
            } ?></p>
    </form>
    <!-- <a href="#">Quay lại đăng nhập</a> -->
    </div>
</div>