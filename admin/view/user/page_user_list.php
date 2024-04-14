<div class="p-5">
    <p class="text-center">QUẢN LÝ NGƯỜI DÙNG</p>
    <a href="?mod=user&act=add" class="btn btn-primary">Thêm người dùng</a>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã người dùng</th>
                <th>Tên người dùng</th>
                <th>Hình ảnh</th>
                <th>Email</th>
                <th>Địa chỉ</th>
                <th>Số điện thoại</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($userList as $ul): ?>
                <tr>
                    <td>
                        <?= $ul['usersID'] ?>
                    </td>
                    <td>
                        <?= $ul['userName'] ?>
                    </td>
                    <td><img src="../admin/HinhAnh/<?= $ul['image'] ?>" width="60px" alt=""></td>
                    <td>
                        <?= $ul['email'] ?>
                    </td>
                    <td>
                        <?= $ul['address'] ?>
                    </td>
                    
                    <td>
                        <?= $ul['phoneNumber'] ?>
                    </td>

                    <td>
                    <?php echo ($ul['status'] == 1) ? "Admin" : "Khách hàng"; ?>
                    
                    </td>
                    <td>
                    <a class="btn btn-primary" href="?mod=user&act=edit&id=<?=$ul['usersID']?>">Sửa</a>
                    <a class="btn btn-danger" href="?mod=user&act=delete&id=<?=$ul['usersID']?>">Xóa</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <!-- danh sách sản phẩm có phân trang -->
    <!-- <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <?php for ($i = 1; $i <= $numberPage; $i++): ?>
            <li class="page-item">
                <a class="page-link" href="?mod=product&act=list&page=<?= $i ?>"><?= $i ?></a>
            </li>
            <?php endfor; ?>
        </ul>
    </nav> -->


</div>