<?php
include_once '../model/cart.php';
include_once '../model/product.php';
include_once '../model/category.php';

extract($_REQUEST);
if (isset($act)) {
    switch ($act) {
        case 'add':
            $categoryList = categoryList();
            $product = productOne($id);
            if (isset($_SESSION['cart'][$id])) {
                $_SESSION['cart'][$id]['quantity'] += 1;
            } else {
                $_SESSION['cart'][$id] = array(
                    'productsID' => $product['productsID'],
                    'productName' => $product['productName'],
                    'image' => $product['image'],
                    'price' => $product['price'],
                    'promotionalPrice' => $product['promotionalPrice'],
                    'quantity' => 1,
                );
            }
            include_once 'view/template-header.php';
            include_once 'view/page-cart.php';
            include_once 'view/template-footer.php';
            break;
        case 'delete':
            unset($_SESSION['cart'][$id]);
            header('location: ?mod=cart&act=list');
            break;
        case 'list':
            $categoryList = categoryList();
            include_once 'view/template-header.php';
            include_once 'view/page-cart.php';
            include_once 'view/template-footer.php';
            break;
        case 'increase':
            $_SESSION['cart'][$id]['quantity'] += 1;
            header('location: ?mod=cart&act=list');
            break;
        case 'decrease':
            if ($_SESSION['cart'][$id]['quantity'] > 1) {
                $_SESSION['cart'][$id]['quantity'] -= 1;
            } else {
                unset($_SESSION['cart'][$id]);
            }
            header('location: ?mod=cart&act=list');
            break;
        case 'payment':
            $categoryList = categoryList();
            include_once 'view/template-header.php';
            include_once 'view/page-payment.php';
            include_once 'view/template-footer.php';
            break;
    }
}

?>