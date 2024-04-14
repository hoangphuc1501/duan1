<?php
include_once '../model/news.php';
include_once '../model/category.php';
include_once '../model/product.php';
include_once '../model/user.php';
include_once '../model/feedback.php';
include_once '../model/cart.php';
extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'home':
            $categoryList = categoryList();
            $newProduct = newProduct();
            $productOutstanding = productOutstanding();
            $stickGolfSpecial = stickGolfSpecial();
            $fashionGolf = fashionGolf();
            $bagGolf = bagGolf();
            $shoeGolf = shoeGolf();
            $service = service();
            $newList = newList();
            $Knowledge = Knowledge();
            include_once 'view/template-header.php';
            include_once 'view/page-home.php';
            include_once 'view/template-footer.php';
            break;
        case 'product':
            $categoryList = categoryList();
            $countProduct = countProduct();
            $numberPage = ceil($countProduct / 15);
            if (!isset($page))
                $page = 1;
            $id = isset($_GET['id']) ? $_GET['id'] : 0;
            $minPrice = isset($_GET['minPrice']) ? $_GET['minPrice'] : 0;
            $maxPrice = isset($_GET['maxPrice']) ? $_GET['maxPrice'] : 99999999999999;
            $order = isset($_GET['order']) ? $_GET['order'] : 'DESC';
            $collectionProduct = collectionProduct($id, $minPrice, $maxPrice, $order, $page);
            include_once 'view/template-header.php';
            include_once 'view/page-product.php';
            include_once 'view/template-footer.php';
            break;
        case 'search':
            $categoryList = categoryList();
            $searchProducts = searchProduct($keyword);
            include_once 'view/template-header.php';
            include_once 'view/page-search.php';
            include_once 'view/template-footer.php';
            break;
        case 'contact':
            $categoryList = categoryList();
            if (isset($contact_submit)) {
                contactForm($fullname, $email, $phone, $content);
            }
            include_once 'view/template-header.php';
            include_once 'view/page-contact.php';
            include_once 'view/template-footer.php';
            break;
        case 'productDetail':
            $categoryList = categoryList();
            $listProductImage = listProductImage($id);
            $productOutstanding = productOutstanding();
            $productDetail = productOne($id);
            $feedbackList = feedbackList($id);
            if (isset($feedback_submit)) {
                feedbackAdd($_SESSION['user']['usersID'], $feedback, $id);
                header('location: ?mod=page&act=productDetail&id='.$id);
            }
            include_once 'view/template-header.php';
            include_once 'view/page-product-detail.php';
            include_once 'view/page-feedback.php';
            include_once 'view/template-footer.php';
            break;
        case 'news':
            $categoryList = categoryList();
            $newListAll = newListAll();
            $newProduct = newProduct();
            $productOutstanding = productOutstanding();
            include_once 'view/template-header.php';
            include_once 'view/page-news.php';
            include_once 'view/template-footer.php';
            break;
        case 'about':
            $categoryList = categoryList();
            include_once 'view/template-header.php';
            include_once 'view/page-about.php';
            include_once 'view/template-footer.php';
    }
}

?>