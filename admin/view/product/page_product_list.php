<div class="p-5">
    <p class="text-center">QUẢN LÝ SẢN PHẨM</p>
    <a href="?mod=product&act=add" class="btn btn-primary">Thêm sản phẩm</a>    
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Giá khuyến mãi</th>
                <th>Hình ảnh</th>
                <th>Danh mục</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($productList as $ps) :?>
            <tr>
                <td><?=$ps['productsID']?></td>
                <td><?=$ps['productName']?></td>
                <td><?=$ps['price']?> đ</td>
                <td><?=$ps['promotionalPrice']?> đ</td>
                <td><img src="../admin/HinhAnh/<?=$ps['image']?>" width="60px" alt=""></td>
                <td><?=$ps['categoriesID']?></td>
                
                <td><?php echo ($ps['status'] == 1) ? 'Đang hoạt động' : 'Tạm ngưng'; ?></td>
                <td>
                    <a href="?mod=product&act=edit&id=<?=$ps['productsID']?>" class="btn btn-success">Sửa</a>
                    <a href="?mod=product&act=delete&id=<?=$ps['productsID']?>" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <!-- danh sách sản phẩm có phân trang -->
    <!-- <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <?php for($i= 1; $i <= $numberPage; $i++) :?>
            <li class="page-item">
                <a class="page-link" href="?mod=product&act=list&page=<?=$i?>"><?=$i?></a>
            </li>
            <?php endfor; ?>
        </ul>
    </nav> -->


</div>