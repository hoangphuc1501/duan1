<?php 
include_once '../model/product.php';
include_once '../model/category.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
            case 'list':
                $productList = productList();
                // $countProduct = countProduct();
                // $numberPage = ceil($countProduct/15);
                // if(!isset($page)) $page = 1;
                // $productPage = productPage($page);
                include_once 'view/template_header.php';
                include_once   'view/product/page_product_list.php';
                include_once 'view/template_footer.php';
                break;
                case 'add':
                    $productList = productList(); 
                    if(isset($addProduct_submit)){
                        productAdd($name ,$_FILES['image']['name'], $price, $sale, $product, $description, $hot, $status);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                        header('location: ?mod=product&act=list');
                    }
                    include_once 'view/template_header.php';
                    include_once   'view/product/page_product_add.php';
                    include_once 'view/template_footer.php';
                    break;
            case 'delete':
                productDelete($id);
                header('location: ?mod=product&act=list');
                break;
            case 'edit':
                $ps = productOne($id);
                $categoryList = categoryList();
                if(isset($editProduct_submit)){
                    if($_FILES['image']['name']!=null){
                        productEdit($id,$name, $_FILES['image']['name'], $price, $sale, $category, $description, $hot, $status);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                        header('location: ?mod=product&act=list');
                    }else{
                        productEdit($id,$name, $ps['image'], $price, $sale, $category, $description, $hot, $status);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                        header('location: ?mod=product&act=list');
                    }
                    
                }
                include_once 'view/template_header.php';
                include_once   'view/product/page_product_edit.php';
                include_once 'view/template_footer.php';
                break;
    }
}