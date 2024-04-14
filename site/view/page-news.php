<div class="page-new container align-items-start">
    <div class="new-title">
        <h1>Tin tức</h1>
    </div>
    <div class="list-new-item">
        <?php foreach ($newListAll as $nla): ?>
            <div class="new-item justify-content-space-between">
                <img src="<?= $nla['image'] ?>" alt="">
                <div class="new-text">
                    <a href="#">
                        <?= $nla['title'] ?>
                    </a>
                    <div class="author-time justify-content-space-between">
                        <p><i class="fa-solid fa-user"></i>
                            <?= $nla['author'] ?>
                        </p>
                        <p><i class="fa-regular fa-clock"></i>
                            <?= $nla['PublishDate'] ?>
                        </p>
                    </div>
                    <p>Trong khuôn khổ Hội chợ Japan Golf Fair 2024, đại diện Golfcity đã có chuyến thăm quan và kết nối...
                    </p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="list-news-product-item">
        <div class="news-new-product-item">
            <h3>Sản phẩm mới</h3>
            <?php foreach($newProduct as $np):?>
            <div class="new-product-item justify-content-space-between">
                <div class="news-img-item">
                    <a href="#"><img
                            src="<?= $np['image']?>"
                            alt=""></a>
                </div>
                <div class="product-item-text ">
                    <a href="#"><?= $np['productName']?></a>
                    <span class="promotion-price">
                    <?= $np['promotionalPrice']?><sup>đ</sup>
                    </span>
                    <span class="price"><del><?= $np['price']?><sup>đ</sup></del></span>
                </div>
            </div>
            <?php endforeach;?>
        </div>
        <div class="news-new-product-item">
            <h3>Sản phẩm nỗi bật</h3>
            <?php foreach($productOutstanding as $po):?>
            <div class="new-product-item justify-content-space-between">
                <div class="news-img-item">
                    <a href="#"><img
                            src="<?= $po['image']?>"
                            alt=""></a>
                </div>
                <div class="product-item-text ">
                    <a href="#"><?= $po['productName']?></a>
                    <span class="promotion-price">
                    <?= $po['promotionalPrice']?><sup>đ</sup>
                    </span>
                    <span class="price"><del><?= $po['price']?><sup>đ</sup></del></span>
                </div>
            </div>
            <?php endforeach;?>
        </div>
    </div>
</div>