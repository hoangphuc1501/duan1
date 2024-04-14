<div class="page-info container">
    <div class="info-title">
        <h1>Tài khoản của bạn</h1>
    </div>
    <div class="section-info align-items-start-1">
        <div class="list-cart-info">
            <div class="img-info">
                <img src="https://www.thuvienvector.com/upload/images/items/vector-card-the-vip-thiet-ke-sang-trong-3655.webp"
                    alt="">

            </div>
            <div class="range-user justify-content-space-between">
                <p>Vàng</p>
                <p>Kim cương</p>
                <span class="dots-range"></span>
            </div>
            <div class="text-range">
                <p>Còn 100 BEAN nữa bạn sẽ thăng hạng. Đổi quà không ảnh hưởng tới việc thăng hạng của bạn Chưa tích
                    điểm</p>
            </div>
            <div class="list-item-info">
                <div class="item-info">
                    <a href="?mod=user&act=info"> <i class="fa-solid fa-user"></i>Thông tin khách hàng</a>
                </div>
                <div class="item-info">
                    <a href="?mod=user&act=changePassword"><i class="fa-solid fa-lock"></i> Đổi mật khẩu</a>
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
            <div class="form-group-info">
                <div class="item-info justify-content-space-between">
                    <p><?= $user['userName'] ?></p>
                    <span><i class="fa-solid fa-user"></i></span>
                </div>
            </div>
            <div class="form-group-info">
                <div class="item-info justify-content-space-between">
                    <p><?= $user['fullName'] ?></p>
                    <span><i class="fa-solid fa-user"></i></i></span>
                </div>
            </div>
            <div class="form-group-info">
                <div class="item-info justify-content-space-between">
                    <p><?= $user['email'] ?></p>
                    <span><i class="fa-solid fa-envelope"></i></i></span>
                </div>
            </div>
            <div class="form-group-info">
                <div class="item-info justify-content-space-between">
                    <p><?= $user['phoneNumber'] ?></p>
                    <span><i class="fa-solid fa-phone"></i></span>
                </div>
            </div>
            <div class="form-group-info">
                <div class="item-info justify-content-space-between">
                    <p><?= $user['address'] ?></p>
                    <span><i class="fa-solid fa-location-dot"></i></i></span>
                </div>
            </div>
            <div class="list-act-info justify-content-space-between">
                <button class="act-submit" name="update_info_submit" type="submit"><a
                        href="?mod=user&act=updateInfo&id=<?= $user['usersID'] ?>">Thay đổi thông tin</a></button>
                <?php if ($user['admin'] == 1): ?>
                    <button class="act-submit" name="admin_submit" type="submit"><a
                            href="../admin/?mod=category&act=list">Admin</a></button>
                <?php endif; ?>
                <button class="act-submit" name="logout_info_submit" type="submit"><a href="?mod=user&act=logout">Đăng
                        xuất</a></button>
            </div>
        </div>
    </div>
</div>