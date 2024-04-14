
<div class="p-5">
    <h3 class="text-center">Quản lý danh mục</h3>
    <div >
        <a class="btn btn-primary" href="?mod=category&act=add">Thêm danh mục</a>
    </div>
    
    <table class="table table-hover ">
        <thead>
            <tr>
                <th>Mã danh mục</th>
                <th>Tên danh mục</th>
                <th>Hình ảnh</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($dsdm as $dm): ?>
            <tr>
                <td><?=$dm['categoriesID']?></td>
                <td><?=$dm['categoryName']?></td>
                <td><img src="../admin/HinhAnh/<?=$dm['image']?>" width="120px" alt=""></td>
                <td><?php echo ($dm['status'] == 1) ? 'Đang hoạt động' : 'Tạm ngưng'; ?></td>   
                <td>
                    <a class="btn btn-primary" href="?mod=category&act=edit&id=<?=$dm['categoriesID']?>">Sửa</a>
                    <a class="btn btn-danger" href="?mod=category&act=delete&id=<?=$dm['categoriesID']?>">Xóa</a>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <!-- <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <?php for($i= 1; $i <= $numberPage; $i++) :?>
            <li class="page-item">
                <a class="page-link" href="?mod=category&act=list&page=<?=$i?>"><?=$i?></a>
            </li>
            <?php endfor; ?>
        </ul>
    </nav> -->
</div>