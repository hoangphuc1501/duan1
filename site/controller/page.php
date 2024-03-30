<?php 
include_once '../model/new.php';
include_once '../model/category.php';
include_once '../model/product.php';
include_once '../model/user.php';
    extract($_REQUEST);
    if(isset($act)){
        switch($act){  
            case 'home':
                $categoryList = categoryList();
                $newProduct = newProduct();
                $productOutstanding = productOutstanding();
                $stickGolfSpecial = stickGolfSpecial();
                $fashionGolf = fashionGolf();
                $bagGolf = bagGolf();
                $shoeGolf = shoeGolf();
                $service = service();
                $newList =  newList();
                $Knowledge = Knowledge();
                include_once 'view/template-header.php';
                include_once   'view/page-home.php';
                include_once 'view/template-footer.php';
                break;
            case 'product':
                $categoryList = categoryList();
                $countProduct = countProduct();
                $numberPage = ceil($countProduct/15);
                if(!isset($page)) $page = 1;
                $collectionProduct = productPage($page);
                // $collectionProduct = collectionProduct($page);
                // if(!isset($minPrice)) $minPrice=0;
                // if(!isset($maxPrice)) $maxPrice=99999999999999;
                // if(!isset($order)) $order="";
                // $collectionProduct = collectionProduct($id, $minPrice, $maxPrice, $order);
                include_once 'view/template-header.php';
                include_once   'view/page-product.php';
                include_once 'view/template-footer.php';
                break;
            case 'search':
                $searchProducts = searchProduct($keyword);
                include_once 'view/template-header.php';
                include_once   'view/page-search.php';
                include_once 'view/template-footer.php';
                break;
            case 'contact':
                if (isset($contact_submit)){
                    contactForm($fullname, $email, $phone, $content);
                }
                include_once 'view/template-header.php';
                include_once   'view/page-contact.php';
                include_once 'view/template-footer.php';
        }
    }

?>