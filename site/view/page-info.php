<div class="page-info container">
    <div class="info-title">
        <h1>Tài khoản của bạn</h1>
    </div>
    <div class="section-info align-items-start-1">
        <div class="list-cart-info">
            <div class="img-info">
                <img src="https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg" alt="">

            </div>
            <div class="range-user justify-content-space-between">
                <p>Vàng</p>
                <p>Kim cương</p>
                <span class="dots-range"></span>
            </div>
            <div class="text-range">
                <p>Còn 100 BEAN nữa bạn sẽ thăng hạng. Đổi quà không ảnh hưởng tới việc thăng hạng của bạn Chưa tích điểm</p>
            </div>
            <div class="list-item-info">
                <div class="item-info">
                    <a href="?mod=user&act=info"> <i class="fa-solid fa-user"></i>Thông tin khách hàng</a>
                </div>
                <div class="item-info">
                    <a href="?mod=user&act=changePassword"><i class="fa-solid fa-lock"></i> Đổi mật khẩu</a>
                    <a href=""> <i class="fa-solid fa-user"></i>Thông tin khách hàng</a>
                </div>
                <div class="item-info">
                    <a href=""><i class="fa-solid fa-lock"></i> Đổi mật khẩu</a>
                </div>
                <div class="item-info">
                    <a href="#"><i class="fa-solid fa-user-shield"></i>Quyền lợi thành viên</a>
                </div>
                <div class="item-info">
                    <a href="#"><i class="fa-solid fa-clock-rotate-left"></i>Lịch sử mua hàng</a>
                </div>

            </div>
        </div>
        <div class="List-form-info">
            <h3>Thông tin của bạn</h3>
            <form action="" method="post">
                <div class="form-group">
                    <input id="username" name="userName" type="text" placeholder="<?= $user['userName'] ?>" class="form-control">
                    <label for=""><i class="fa-solid fa-user"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="fullname" name="name" type="text" placeholder="<?= $user['fullName'] ?>" class="form-control">
                    <label for=""><i class="fa-solid fa-user"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="email" name="email" type="text" placeholder="<?= $user['email'] ?>" class="form-control">
                    <label for=""><i class="fa-solid fa-envelope"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="phoneNumber" name="phone" type="text" placeholder="<?= $user['phoneNumber'] ?>" class="form-control">
                    <label for=""><i class="fa-solid fa-phone"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="address" name="address" type="text" placeholder="<?= $user['address'] ?>" class="form-control">
                    <label for=""><i class="fa-solid fa-location-dot"></i></label>
                    <input id="address" name="address" type="text" placeholder="Địa chỉ" class="form-control">
                    <label for=""><i class="fa-solid fa-lock"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="address" name="pass" type="text" placeholder="Địa chỉ" class="form-control">
                    <label for=""><i class="fa-solid fa-lock"></i></label>
                    <span class="form-message"></span>
                </div>

                <div class="list-act-info justify-content-space-between">
                <button class="act-submit" name="update_info_submit" type="submit"><a href="?mod=user&act=updateInfo&id=<?=$user['usersID']?>">Thay đổi thông tin</a></button>
                <?php if($user['admin']==1):?>
                <button class="act-submit" name="admin_submit" type="submit"><a href="../admin/?mod=category&act=list">Admin</a></button>
                <?php endif; ?>
                <button class="act-submit" name="logout_info_submit" type="submit"><a href="?mod=user&act=logout">Đăng xuất</a></button>
                </div>
            </form>
        </div>
    </div>
</div>