<div class="wrapper">
    <div class="category-collection-product container align-items-start">
        <div class="list-category-product">
            <h1>Danh mục sản phẩm</h1>
            <div class="category-product">
                <?php foreach ($categoryList as $item) {
                    if ($item['parentID'] == 0) {
                        ?>
                        <div class="category-item ">
                            <a class="sub-btn ">
                                <?= $item['categoryName'] ?> <i class="fa-solid fa-chevron-down dropdown"></i>
                            </a>
                            <div class="sub-category ">
                                <?php foreach ($subcategoryList as $scl) {
                                    if ($scl['parentID'] != 0 && $scl['parentID'] == $item['categoriesID']) {
                                        ?>
                                        <div class="sub-item">
                                            <a href="?mod=page&act=product&id<?= $scl['categoriesID'] ?>">
                                                <?= $scl['categoryName'] ?>
                                            </a>
                                        </div>
                                        <?php
                                    }
                                }
                                ?>
                            </div>
                        </div>
                        <?php
                    }
                }
                ?>
            </div>
            <h1>Sắp xếp sản phẩm</h1>
            <div class="arrange-product">
                <div class="arrange-item ">
                    <a class="sub-btn">
                        Sắp xếp<i class="fa-solid fa-chevron-down dropdown"></i>
                    </a>
                    <div class="sub-arrange">
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&order=ASC">+ Giá tăng dần</a>
                        </div>
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&order=DESC">+ Giá giảm dần</a>
                        </div>
                        <div class="sub-item">
                            <a href="#">+ A - Z</a>
                        </div>
                        <div class="sub-item">
                            <a href="#">+ Z - A</a>
                        </div>
                        <div class="sub-item">
                            <a href="#">+ Mới nhất</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fillter-product">
                <div class="fillter-item ">
                    <a class="sub-btn">
                        Lọc theo giá<i class="fa-solid fa-chevron-down dropdown"></i>
                    </a>
                    <div class="sub-fillter">
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&min_price=0&max_price=1000000">+ Dưới 1.000.000 <sup>đ</sup></a>
                        </div>
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&min_price=1000000&max_price=5000000">+ 1.000.000 - 5.000.000 <sup>đ</sup></a>
                        </div>
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&min_price=5000000&max_price=10000000">+ 5.000.000 - 10.000.000 <sup>đ</sup></a>
                        </div>
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&min_price=10000000&max_price=20000000">+ 10.000.000 - 20.000.000 <sup>đ</sup></a>
                        </div>
                        <div class="sub-item">
                            <a href="<?=$_SERVER['REQUEST_URI']?>&min_price=20000000&max_price=9999999999999">+ Trên 20.000.000 <sup>đ</sup></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="collection-product">
            <div class="list-product">
                <h1>Tất cả sản phẩm</h1>
                <div class="justify-content-space-between">
                    <div class="list-product-title justify-content-space-between">
                        <a href="#">Tất cả</a>
                        <a href="#">Nam</a>
                        <a href="#">Nữ</a>
                        <a href="#">Trẻ em</a>
                    </div>
                    <div class="form-horizontal display-flex">
                        <label for="">Sắp xếp</label>
                        <select name="sort_option" id="">
                            <option value=""></option>
                            <option value="<?= $a_z ?>">Z->A</option>
                            <option value="">A->Z</option>
                            <option value="">Giá tăng dần</option>
                            <option value="">Giá giảm dần</option>
                            <option value="">Mới trước</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="collection-list-product justify-content-space-between">
                <!-- product -->
                <?php foreach ($collectionProduct as $cp): ?>
                    
                    <div class="item-product">
                        <a href="#"><img src="<?= $cp['image'] ?>" alt=""></a>
                        <h3 class="product-title"><a href="#">
                                <?= $cp['productName'] ?>
                            </a>
                        </h3>
                        <span class="star">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </span>
                        <span class="promotion-price">
                            <?= $cp['promotionalPrice'] ?><sup>đ</sup>
                        </span>
                        <span class="price"><del>
                                <?= $cp['price'] ?><sup>đ</sup>
                            </del></span>
                        <span class="label-promotion">
                            <?= $cp['labelPromotion'] ?>
                        </span>

                        <div class="action-product display-flex">
                            <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                            <button class="add-cart"><a href="?mod=cart&act=add&id=<?=$cp['productsID'] ?>"><i class="fa-solid fa-cart-shopping"></i></a></button>
                        </div>
                    </div>
                    
                <?php endforeach; ?>
            </div>
            <!-- <div class="page-tranfer ">
                <div><a href="">1</a></div>
                
            </div> -->
            <nav class="page-list ">
                <ul class="pagination display-flex">
                    <?php for ($i = 1; $i <= $numberPage; $i++): ?>
                        <li class="page-item">
                            <a class="page-link" href="?mod=page&act=product&page=<?= $i ?>">
                                <?= $i ?>
                            </a>
                        </li>
                    <?php endfor; ?>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $(document).ready(function () {
        $('.sub-btn').click(function () {
            $(this).next('.sub-category').slideToggle();
            $(this).find('.dropdown').toggleClass('rotate');
        })
    })

    $(document).ready(function () {
        $('.sub-btn').click(function () {
            $(this).next('.sub-arrange').slideToggle();
            $(this).find('.dropdown').toggleClass('rotate');
        })
    })
    $(document).ready(function () {
        $('.sub-btn').click(function () {
            $(this).next('.sub-fillter').slideToggle();
            $(this).find('.dropdown').toggleClass('rotate');
        })
    })
</script>