<?php 
    include_once 'pdo.php';

    function service(){
    $sql = "SELECT * FROM news WHERE category = 'Dịch vụ'";
    return pdo_query($sql);
}    function knowledge(){
        $sql = "SELECT * FROM news WHERE category = 'Kiến thức' LIMIT 4";
        return pdo_query($sql);
    }

    function newList(){
        $sql = "SELECT * FROM news WHERE category = 'Tin tức' LIMIT 4";
        return pdo_query($sql);
    }
    
    function newListAll(){
        $sql = "SELECT * FROM news";
        return pdo_query($sql);
    }


    // trang admin
    function countNews(){
        $sql = "SELECT COUNT(*) FROM news";
        return pdo_query_value($sql);
    }
    
    
    function newsPage($page){
        $start = ($page-1)*10;
        $sql = "SELECT * from news LIMIT $start,10";
        return pdo_query($sql);
    }
    
    function news_edit($id,$title,$content,$image,$TrangThai){
        $sql = "UPDATE news SET  title=?,content=?,image=?,status=? WHERE newsID =?";
        return pdo_execute($sql,$title,$content,$image,$TrangThai,$id);
    }
    
    function news_delete($id){
        $sql = "DELETE FROM news WHERE newsID=?";
        return pdo_execute($sql, $id);
    }
    function news_one($id){
        $sql = " SELECT * FROM news WHERE newsID=?";
        return pdo_query_one($sql, $id);
    }
?>