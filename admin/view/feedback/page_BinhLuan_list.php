<div class="p-5">
    <p class="text-center">QUẢN LÝ BÌNH LUẬN</p>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã bình luận</th>
                <th>Tên khách hàng</th>
                <th>Tên sản phẩm</th>
                <th>Ngày bình luận</th>
                <th>Nội dung</th>
                <!-- <th>Trạng Thái</th> -->
                <th>Thao Tác</th>
            </tr>
        </thead>
        <tbody>
        <?php 
if(isset($name) && !empty($name) && is_array($name)) 
    foreach($name as $namesp) :
?>
            <tr>
                <td><?=$namesp['commentsID']?></td>
                <td><?=$namesp['usersID']?> </td>
                <td><?=$namesp['productsID']?></td>
                <td><?=$namesp['creationDate']?> </td>
                <td><?=$namesp['content']?></td>
                <!-- <?php if($namesp['Duyet']==0){
                    echo '<td>Ẩn</td>';
                    }else {
                        echo '<td>Hiển</td>';
                    }?> -->
                <td>
                <a class="btn btn-primary" href="?mod=feedback&act=edit&id=<?=$namesp['commentsID']?>">Sửa</a>
                    <a class="btn btn-danger" href="?mod=feedback&act=delete&id=<?=$namesp['commentsID']?>">Xóa</a>
                </td>   
            </tr>
            <?php endforeach; ?>
            </tbody>
    </table>
</div>