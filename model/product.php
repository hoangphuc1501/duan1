<?php
    include_once 'pdo.php';

// Sản phẩm mới
    function newProduct(){
        $sql = "SELECT * FROM products ORDER BY creationDate  LIMIT 8;";
        return pdo_query($sql);
    }
// hàm show sản phẩm nổi bật
    function productOutstanding(){
        $sql = "SELECT * FROM products WHERE hot = 1 LIMIT 8";
        return pdo_query($sql);
    }

    function fashionGolf() {
        $sql = "SELECT * FROM products WHERE categoriesID = 5 LIMIT 8";
        return pdo_query($sql);
    }
    // hàm show quần áo golf
function stickGolfSpecial() {
    $sql = "SELECT * FROM products WHERE categoriesID = 1 ORDER BY labelPromotion DESC LIMIT 8";
    return pdo_query($sql);
}

// hàm show giày golf
function shoeGolf() {
    $sql = "SELECT * FROM products WHERE categoriesID = 3 LIMIT 8";
    return pdo_query($sql);
}
// hàm show túi golf
function bagGolf() {
    $sql = "SELECT * FROM products WHERE categoriesID = 2 LIMIT 8";
    return pdo_query($sql);
}

function productOne($id){
    $sql = "SELECT * FROM products WHERE productsID=?";
    return pdo_query_one($sql, $id);
}

// Trang product
    function collectionProduct(){
        $sql = "SELECT * FROM products";
        return pdo_query($sql);
    }
    // function categoryList(){
    //     $sql = "SELECT * FROM categories WHERE categoriesID=?";
    //     return pdo_query($sql);
    // }
// admin
// hàm đếm số lượng
function countProduct(){
    $sql = "SELECT COUNT(*) FROM products";
    return pdo_query_value($sql);
}
// hàm chia page
function productPage($page){
    $start = ($page-1)*15;
    $sql = "SELECT ps.*,cs.categoryName FROM products ps INNER JOIN categories cs On ps.categoriesID = cs.categoriesID LIMIT $start,15";
    return pdo_query($sql);
}

// hàm thêm sản phẩm
function productAdd($name ,$image, $price, $sale, $category, $description, $hot, $status){
    $sql = "INSERT INTO products (productName, image, price, promotionalPrice, categoriesID, description, hot, status) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
    return pdo_query($sql,$name ,$image, $price, $sale, $category, $description, $hot, $status);
}
// hàm xóa sản phẩm
function productDelete($id){
    $sql = "DELETE FROM products WHERE productsID=?";
    return pdo_execute($sql, $id);
}
// hàm sửa sản phẩm
function productEdit($id ,$name, $image, $price, $sale, $category, $description, $hot, $status){
    $sql = "UPDATE products SET productName=?, image=?, price=?, promotionalPrice=?, categoriesID=?, description=?, hot=?, status=? WHERE productsID =?";
    return pdo_query($sql,$name ,$image, $price, $sale, $category, $description, $hot, $status, $id);

}
?>