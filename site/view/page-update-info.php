<div class="page-update-info container">
    <div class="list-update-info">
        <h3>Thông tin của bạn</h3>
        <form action="" method="post">
            <div class="form-group">
                <input id="username" name="userName" type="text" value="<?= $user['userName'] ?>" class="form-control">
                <label for=""><i class="fa-solid fa-user"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="fullname" name="name" type="text" value="<?= $user['fullName'] ?>" class="form-control">
                <label for=""><i class="fa-solid fa-user"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="email" name="email" type="text" value="<?= $user['email'] ?>" class="form-control">
                <label for=""><i class="fa-solid fa-envelope"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="phoneNumber" name="phone" type="text" value="<?= $user['phoneNumber'] ?>" class="form-control">
                <label for=""><i class="fa-solid fa-phone"></i></label>
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input id="address" name="address" type="text" value="<?= $user['address'] ?>" class="form-control">
                <label for=""><i class="fa-solid fa-location-dot"></i></label>
                <span class="form-message"></span>
            </div>
            <!-- <div class="form-group">
                <input id="image" name="image" type="file"  class="form-control">
                <label for=""><i class="fa-solid fa-lock"></i></label>
                <span class="form-message"></span>
            </div> -->
            
            <div class="list-act-info justify-content-space-between">
                <button class="act-submit" name="update_info_submit" type="submit"><a href="#">Cập nhật</a></button>
            </div>
        </form>
    </div>
</div>