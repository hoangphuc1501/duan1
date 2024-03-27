<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="../assets/css/global.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <title>Document</title>
</head>

<body>
    <div class="wrapper">
        <!-- banner -->
        <div class="banner">
            <div class="list-banner">
                <div class="item-banner">
                    <img src="../assets/image/banner-2.jpg" alt="">
                </div>
                <div class="item-banner">
                    <img src="../assets/image/banner-2.jpg" alt="">
                </div>
                <div class="item-banner">
                    <img src="../assets/image/banner-2.jpg" alt="">
                </div>
                <div class="item-banner">
                    <img src="../assets/image/banner-2.jpg" alt="">
                </div>
                <div class="item-banner">
                    <img src="../assets/image/banner-2.jpg" alt="">
                </div>
            </div>
            <div class="buttons">
                <button id="prev"><i class="fa-solid fa-chevron-left"></i></button>
                <button id="next"><i class="fa-solid fa-chevron-right"></i></button>
            </div>
            <ul class="dots">
                <li class="active"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <!-- sản phẩm mới -->
        <div class="new-product container">
            <!-- title -->
            <div class="new-product-title display-flex">
                <a href="#">Sản phẩm mới</a>
            </div>
            <!-- list product -->
            <div class="list-new-product justify-content-space-between">
                <!-- product -->
                <?php foreach($newProduct as $np):?>
                <div class="item-product">
                    <a href="#"><img
                            src="<?= $np['image']?>"
                            alt=""></a>
                    <h3 class="product-title"><a href="#"><?= $np['productName']?></a></h3>
                    <span class="star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </span>
                    <span class="promotion-price"><?= $np['promotionalPrice']?><sup>đ</sup></span>
                    <span class="price"><del><?= $np['price']?><sup>đ</sup></del></span>
                    <span class="label-promotion"><?= $np['labelPromotion']?></span>

                    <div class="action-product display-flex">
                        <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                        <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
            <div class="view-all display-flex">
                <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem tất cả</a>
            </div>
        </div>

        <!-- sản phẩm sale -->
        <div class="product-sale-special container">
            <!--title  -->
            <div class="product-sale-special-title display-flex">
                <a href="#">Gậy golf sale đặc biệt</a>
            </div>
            <!-- list product -->
            <div class="list-product-sale justify-content-space-between">
                <!-- product -->
                <?php foreach($stickGolfSpecial as $sgs): ?>
                <div class="item-product">
                    <a href="#"><img
                            src="<?= $sgs['image']?>"
                            alt=""></a>
                    <h3 class="product-title"><a href="#"><?= $sgs['productName']?></a></h3>
                    <span class="star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </span>
                    <span class="promotion-price"><?= $sgs['promotionalPrice']?><sup>đ</sup></span>
                    <span class="price"><del><?= $sgs['price']?><sup>đ</sup></del></span>
                    <span class="label-promotion"><?= $sgs['labelPromotion']?></span>

                    <div class="action-product display-flex">
                        <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                        <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
            <div class="view-all display-flex">
                <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem tất cả</a>
            </div>
        </div>

        <!-- banner flash sale -->
        <div class="flash-sale-baner container">
            <img src="https://golfcity.com.vn/wp-content/uploads/2023/05/gay-cho-nguoi-moi.jpg" alt="ERROR">
        </div>

        <!-- sản phẩm nổi bật -->
        <div class="product-outstanding container">
            <!--title  -->
            <div class="product-outstanding-title display-flex">
                <a href="#">Sản phẩm nổi bật</a>
            </div>
            <!-- list product -->
            <div class="list-product-outstanding justify-content-space-between">
                <!-- product -->
                <?php foreach ($productOutstanding as $po): ?>
                    <div class="item-product">
                        <a href="#"><img src="<?= $po['image'] ?>" alt=""></a>
                        <h3 class="product-title"><a href="#">
                                <?= $po['productName'] ?>
                            </a></h3>
                        <span class="star">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </span>
                        <span class="promotion-price">
                            <?= $po['promotionalPrice'] ?><sup>đ</sup>
                        </span>
                        <span class="price"><del>
                                <?= $po['price'] ?><sup>đ</sup>
                            </del></span>
                        <span class="label-promotion">
                            <?= $po['labelPromotion'] ?>
                        </span>

                        <div class="action-product display-flex">
                            <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                            <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="view-all display-flex">
                <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem tất cả</a>
            </div>
        </div>

        <!-- Thời trang golf -->
        <div class="fashion-golf container">
            <!--title  -->
            <div class="fashion-golf-title display-flex">
                <a href="#">Thời trang golf</a>
            </div>
            <!-- list product -->
            <div class="list-fashion-golf justify-content-space-between">
                <!-- product -->
                <?php foreach ($fashionGolf as $fg) : ?>
                    <div class="item-product">
                        <a href="#"><img
                                src="<?= $fg['image'] ?>"
                                alt=""></a>
                        <h3 class="product-title"><a href="#"><?= $fg['productName'] ?></a></h3>
                        <span class="star">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </span>
                        <span class="promotion-price"><?= $fg['promotionalPrice'] ?><sup>đ</sup></span>
                        <span class="price"><del>3<?= $fg['price'] ?><sup>đ</sup></del></span>
                        <span class="label-promotion"><?= $fg['labelPromotion'] ?></span>

                        <div class="action-product display-flex">
                            <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                            <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="view-all display-flex">
                <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem tất cả</a>
            </div>
        </div>

        <!-- banner flash sale -->
        <div class="flash-sale-baner container justify-content-space-between">
            <div class="list-banner-sale">
                <img src="https://golfcity.com.vn/wp-content/uploads/2023/04/banner-giay-1.gif" alt="ERROR">
            </div>
            <div class="list-banner-sale">
                <img src="https://golfcity.com.vn/wp-content/uploads/2023/02/file-in1-556-%C3%97-191-px-1920-%C3%97-600-px-575-%C3%97-450-px-1000-%C3%97-639-px-2.gif"
                    alt="ERROR">
            </div>
        </div>

        <!-- sản phẩm túi golf -->
        <div class="product-bag-golf container">
            <!--title  -->
            <div class="product-bag-golf-title display-flex">
                <a href="#">túi golf</a>
            </div>
            <!-- list product -->
            <div class="list-product-bag-golf justify-content-space-between">
                <!-- product -->
                <?php foreach($bagGolf as $bg) :?>
                <div class="item-product">
                    <a href="#"><img
                            src="<?=$bg['image']?>"
                            alt=""></a>
                    <h3 class="product-title"><a href="#"><?=$bg['productName']?></a></h3>
                    <span class="star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </span>
                    <span class="promotion-price"><?=$bg['promotionalPrice']?><sup>đ</sup></span>
                    <span class="price"><del><?=$bg['price']?><sup>đ</sup></del></span>
                    <span class="label-promotion"><?=$bg['labelPromotion']?></span>

                    <div class="action-product display-flex">
                        <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                        <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
            <div class="view-all display-flex">
                <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem tất cả</a>
            </div>
        </div>

        <!-- sản phẩm giày golf -->
        <div class="product-shoe-golf container">
            <!--title  -->
            <div class="product-shoe-golf-title display-flex">
                <a href="#">Giày golf</a>
            </div>
            <!-- list product -->
            <div class="list-product-shoe-golf justify-content-space-between">
                <!-- product -->
                <?php foreach($shoeGolf as $sg) :?>
                <div class="item-product">
                    <a href="#"><img
                            src="<?= $sg['image'] ?>"
                            alt=""></a>
                    <h3 class="product-title"><a href="#"><?= $sg['productName'] ?></a></h3>
                    <span class="star">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                    </span>
                    <span class="promotion-price"><?= $sg['promotionalPrice'] ?><sup>đ</sup></span>
                    <span class="price"><del><?= $sg['price'] ?><sup>đ</sup></del></span>
                    <span class="label-promotion"><?= $sg['labelPromotion'] ?></span>

                    <div class="action-product display-flex">
                        <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                        <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
            <div class="view-all display-flex">
                <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem tất cả</a>
            </div>
        </div>

        <!-- banner flash sale -->
        <div class="flash-sale-baner container">
            <img src="../assets/image/banner-6.jpg.png" alt="">
        </div>

        <!-- dịch vụ hàng đầu -->
        <div class="top-service-golf container">
            <div class="title-top-service display-flex">
                <h1>dịch vụ hàng đầu tại golfshop</h1>
            </div>
            <div class="list-top-service">
                <div class="top-service">
                    <img src="https://golfgroup.com.vn/wp-content/uploads/2023/06/hinh-anh-dich-vu-golf-tai-golfgroup-2.jpg"
                        alt="">
                    <h3>Booking sân golf</h3>
                    <p>Booking sân tại GolfGroup - Tất cả các sân golf trên khắp cả nước! Đặt sân golf dễ dàng, nhanh
                        chóng,
                        chi phí cực tốt với dịch vụ booking của chúng tôi. Alogolf chỉ bằng một cuộc điện thoại chúng
                        tôi sẽ
                        giúp quý khách check thông tin, book sân, book caddies tất cả hệ thống sân, khắp các tỉnh thành.
                    </p>
                    <div class="see-more display-flex">
                        <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem thêm</a>
                    </div>
                </div>
                <div class="top-service">
                    <img src="https://golfgroup.com.vn/wp-content/uploads/2023/06/hinh-anh-dich-vu-golf-tai-golfgroup-2.jpg"
                        alt="">
                    <h3>Booking sân golf</h3>
                    <p>Booking sân tại GolfGroup - Tất cả các sân golf trên khắp cả nước! Đặt sân golf dễ dàng, nhanh
                        chóng,
                        chi phí cực tốt với dịch vụ booking của chúng tôi. Alogolf chỉ bằng một cuộc điện thoại chúng
                        tôi sẽ
                        giúp quý khách check thông tin, book sân, book caddies tất cả hệ thống sân, khắp các tỉnh thành.
                    </p>
                    <div class="see-more display-flex">
                        <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem thêm</a>
                    </div>
                </div>
                <div class="top-service">
                    <img src="https://golfgroup.com.vn/wp-content/uploads/2023/06/hinh-anh-dich-vu-golf-tai-golfgroup-2.jpg"
                        alt="">
                    <h3>Booking sân golf</h3>
                    <p>Booking sân tại GolfGroup - Tất cả các sân golf trên khắp cả nước! Đặt sân golf dễ dàng, nhanh
                        chóng,
                        chi phí cực tốt với dịch vụ booking của chúng tôi. Alogolf chỉ bằng một cuộc điện thoại chúng
                        tôi sẽ
                        giúp quý khách check thông tin, book sân, book caddies tất cả hệ thống sân, khắp các tỉnh thành.
                    </p>
                    <div class="see-more display-flex">
                        <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem thêm</a>
                    </div>
                </div>
                <div class="top-service">
                    <img src="https://golfgroup.com.vn/wp-content/uploads/2023/06/hinh-anh-dich-vu-golf-tai-golfgroup-2.jpg"
                        alt="">
                    <h3>Booking sân golf</h3>
                    <p>Booking sân tại GolfGroup - Tất cả các sân golf trên khắp cả nước! Đặt sân golf dễ dàng, nhanh
                        chóng,
                        chi phí cực tốt với dịch vụ booking của chúng tôi. Alogolf chỉ bằng một cuộc điện thoại chúng
                        tôi sẽ
                        giúp quý khách check thông tin, book sân, book caddies tất cả hệ thống sân, khắp các tỉnh thành.
                    </p>
                    <div class="see-more display-flex">
                        <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem thêm</a>
                    </div>
                </div>
                <div class="top-service">
                    <img src="https://golfgroup.com.vn/wp-content/uploads/2023/06/hinh-anh-dich-vu-golf-tai-golfgroup-2.jpg"
                        alt="">
                    <h3>Booking sân golf</h3>
                    <p>Booking sân tại GolfGroup - Tất cả các sân golf trên khắp cả nước! Đặt sân golf dễ dàng, nhanh
                        chóng,
                        chi phí cực tốt với dịch vụ booking của chúng tôi. Alogolf chỉ bằng một cuộc điện thoại chúng
                        tôi sẽ
                        giúp quý khách check thông tin, book sân, book caddies tất cả hệ thống sân, khắp các tỉnh thành.
                    </p>
                    <div class="see-more display-flex">
                        <a href=""><i class="fa-solid fa-circle-chevron-right"></i> Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- phần đặc trưng -->
        <div class="section-featured container justify-content-space-between">
            <div class="featured-inner justify-content-space-between">
                <img src="https://golfgroup.com.vn/wp-content/themes/ggc/images/icons/ghht.svg" alt="">
                <p>Giao hàng hỏa tốc</p>
            </div>
            <div class="featured-inner justify-content-space-between">
                <img src="https://golfgroup.com.vn/wp-content/themes/ggc/images/icons/bdtd.svg" alt="">
                <p>Bảo dưỡng trọn đời</p>
            </div>
            <div class="featured-inner justify-content-space-between">
                <img src="https://golfgroup.com.vn/wp-content/themes/ggc/images/icons/card.svg" alt="">
                <p>Thanh toán linh hoạt</p>
            </div>
            <div class="featured-inner justify-content-space-between">
                <img src="https://golfgroup.com.vn/wp-content/themes/ggc/images/icons/1vs1.svg" alt="">
                <p>Lỗi 1 đổi 1 tại nhà</p>
            </div>
        </div>
        <div class="list-news-knowledge container justify-content-space-between">
            <div class="list-news">
                <div class="post-title justify-content-space-between">
                    <h3>Tin tức</h3>
                    <a href="#">Xem toàn bộ</a>
                </div>
                <div class="post-new align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="new-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024 </a>
                    </h3>
                </div>
                <div class="post-new align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="new-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024 </a>
                    </h3>
                </div>
                <div class="post-new align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="new-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024 </a>
                    </h3>
                </div>
                <div class="post-new align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="new-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024 </a>
                    </h3>
                </div>
            </div>
            <div class="list-knowledge">
                <div class="post-title justify-content-space-between">
                    <h3>Kiến thức golf</h3>
                    <a href="#">Xem toàn bộ</a>
                </div>
                <div class="post-knowledge align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="knowledge-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024
                        </a>
                    </h3>
                </div>
                <div class="post-knowledge align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="knowledge-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024
                        </a>
                    </h3>
                </div>
                <div class="post-knowledge align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="knowledge-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024
                        </a>
                    </h3>
                </div>
                <div class="post-knowledge align-items-start">
                    <a href="#"><img
                            src="https://golfcity.com.vn/wp-content/uploads/2020/12/cach-tinh-diem-golf-3-445x296.jpg"
                            alt=""></a>
                    <h3 class="knowledge-title"><a href="#">Cách Tính Điểm Golf Chuẩn Xác Nhất, Cập Nhật Mới Nhất 2024
                        </a>
                    </h3>
                </div>

            </div>
        </div>
    </div>
</body>

<script src="../assets/js/main.js"></script>

</html>