<?php 
include_once '../model/category.php';
include_once '../model/product.php';
    extract($_REQUEST);
    if(isset($act)){
        switch($act){  
            case 'home':
                $newProduct = newProduct();
                $productOutstanding = productOutstanding();
                $stickGolfSpecial = stickGolfSpecial();
                $fashionGolf = fashionGolf();
                $bagGolf = bagGolf();
                $shoeGolf = shoeGolf();
                include_once 'view/template-header.php';
                include_once   'view/page-home.php';
                include_once 'view/template-footer.php';
                break;
            case 'product':x`
                // $categoryList = categoryList();
                $countProduct = countProduct();
                $numberPage = ceil($countProduct/15);
                if(!isset($page)) $page = 1;
                $collectionProduct = productPage($page);
                // $collectionProduct = collectionProduct($page);
                include_once 'view/template-header.php';
                include_once   'view/page-product.php';
                include_once 'view/template-footer.php';
        }
    }

?>