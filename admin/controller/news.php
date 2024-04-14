<?php 
include_once '../model/news.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
        case 'list':
            // $dsdm = other_list();
            $countNews = countNews();
            $numberPage = ceil($countNews/10);
            if(!isset($page)) $page = 1;
            $newsPage = newsPage($page);
            include_once 'view/template_header.php';
            include_once  'view/news/page_news_list.php';
            include_once 'view/template_footer.php';
            break;
            case 'edit':
                $sp = news_one($id);
                if(isset($newsEdit_submit)){
                    if($_FILES['hinhAnh']['name']!=null){
                        news_edit($id,$title,$content,$_FILES['hinhAnh']['name'],$TrangThai);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                        header('location: ?mod=news&act=list');
                    }else{
                        news_edit($id,$title,$content,$_FILES['hinhAnh']['name'],$TrangThai);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                        header('location: ?mod=news&act=list');
                    }
                    
                }
                include_once 'view/template_header.php';
                include_once  'view/news/page_news_edit.php';
                include_once 'view/template_footer.php';
                break;
            case 'delete':
                news_delete($id);
                    header('location: ?mod=news&act=list');
                    break;

}}