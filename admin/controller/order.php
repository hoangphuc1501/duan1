<?php 
include_once '../model/order.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
        case 'list':
            $dsdm = other_list();

            include_once 'view/template_header.php';
            include_once   'view/order/page_order_list.php';
            include_once 'view/template_footer.php';
            break;




}}