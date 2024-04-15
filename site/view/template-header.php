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
    <link rel="stylesheet" href="../assets/css/product.css">
    <link rel="stylesheet" href="../assets/css/login.css">
    <link rel="stylesheet" href="../assets/css/cart.css">
    <link rel="stylesheet" href="../assets/css/product-detail.css">
    <link rel="stylesheet" href="../assets/css/news.css">
    <link rel="stylesheet" href="../assets/css/feedback.css">
    <title>Document</title>
</head>

<body>
    <div id="wrapper">
        <!-- header -->
        <header id="header">
            <!-- header-top -->
            <div class="header-top container">
                <div class="header-logo">
                    <a href="?mod=page&act=home">golfshop</a>
                </div>
                <div class="header-search">
                    <form action="?mod=page&act=search" method="post" role="search">
                        <input type="tetx" placeholder="Tìm kiếm" name="keyword">
                        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </form>
                </div>
                <div class="header-login display-flex">
                    <?php if (isset($_SESSION['user'])): ?>
                        <a href="?mod=user&act=info"><i class="fa-solid fa-user"></i></a>
                    <?php else: ?>
                        <a href="?mod=user&act=login">Đăng nhập</a>
                    <?php endif; ?>
                </div>
                <div class="header-cart display-flex">
                    <a href="?mod=cart&act=list"><i class="fa-solid fa-cart-shopping"></i></a>
                    <div class="">
                        <span id="amount-cart" class="count-cart">
                            <?php if (isset($_SESSION['cart'])): ?>
                                <?= count($_SESSION['cart']) ?>
                            <?php else: ?>
                                0
                            <?php endif; ?>
                        </span>
                    </div>
                </div>
                <div class="header-language  display-flex">
                    <a href="">VN | EN</a>
                </div>
            </div>
            <div class="header-nav">
                <div class="container new-menu justify-content-space-between">
                    <nav id="main-menu">
                        <ul class="display-flex">
                            <li><a href="?mod=page&act=home">Trang chủ</a></li>
                            <li>
                                <a href="?mod=page&act=about">Giới thiệu <i class="fa-solid fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="#">Về chúng tôi</a></li>
                                    <li><a href="#">Đội ngũ chuyên gia</a></li>
                                    <li><a href="#">Danh sách showroom</a></li>
                                    <li><a href="#">Hướng dẫn mua hàng</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="?mod=page&act=product">Sản phẩm <i class="fa-solid fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <?php
                                    $subcategoryList = $categoryList;
                                    foreach ($categoryList as $item) {
                                        if ($item['parentID'] == 0) { ?>
                                            <li>
                                                <a href="?mod=page&act=product&id=<?= $scl['categoriesID'] ?>">
                                                    <?= $item['categoryName'] ?>
                                                </a>
                                                <ul class="submenu">
                                                    <?php foreach ($subcategoryList as $scl) {
                                                        if ($scl['parentID'] != 0 && $scl['parentID'] == $item['categoriesID']) { ?>
                                                            <li><a href="?mod=page&act=product&id=<?= $scl['categoriesID'] ?>">
                                                                    <?= $scl['categoryName'] ?>
                                                                </a></li>
                                                        <?php }
                                                    } ?>
                                                </ul>
                                            </li>
                                        <?php }
                                    } ?>
                                </ul>

                            </li>
                            <li>
                                <a href="#">Thương hiệu <i class="fa-solid fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li>
                                        <a href="#">Titlest</a>
                                    </li>
                                    <li><a href="#">FootJoy</a></li>
                                    <li><a href="#">TaylorMade</a></li>
                                    <li><a href="#">Nike</a></li>
                                    <li><a href="#">Adidas</a></li>
                                    <li>
                                        <a href="#">ECCO</a>
                                    </li>
                                    <li><a href="#">HONMA</a></li>
                                    <li><a href="#">PING</a></li>
                                    <li><a href="#">XXIO</a></li>
                                    <li><a href="#">Callaway</a></li>
                                    <li><a href="#">Mizuno</a></li>
                                    <li><a href="#">Puma</a></li>
                                    <li><a href="#">Srixon</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Khuyến mãi</a>
                            </li>
                            <li>
                                <a href="#">Kiến thức <i class="fa-solid fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="#">Kỹ thuật</a></li>
                                    <li><a href="#">Luật chơi</a></li>
                                    <li><a href="#">Thuật ngữ</a></li>
                                    <li><a href="#">Review</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Dịch vụ <i class="fa-solid fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="#">Thu cũ đổi mới</a></li>
                                    <li><a href="#">Ký gửi gậy cũ</a></li>
                                    <li><a href="#">Fitting gậy golf</a></li>
                                    <li><a href="#">Thẩm định gậy cũ</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="?mod=page&act=news">Tin tức <i class="fa-solid fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="#">Tin hoạt động</a></li>
                                    <li><a href="#">Tin ngành golf</a></li>
                                    <li><a href="#">Tin tuyển dụng</a></li>
                                </ul>
                            </li>
                            <li><a href="?mod=page&act=contact">Liên hệ </a></li>
                        </ul>
                    </nav>

                    <div class="header-hotline display-flex">
                        <a href="#">Hotline: 0333568796 - 0334682202</a>
                    </div>
                </div>
            </div>
        </header>
    </div>