<div class="page-search container">
    <div class="search-h1">
        <h1>Kết quả tìm kiếm cho từ khóa: <?= $keyword?></h1>
    </div>
    <div class="list-search justify-content-space-between">
        <?php foreach ($searchProducts as $sps): ?>
            <div class="item-product">
                <a href="#"><img src="<?= $sps['image'] ?>" alt=""></a>
                <h3 class="product-title"><a href="#">
                        <?= $sps['productName'] ?>
                    </a></h3>
                <span class="star">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </span>
                <span class="promotion-price">
                    <?= $sps['promotionalPrice'] ?><sup>đ</sup>
                </span>
                <span class="price"><del>3
                        <?= $sps['price'] ?><sup>đ</sup>
                    </del></span>
                <span class="label-promotion">
                    <?= $sps['labelPromotion'] ?>
                </span>

                <div class="action-product display-flex">
                    <button class="view-product"><a href="#"><i class="fa-solid fa-eye"></i></a></button>
                    <button class="add-cart"><a href="#"><i class="fa-solid fa-cart-shopping"></i></a></button>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>