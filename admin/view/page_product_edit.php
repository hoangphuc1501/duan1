<div>
    <form class="form p-4"  method="post" action="" enctype="multipart/form-data">
        <p>Thêm sản phẩm</p>        
        <div class="row">
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Tên sản phẩm</label class="form-label">
                    <input class="form-control" type="text" name="name" value="<?=$ps['productName'] ?>">
                </div>
                <div>
                <label class="form-label" for="">Danh Mục</label>
                <select class="form-select" name="category" >
                    <?php 
                        foreach($categoryList as $cl){
                            if($cl['categoriesID'] == $ps['categoriesID']){
                                echo '<option selected value="'.$cl['categoriesID'].'">'.$cl['categoryName'].'</option>';
                            }else{
                                echo '<option value="'.$cl['categoriesID'].'">'.$cl['categoryName'].'</option>';
                            }
                        }
                    ?>
                </select>
                
            </div>
                <div>
                    <label class="form-label" for="">Giá</label class="form-label">
                    <input class="form-control" type="number" name="price" value="<?=$ps['price']?>">
                </div>
                <div>
                    <label class="form-label" for="">Giá khuyến mãi</label class="form-label">
                    <input class="form-control" type="number" name="sale" value="<?=$ps['promotionalPrice'] ?>">
                </div>
                <div>
                    <label class="form-label" for="">Mô tả</label class="form-label">
                    <textarea class="form-control" name="description" id="" cols="30" rows="10" value="<?=$ps['description'] ?>"></textarea>
                </div>
        
            </div>
            <div class="col-md-6">
                <div>
                    <label class="form-label" for="">Hình ảnh</label class="form-label">
                    <input class="form-control" type="file" name="image">
                    <img class="my-3" src="../assets/img/<?=$ps['image']?>" width="200" height="250" alt="">

                </div>
                <!-- <div>
                    <label class="form-label" for="">Số Lượng</label class="form-label">
                    <input class="form-control" type="number" name="quantity" value="<?=$sp['SoLuong'] ?>">
                </div> -->
                <div>
                    <label class="form-label" for="">Sản phẩm nổi bật</label class="form-label">
                    <div class="form-control">
                        <input type="radio" name="hot" value="1" <?php if($ps['hot'] == 1) echo 'checked' ?>> Có
                        <input type="radio" name="hot" value="0" <?php if($ps['hot'] == 0) echo 'checked' ?>> Không
                    </div>
                </div>
                <div>
                    <label class="form-label" for="">Trạng thái</label class="form-label">
                    <select class="form-select" name="status" id="">
                        <option value="1" <?php if($ps['status'] == '1') echo 'selected' ?>>Đang hoạt động</option>
                        <option value="0" <?php if($ps['status']== '0') echo 'selected' ?>>Tạm ngưng</option>
                    </select>
            </div>
        </div>
            <br>
            <div class="text-center">
                <input class="btn btn-danger m-5" type="submit" name="editProduct_submit" value="Sửa">
            </div>
    </form>
</div>