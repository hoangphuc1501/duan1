<div>
    <form class="form p-4"  method="post" action="" enctype="multipart/form-data">
        <div class="row">
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Tên Khách Hàng</label class="form-label">
                    <input class="form-control" type="text" name="MaKhachHang" id="" value="<?=$sp['usersID'] ?>">
                </div>
                <div>           
            </div>
                <div>
                    <label class="form-label" for="">Tên Sản phẩm</label class="form-label">
                    <input class="form-control" type="text" name="MaSanPham" id="" value="<?=$sp['productsID'] ?>">
                </div>
                <div>
                    <label class="form-label" for="">Nội Dung</label class="form-label">
                    <input class="form-control" type="text" name="content" id="" value="<?=$sp['content'] ?>">

                </div>
                   
            </div>
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Ngày Bình luận</label class="form-label">
                    <input class="form-control" type="text" name="NgayBinhLuan" id="" value="<?=$sp['creationDate'] ?>">
                </div>  
                <!-- <div>
                <label class="form-label" for="">Trạng Thái</label class="form-label">
                    <select class="form-select" name="Duyet" id="">
                    <option value="0">Ẩn</option>
                    <option value="1">Hiện</option>
                    </select>
            </div> -->
            <br>
            <div class="text-center">
            <input class="btn btn-danger m-5" type="submit" name="binhLuanEdit_submit" value="Sửa">
            </div>
    </form>
</div>