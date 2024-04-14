<?php 
include_once '../model/user.php';
include_once '../model/feedback.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
        case 'list':
            $name = feedback_list();
            include_once 'view/template_header.php';
            include_once   'view/feedback/page_BinhLuan_list.php';
            include_once 'view/template_footer.php';
            break;
        case 'edit':
            $sp = user_one($id);
                if(isset($binhLuanEdit_submit)){
                    user_edit_feedback($content,$id); 
                    header('location: ?mod=feedback&act=list');  
                }
            include_once 'view/template_header.php';
            include_once   'view/feedback/page_BinhLuan_edit.php';
            include_once 'view/template_footer.php';
            break;
        case 'delete':
            user_delete($id);
                header('location: ?mod=feedback&act=list');
                break;




}}