<div class="page-cart container justify-content-space-between">
    <h1>Giỏ hàng</h1>
    <div class="list-cart">
        <table class="add-cart-title">
            <thead>
                <tr>
                    <th style="width:30%">Tên sản phẩm</th>
                    <th style="width:15%">Hình ảnh</th>
                    <th style="width:15%">Giá</th>
                    <th style="width:10%">Số lượng</th>
                    <th style="width:15%">Thành tiền</th>
                    <th style="width:8%">xóa</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach($_SESSION['cart'] as $item): ?>
                <tr>
                    <td data-th="Tên sản phẩm"><?=$item['productName']?></td>
                    <td data-th="Hình ảnh"><img src="<?=$item['image']?>" alt="" width="100" height="100"></td>
                    <td data-th="Giá"><?=$item['promotionalPrice']?></td>
                    <td data-th="Số lượng">
                        <div class="amount-product-buy display-flex">
                            <a href="?mod=cart&act=decrease&id=<?=$item['productsID'] ?>"><i class="fa-solid fa-minus"></i></a>
                            <div class="amount-product"><?=$item['quantity'] ?></div>
                            <a href="?mod=cart&act=increase&id=<?=$item['productsID'] ?>"><i class="fa-solid fa-plus"></i></a>
                        </div>
                    </td>
                    <td data-th="Thành tiền"><?=$item['quantity'] * $item['promotionalPrice']?></td>
                    <td data-th="Xóa"><a href="?mod=cart&act=delete&id=<?=$item['productsID'] ?>"><i class="fa-solid fa-trash"></i></a></td>
                </tr>
                <?php endforeach;?>
            </tbody>
        </table>
        <div class="return-update-cart justify-content-space-between">
            <div class="cart-return display-flex">
                <a href="?mod=page&act=product"><i class="fa-solid fa-arrow-left"></i>Tiếp tục mua hàng</a>
            </div>
            <div class="cart-update display-flex">
                <a href="#"></i>Cập nhập giỏ hàng</a>
            </div>
        </div>
    </div>
    <div class="payment-cart">
        <h3>Tổng giỏ hàng</h3>
        <div class="provisional justify-content-space-between">
            <p>Tạm tính</p>
            <p>200.0000.000 <sup>đ</sup> </p>
        </div>
        <div class="delivery align-items-start">
            <p>Giao hàng</p>
            <div class="list-shipping-fee ">
                <form action="" method="post">
                    <div class="shipping-fee">
                        <input type="radio" name="freeship">
                        <label for="freeship">Miễn phí</label>
                    </div>
                    <div class="shipping-fee">
                        <input type="radio" name="freeship">
                        <label for="freeship">Giao hàng nhanh: <span>50.000 <sup>đ</sup></span></label>
                    </div>
                    <div class="shipping-fee">
                        <input type="radio" name="freeship">
                        <label for="freeship">Giao hàng tiết kiệm <span>30.000 <sup>đ</sup></label>
                    </div>
                </form>
            </div>
        </div>
        <div class="voucher justify-content-space-between">
            <form action="" method="post">
                <input type="text" placeholder="Mã giảm giá">
                <button type="submit">Áp dụng</button>
            </form>
        </div>
        <div class="total-payment justify-content-space-between">
            <p>Tạm tính</p>
            <p>200.0000.000 <sup>đ</sup> </p>
        </div>
        <div class="act-payment display-flex">
            <button>Tiến hành thanh toán</button>
        </div>
    </div>
</div>