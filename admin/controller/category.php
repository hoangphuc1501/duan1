<?php 
include_once '../model/category.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
            case 'list':
                $dsdm = categoryList();
                // $countCategory = countCategory();
                // $numberPage = ceil($countCategory/15);
                // if(!isset($page)) $page = 1;
                // $categoryPage = categoryPage($page);
                include_once 'view/template_header.php';
                include_once   'view/category/page_category_list.php';
                include_once 'view/template_footer.php';
                break;
            case 'add':
                if(isset($addCategorySubmit)){
                    categoryAdd($name,$_FILES['image']['name'],$status);
                    move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                    header('location: ?mod=category&act=list');
                }
                include_once 'view/template_header.php';
                include_once   'view/category/page_category_add.php';
                include_once 'view/template_footer.php';
                break;
            case 'edit':
                $getCategory=categoryGetOne($id);
                if(isset($editCategory_submit)){
                categoryEdit($name, $_FILES['image']['name'], $status, $id);
                move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                header('location: ?mod=category&act=list');
                }
                include_once 'view/template_header.php';
                include_once   'view/category/page_category_edit.php';
                include_once 'view/template_footer.php';
                break;
            case 'delete':
                categoryDelete($id);
                header('location: ?mod=category&act=list');
                break;
    }
}