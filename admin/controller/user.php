<?php 
include_once '../model/user.php';
extract($_REQUEST);
if(isset($act)){
    switch($act){
            case 'list':
                $userList = user_list();
                include_once 'view/template_header.php';
                include_once   'view/user/page_user_list.php';
                include_once 'view/template_footer.php';
                break;
                case 'add':
                    $dsdm = user_list(); 
                    if(isset($addUser_submit)){
                        user_add($email, $matKhau,$name,$DiaChi, $Sdt, $vaiTro, $_FILES['hinhAnh']['name'],$TrangThai);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                        header('location: ?mod=user&act=list');
                    }
                    include_once 'view/template_header.php';
                    include_once  'view/user/page_user_add.php';
                    include_once 'view/template_footer.php';
                    break;
            case 'delete':
                    user_delete($id);
                    header('location: ?mod=user&act=list');
                    break;
            case 'edit':
                    $sp = user_one($id);
                    $dsdm = user_list();
                    if(isset($userEdit_submit)){
                        if($_FILES['hinhAnh']['name']!=null){
                            user_edit($id,$email,$matKhau,$name,$DiaChi,$Sdt,$vaiTro,$_FILES['hinhAnh']['name'],$TrangThai);
                            move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                            header('location: ?mod=user&act=list');
                        }else{
                            user_edit($id,$email,$matKhau,$name,$DiaChi,$Sdt,$vaiTro,$_FILES['hinhAnh']['name'],$TrangThai);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../admin/HinhAnh/'.$_FILES['image']['name']);
                            header('location: ?mod=user&act=list');
                        }
                        
                    }
                
                include_once 'view/template_header.php';
                include_once  'view/user/page_user_edit.php';
                include_once 'view/template_footer.php';
                break;
    
    }
    }
?>