<div>
    <form class="form p-4"  method="post" action="" enctype="multipart/form-data">
        <div class="row">
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Tên Người Đăng</label class="form-label">
                    <h4><?=$sp['author'] ?></h4>
                </div>
                <div>           
            </div>
               
              
                <div>
                    <label class="form-label" for="">Tiêu Đề</label class="form-label">
                    <input class="form-control" type="text" name="title" id="" value="<?=$sp['title'] ?>">
                </div>
                <div>
                    <label class="form-label" for="">Nội Dung</label class="form-label">
                    <input class="form-control" type="text" name="content" id="" value="<?=$sp['content'] ?>">
                </div>

                
            </div>
            <div class="col-md-6">
                <div>
                        <label class="form-label" for="">Hình ảnh</label class="form-label">
                        <input class="form-control" type="file" name="hinhAnh">
                        <img class="my-3" src="../admin/HinhAnh/<?=$sp['image']?>" width="100" height="100" alt="">
                       
                    </div>
       
           

                <div>
                <label class="form-label" for="">Trạng Thái</label class="form-label">
                    <select class="form-select" name="TrangThai" id="">
                    <option value="1">Hoạt Động</option>
                    <option value="0">Không Hoạt Động</option>
                    </select>
                </div>
                    
            </div>
        </div>
            <br>
            <div class="text-center">
            <input class="btn btn-danger m-5" type="submit" name="newsEdit_submit" value="Sửa">
            </div>
    </form>
</div>