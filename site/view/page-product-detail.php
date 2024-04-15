<div class="wrapper">
    <div class="product-single container align-items-start">
        <div class="detail-product-list-img display-flex-1">
            <div class="img-product">
                <img class="img-feature" src="<?= $productDetail['image'] ?>" alt="">
                <div class="control prev"><i class="fa-solid fa-chevron-left"></i></div>
                <div class="control next"><i class="fa-solid fa-chevron-right"></i></div>
            </div>
            <div class="list-image">
                <?php foreach ($listProductImage as $lpi) : ?>
                <div><img src="<?= $lpi['image'] ?>" alt=""></div>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="detail-product-list-text">
            <h1>
                <?= $productDetail['productName'] ?>
            </h1>
            <div class="type-brand-code justify-content-space-between">
                <div class="type">
                    <a href="#">
                        <?= $productDetail['typeName'] ?>
                    </a>
                </div>
                <div class="brand">
                    <a href="#">
                        <?= $productDetail['brandProduct'] ?>
                    </a>
                </div>
                <div class="code">
                    <p>Mã:
                        <?= $productDetail['codeProduct'] ?>
                    </p>
                </div>
            </div>
            <div class="list-price justify-content-space-between">
                <span class="promotion-price">
                    <?= number_format($productDetail['promotionalPrice'],0,'.','.') ?> <sup>đ</sup>
                </span>
                <span class="price"><del>
                        <?= number_format($productDetail['price'],0,'.','.') ?> <sup>đ</sup>
                    </del></span>
                <span class="label-promotion">(Giảm
                    <?= $productDetail['labelPromotion'] ?>)
                </span>
            </div>
            <div class="loft">
                <div class="loft-title">
                    <p>loft</p>
                </div>
                <div class="list-loft">
                    <a href="#">10.5 <sup>o</sup></a>
                    <a href="#">10.5 <sup>o</sup></a>
                    <a href="#">10.5 <sup>o</sup></a>
                </div>
            </div>
            <div class="shaft">
                <div class="shaft-title">
                    <p>Shaft</p>
                </div>
                <div class="list-shaft">
                    <a href="#">10.5 <sup>o</sup></a>
                    <a href="#">10.5 <sup>o</sup></a>
                    <a href="#">10.5 <sup>o</sup></a>
                </div>
            </div>
            <!-- <div class="quantity-detail">
                <div class="quantity-title">
                    <p>Số lượng</p>
                </div>
                <div class="quantity-detail-buy display-flex">
                    <a href="?mod=paget&act=decrease&id=<?= $$productDetail['productsID'] ?>"><i class="fa-solid fa-minus"></i></a>
                    <div class="amount-product">1</div>
                    <a href="?mod=cart&act=increase&id=<?= $productDetail['productsID'] ?>"><i class="fa-solid fa-plus"></i></a>
                </div>
               
            </div> -->
            <div class="detail-product-textsale">
                <h3>Khuyến mãi</h3>
                <small>Giá và khuyến mãi dự kiến áp dụng đến 23:00 | 21/07</small>
                <ul>
                    <li>
                        Thu cũ Đổi mới: Giảm đến 2 triệu
                        (Tùy gậy cũ, không kèm các hình thức thanh toán online, mua kèm) <a href="#">Xem chi
                            tiết</a>
                    </li>
                    <li>
                        Hoàn tiền nếu ở đâu rẻ hơn (Trong vòng 7 ngày; chỉ áp dụng tại cửa hàng) <a href="#">Xem chi
                            tiết</a>
                    </li>
                    <li>
                        Nhập mã GOLFSHOP giảm tối đa 100.000đ khi thanh toán qua MOMO <a href="#">(Xem chi tiết tại
                            đây)</a>
                    </li>
                    <li>
                        Nhập mã VNPAY789 giảm tối đa 150K cho đơn hàng từ 05 Triệu thanh toán qua VNPAY <a href="#">(Xem
                            chi tiết tại đây)</a>
                    </li>
                    <li>
                        Giảm 100,000đ Cho Đơn Hàng Từ 10 Triệu Khi Thanh Toán Quét Mã SmartPay QR Bằng Ứng Dụng Ngân
                        Hàng <a href="#">(Xem chi tiết tại đây)</a>
                    </li>
                </ul>
            </div>
            <div class="detail-product-endow-pay">

                <div class="btn-buy-full">
                    <button><a href="?mod=cart&act=add&id=<?= $productDetail['productsID'] ?>">Mua ngay</a></button>
                </div>
                <div class="btn-pay-taichinh ">
                    <a href="#" class="btn-pay-taichinh-text">
                        <b>Mua trả góp</b>
                        <p>Qua công ty tài chính</p>
                    </a>
                    <a href="#" class="btn-pay-taichinh-text">
                        <b>Trả góp qua thẻ</b>
                        <p>Visa, Mastercard, JCB, Amex</p>
                    </a>
                </div>
                <ul class="detail-product-garantie">
                    <li>
                        <i class="fa-solid fa-check"></i> Cam kết hàng chính hãng
                    </li>
                    <li>
                        <i class="fa-solid fa-check"></i> Nhận chuyển hàng trước, thu tiền sau COD
                    </li>
                    <li>
                        <i class="fa-solid fa-rotate"></i>
                        Hư gì đổi nấy 12 tháng tại 100 siêu thị trên toàn quốc
                        <a href="#">Xem chi tiết chính sách bảo hành, đổi trả</a>
                    </li>
                    <li>
                        <i class="fa-solid fa-shield"></i>
                        Bảo hành chính hãng 1 năm
                    </li>
                    <li>
                        <i class="fa-solid fa-truck"></i>
                        Giao hàng nhanh toàn quốc <a href="#">Xem chi tiết</a>
                    </li>
                    <li>
                        <i class="fa-solid fa-phone"></i>
                        Tổng đài: <a href="#">1900.9696.42</a> (9h00 - 21h00 mỗi ngày)
                    </li>
                </ul>
            </div>
            <!--                 
            <div class="add-product-detail justify-content-space-between">
                <div class="add-product">
                    <button><a href="?mod=cart&act=add&id=<?= $productDetail['productsID'] ?>">Thêm vào giỏ hàng <i
                                class="fa-solid fa-cart-shopping"></i></a></button>
                </div>
                <div class="add-product">
                    <button><a href="?mod=cart&act=add&id=<?= $productDetail['productsID'] ?>">Mua ngay</a></button>
                </div>
            </div> -->
            <!-- <div class="commit-detail">
                <p><i class="fa-solid fa-check"></i> Cam kết hàng chính hãng</p>
                <p> <i class="fa-solid fa-check"></i> Nhận chuyển hàng trước, thu tiền sau COD</p>
            </div> -->
        </div>
        <div class="list-product-detail-img container ">
            <div class="detail-list-img align-items-start">
                <div class="product-list-img">
                    <div class="product-list-img-title justify-content-space-between ">
                        <div class="detail-option">
                            <a href="#">Chi tiết</a>
                        </div>
                        <div class="brand-option">
                            <a href="#">Thương hiệu</a>
                        </div>
                    </div>
                    <div class="title">
                        <h3>Driver LTDx Matte Black / Gold Fusion 2022 hiệu Cobra</h3>
                    </div>
                    <div class="product-img">
                        <?php foreach ($listProductImage as $lpi):?>
                        <img src="<?= $lpi['image'] ?>" alt="">
                        <?php endforeach; ?>
                    </div>
                    <div class="product-note">
                        <h4>Màu sắc sản phẩm</h4>
                        <p>Hình ảnh sản phẩm đã được chụp từ thực tế, tuy nhiên tùy vào môi trường ánh sáng và màn hình
                            của
                            thiết bị, màu sắc thực tế có thể không hoàn toàn giống. Xin lưu ý điều này khi mua hàng.</p>
                    </div>
                </div>
                <div class="maybe-you-care">
                    <div class="news-new-product-item">
                        <h3>Sản phẩm nỗi bật</h3>
                        <?php foreach ($productOutstanding as $po): ?>
                            <div class="new-product-item justify-content-space-between">
                                <div class="news-img-item">
                                    <a href="#"><img src="<?= $po['image'] ?>" alt=""></a>
                                </div>
                                <div class="product-item-text ">
                                    <a href="#">
                                        <?= $po['productName'] ?>
                                    </a>
                                    <span class="promotion-price">
                                        <?= $po['promotionalPrice'] ?><sup>đ</sup>
                                    </span>
                                    <span class="price"><del>
                                            <?= $po['price'] ?><sup>đ</sup>
                                        </del></span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>
<!-- <script src="../assets/js/main.js"></script> -->
<script>
    var imgFeature = document.querySelector('.img-feature')
    var listImg = document.querySelectorAll('.list-image img')
    var prevBtn = document.querySelector('.prev')
    var nextBtn = document.querySelector('.next')
    var currentindex = 0;
    function updateImageByIndex(index) {
        document.querySelectorAll('.list-image div').forEach(item => {
            item.classList.remove('active')
        })
        currentindex = index
        imgFeature.src = listImg[index].getAttribute('src')
        listImg[index].parentElement.classList.add('active')
    }
    listImg.forEach((imgElement, index) => {
        imgElement.addEventListener('click', e => {
            updateImageByIndex(index)
        })
    })

    prevBtn.addEventListener('click', e => {
        if (currentindex == 0) {
            currentindex = listImg.length - 1
        } else {
            currentindex--
        }
        updateImageByIndex(currentindex)
    })
    nextBtn.addEventListener('click', e => {
        if (currentindex == listImg.length - 1) {
            currentindex = 0
        } else {
            currentindex++
        }
        updateImageByIndex(currentindex)
    })

    updateImageByIndex(0)
</script>