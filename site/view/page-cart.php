<div class="page-cart container align-items-start">
    <h1>Giỏ hàng</h1>
    <div class="list-cart">
        <table class="add-cart-title">
            <thead>
                <tr>
                    <th style="width:5%">STT</th>
                    <th style="width:26%">Tên sản phẩm</th>
                    <th style="width:15%">Hình ảnh</th>
                    <th style="width:16%">Giá</th>
                    <th style="width:15%">Số lượng</th>
                    <th style="width:16%">Thành tiền</th>
                    <th style="width:5%">xóa</th>
                </tr>
            </thead>
            <tbody>

                <?php
                $i = 0;
                $total = 0;
                foreach ($_SESSION['cart'] as $item):
                    $i++;
                    $intoMoney = $item['quantity'] * $item['promotionalPrice'];
                    $total += $intoMoney;
                    ?>
                    <tr>
                        <td data-th="STT">
                            <?= $i ?>
                        </td>
                        <td data-th="Tên sản phẩm">
                            <?= $item['productName'] ?>
                        </td>
                        <td data-th="Hình ảnh"><img src="<?= $item['image'] ?>" alt="" width="100" height="100"></td>
                        <td data-th="Giá">
                            <?= number_format($item['promotionalPrice'],0,'.','.') ?>
                        </td>
                        <td data-th="Số lượng">
                            <div class="amount-product-buy display-flex">
                                <a href="?mod=cart&act=decrease&id=<?= $item['productsID'] ?>"><i
                                        class="fa-solid fa-minus"></i></a>
                                <div class="amount-product">
                                    <?= $item['quantity'] ?>
                                </div>
                                <a href="?mod=cart&act=increase&id=<?= $item['productsID'] ?>"><i
                                        class="fa-solid fa-plus"></i></a>
                            </div>
                        </td>
                        <td data-th="Thành tiền">
                            <?= number_format($intoMoney,0,'.','.') ?>
                        </td>
                        <td data-th="Xóa"><a href="?mod=cart&act=delete&id=<?= $item['productsID'] ?>"><i
                                    class="fa-solid fa-trash"></i></a></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <div class="return-update-cart justify-content-space-between">
            <div class="cart-return display-flex">
                <a href="?mod=page&act=product"><i class="fa-solid fa-arrow-left"></i>Tiếp tục mua hàng</a>
            </div>
            <div class="cart-update display-flex">
                <a href="?mod=cart&act=list"></i>Cập nhập giỏ hàng</a>
            </div>
        </div>
    </div>
    <div class="payment-cart">
        <h3>Tổng giỏ hàng</h3>
        <div class="provisional justify-content-space-between">
            <p>Tạm tính</p>
            <p>
                <?= number_format($total,0,'.','.') ?><sup>đ</sup>
            </p>
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
            <p>Tổng đơn hàng</p>
            <p>
                <?= number_format($total,0,'.','.') ?> <sup>đ</sup>
            </p>
        </div>
        <div class="act-payment display-flex">
            <button><a href="?mod=cart&act=payment">Đặt hàng</a></button>
        </div>
    </div>
    <div class="list-info-delivery">
        <div class="info-delivery">
            <h3>Thông tin nhận hàng</h3>
            <p>Bạn đã có tài khoản? <a href="#">Đăng nhập</a></p>
            <form action="" method="post">
                <div class="form-group">
                    <input id="fullname" name="fullname" type="text" placeholder="Họ & Tên" class="form-control">
                    <label for=""><i class="fa-solid fa-envelope"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="email" name="email" type="text" placeholder="Email" class="form-control">
                    <label for=""><i class="fa-solid fa-lock"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="phone" name="phone" type="text" placeholder="Số điện thoại" class="form-control">
                    <label for=""><i class="fa-solid fa-lock"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <input id="address" name="address" type="text" placeholder="Địa chỉ" class="form-control">
                    <label for=""><i class="fa-solid fa-lock"></i></label>
                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <textarea name="content" id="" cols="30" rows="10"
                        placeholder="Ghi chú đơn hàng (tùy chọn)"></textarea>
                    <span class="form-message"></span>
                </div>
            </form>
        </div>
        <div class="transport-payment">
            <div class="transport-list">
                <h3>Phương thức vận chuyển</h3>
                <form action="" class="transport">
                    <div class="transport-item">
                        <input type="radio" name="transport" checked id="home">
                        <label for="home">Giao hàng tận nơi</label>
                    </div>
                    <div class="transport-item">
                        <input type="radio" name="transport" id="store">
                        <label for="store">Nhận tại cửa hàng</label>
                    </div>
                </form>
            </div>
            <div class="payment-list ">
                <h3>Phương thức thanh toán</h3>
                <form action="" class="payment">
                    <div class="payment-item">
                        <input id="COD" type="radio" name="payment" checked>
                        <label for="COD">Thanh toán khi nhận hàng</label>
                    </div>
                    <div class="payment-item">
                        <input id="momo" type="radio" name="payment">
                        <label for="momo">Thanh toán qua momo</label>
                    </div>
                    <div class="payment-item">
                        <input id="vnPay" type="radio" name="payment">
                        <label for="vnPay">Thanh toán qua VnPay</label>
                    </div>
                    <div class="payment-item">
                        <input id="ZaloPay" type="radio" name="payment">
                        <label for="ZaloPay">Thanh toán qua ZaloPay</label>
                    </div>
                    <div class="payment-item">
                        <input id="Viettel" type="radio" name="payment">
                        <label for="Viettel">Thanh toán qua Viettel Monney</label>
                    </div>
                    <div class="payment-item">
                        <input id="creditCart" type="radio" name="payment">
                        <label for="creditCart">Thanh toán qua creditCart</label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>