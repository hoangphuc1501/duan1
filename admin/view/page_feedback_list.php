<div class="p-5">
    <p class="text-center">QUẢN LÝ BÌNH LUẬN</p>
    <a href="?mod=user&act=add" class="btn btn-primary">Thêm bình luận</a>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã Bình luận</th>
                <th>Tên Sản phẩm</th>
                <th>Tên khách hàng</th>
                <th>Nội dung</th>
                <th>Ngày bình luận</th>
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
                    <td><img src="../assets/img/<?= $ul['image'] ?>" width="60px" alt=""></td>
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
                        <?= $ul['status'] ?>
                    </td>
                    <td>
                        <a href="?mod=product&act=edit&id=<?= $ul['usersID'] ?>" class="btn btn-success">Sửa</a>
                        <a href="?mod=product&act=delete&id=<?= $ul['usersID'] ?>" class="btn btn-danger">Xóa</a>
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