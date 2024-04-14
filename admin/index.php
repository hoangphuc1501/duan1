<?php
extract($_REQUEST);
if (isset($mod)) {
    switch ($mod) {
        case 'category':
            include_once '../admin/controller/category.php';
            break;
        case 'product':
            include_once '../admin/controller/product.php';
            break;
        case 'user':
            include_once '../admin/controller/user.php';
            break;
        case 'feedback':
            include_once '../admin/controller/feedback.php';
            break;
        case 'order':
           include_once '../admin/controller/order.php';
           break;
    }
} else {
    header('location: ?mod=user&act=list');
}
