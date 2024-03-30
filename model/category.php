<?php 
    include_once 'pdo.php';
    // hàm lấy danh mục
    function categoryList(){
        $sql = "SELECT * FROM categories";
        return pdo_query($sql,);
    }
    // hàm chia page
    // function categoryPage($page){
    //     $start = ($page-1)*5;
    //     $sql = "SELECT sp.*,dm.TenDanhMuc FROM SanPham sp INNER JOIN DanhMuc dm On sp.MaDanhMuc = dm.MaDanhMuc LIMIT $start,5";
    //     return pdo_query($sql);
    // }
    // hàm thêm danh mục
    function categoryAdd($name, $image, $status){
        $sql = "INSERT INTO categories (categoryName, image, status) VALUES (?, ?, ?)";
        return pdo_execute($sql, $name, $image, $status);
    }

    function categoryGetOne($id){
        $sql = "SELECT * FROM categories WHERE categoriesID=?";
        return pdo_query_one($sql, $id);    
    }
    function categoryEdit($name, $image, $status, $id){
        $sql = "UPDATE categories SET categoryName=?, image=?, status=? WHERE categoriesID=?";
        return pdo_execute($sql, $name, $image, $status, $id);
    }

    function categoryDelete($id){
        $sql = "DELETE FROM categories WHERE categoriesID=?";
        return pdo_execute($sql, $id);
    }
?>