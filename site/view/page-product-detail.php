<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../assets/css/global.css">
    <link rel="stylesheet" href="../assets/css/product-detail.css">
    <title>Document</title>
</head>

<body>
    <div class="wrapper">
        <div class="product-single container align-items-start">
            <div class="detail-product-list-img">
                <div class="img-product">
                    <img class="img-feature"
                        src="https://product.hstatic.net/1000007560/product/m7038926-spider_s__1_7b3f06b5e4024fc093e5031cc6be3062_1024x1024.jpg"
                        alt="">
                    <div class="control prev"><i class="fa-solid fa-chevron-left"></i></div>
                    <div class="control next"><i class="fa-solid fa-chevron-right"></i></div>
                </div>
                <div class="list-image">
                    <div><img
                            src="https://product.hstatic.net/1000007560/product/m7038926-spider_s__1_7b3f06b5e4024fc093e5031cc6be3062_1024x1024.jpg"
                            alt=""></div>
                    <div><img
                            src="https://product.hstatic.net/1000007560/product/m7038926-spider_s__1-1_d7fa1f98c3bd447e90c8779d8cd252fd_1024x1024.jpg "
                            alt=""></div>
                    <div><img
                            src="https://product.hstatic.net/1000007560/product/2000000017712-04_-2_dc618e95cad0438ebdbc27ab0f6cf14c_1024x1024.jpg"
                            alt=""></div>
                    <div><img
                            src="https://product.hstatic.net/1000007560/product/2000000017712-04_-2_dc618e95cad0438ebdbc27ab0f6cf14c_1024x1024.jpg"
                            alt=""></div>
                </div>
            </div>
            <div class="detail-product-list-text">
                <h1>Gậy putter SPIDER S PLATINUM #1 34IN | TaylorMade</h1>
                <div class="type-brand-code justify-content-space-between">
                    <div class="type">
                        <a href="#">Gậy Driver</a>
                    </div>
                    <div class="brand">
                        <a href="#">TaylorMade</a>
                    </div>
                    <div class="code">
                        <p>Mã: M16142</p>
                    </div>
                </div>
                <div class="list-price justify-content-space-between">
                    <span class="promotion-price">16.705.000 <sup>đ</sup></span>
                    <span class="price"><del>20.800.000 <sup>đ</sup></del></span>
                    <span class="label-promotion">(Giảm 20%)</span>
                </div>
                <div class="loft">
                    <div class="loft-title">
                        <p>loft</p>
                    </div>
                    <div class="list-loft">
                        <label for="">10.5 <sup>o</sup></label>
                    </div>
                </div>
                <div class="shaft">
                    <div class="shaft-title">

                    </div>
                    <div class="list-shaft">

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
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

</html>