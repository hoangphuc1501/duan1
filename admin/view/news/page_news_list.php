<div class="p-5">
    <p class="text-center">QUẢN LÝ TIN TỨC</p>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Mã tin tức</th>
                <th>Tiêu đề</th>
                <th>Hình ảnh</th>
                <th>Nội dung</th>
                <th>Ngày đăng</th>
                <th>Người đăng</th>
                <th>View-Like-Share</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($newsPage as $news) :?>
            <tr>
                <td><?=$news['newsID']?></td>
                <td><?=$news['title']?></td>
                <td><img src="../admin/HinhAnh/<?=$news['image']?>" width="120px" alt=""></td>
                <td><?=$news['content']?> </td>
                <td><?=$news['PublishDate']?> </td>
                <td><?=$news['author']?></td>
                <td>View : <?=$news['Views']?>  Like : <?=$news['Likes']?>  Shares : <?=$news['Shares']?></td>
                <td>
                    <a href="?mod=news&act=edit&id=<?=$news['newsID']?>" class="btn btn-success">Sửa</a>
                    <a href="?mod=news&act=delete&id=<?=$news['newsID']?>" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <nav aria-label="Page navigation example" class="d-flex justify-content-center">
        <ul class="pagination">
            <?php for($i= 1; $i <= $numberPage; $i++) :?>
            <li class="page-item">
                <a class="page-link" href="?mod=news&act=list&page=<?=$i?>"><?=$i?></a>
            </li>
            <?php endfor; ?>
        </ul>
    </nav>


</div>