<?php 
include_once '../model/feedback.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
            case 'list':
                include_once 'view/template_header.php';
                include_once   'view/page_feedback_list.php';
                include_once 'view/template_footer.php';
                break;
                
    }
}

?>