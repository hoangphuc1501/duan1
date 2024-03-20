<?php 
// include_once '../model_DAO/category.php';
// include_once '../model_DAO/product.php';
    include_once '../assets/css/style.css';
    extract($_REQUEST);
    if(isset($act)){
        switch($act){  
            case 'home':
                // include_once 'view/template-header.php';
                include_once   'view/page-home.php';
                // include_once 'view/template-footer.php';
                break;
        }
    }

?>