<?php 
include_once '../model/user.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
            case 'list':
                $userList = userList();
                include_once 'view/template_header.php';
                include_once   'view/page_user_list.php';
                include_once 'view/template_footer.php';
                break;
                
    }
}

?>