<div class="wrapper">
    <div class="category-collection-product container align-items-start">
        <div class="list-category-product">
            <h1>Danh mục sản phẩm</h1>


            <div class="category-product ">
                <div class="category-item ">
                    <a class="sub-btn " href="#">Gậy Golf <i class="fa-solid fa-chevron-down dropdown"></i></a>
                    <div class="sub-category">
                        <div class="sub-item"><a href="#">Dashboard 1</a></div>
                        <div class="sub-item"><a href="#">Dashboard 2</a></div>
                        <div class="sub-item"><a href="#">Dashboard 3</a></div>
                    </div>
                </div>
                <div class="category-item">
                    <a class="sub-btn" href="#">Gậy Golf <i class="fa-solid fa-chevron-down dropdown"></i></a>
                    <div class="sub-category">
                        <div class="sub-item"><a href="#">Dashboard 1</a></div>
                        <div class="sub-item"><a href="#">Dashboard 2</a></div>
                        <div class="sub-item"><a href="#">Dashboard 3</a></div>
                    </div>
                </div>
                <div class="category-item"><a class="sub-btn" href="#">Gậy Golf <i
                            class="fa-solid fa-chevron-down dropdown"></i></a></div>
                <div class="category-item"><a class="sub-btn" href="#">Gậy Golf <i
                            class="fa-solid fa-chevron-down dropdown"></i></a></div>
                <div class="category-item"><a class="sub-btn" href="#">Gậy Golf <i
                            class="fa-solid fa-chevron-down dropdown"></i></a></div>
                <div class="category-item"><a class="sub-btn" href="#">Gậy Golf <i
                            class="fa-solid fa-chevron-down dropdown"></i></a></div>
                <div class="category-item"><a class="sub-btn" href="#">Gậy Golf <i
                            class="fa-solid fa-chevron-down dropdown"></i></a></div>
            </div>

        </div>
        <div class="collection-product">
            <div class="list-product">
                <h1>Tất cả sản phẩm</h1>
                <div class="justify-content-space-between">
                    <div class="list-product-title justify-content-space-between">
                        <a href="#">Tất cả</a>
                        <a href="#">nữ</a>
                    </div>
                    <div class="form-horizontal display-flex">
                        <label for="">Sắp xếp</label>
                        <select name="" id="">
                            <option value=""></option>
                            <option value="">Bán chạy</option>
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
                            <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <!-- <div class="page-tranfer ">
                <div><a href="">1</a></div>
                
            </div> -->
            <nav class="page-list display-flex">
                <ul class="pagination">
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
</script>