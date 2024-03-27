<?php
extract($_REQUEST);
if (isset($mod)) {
    switch ($mod) {
        case 'category':
            include_once 'controller/category.php';
            break;
        case 'product':
            include_once 'controller/product.php';
            break;
        case 'user':
            include_once 'controller/user.php';
            break;
        case 'feedback':
            include_once 'controller/user.php';
            break;
    }
} else {
    header('location: ?mod=user&act=list');
}
