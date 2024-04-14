<?php
    include_once 'pdo.php';
//================
//trang chủ
//================

// hàm show Sản phẩm mới
    function newProduct(){
        $sql = "SELECT * FROM products ORDER BY creationDate DESC LIMIT 8;";
        return pdo_query($sql);
    }
// hàm show sản phẩm nổi bật
    function productOutstanding(){
        $sql = "SELECT * FROM products WHERE hot = 1 LIMIT 8";
        return pdo_query($sql);
    }
// hàm sản phẩm quần áo
    function fashionGolf() {
        $sql = "SELECT * FROM products WHERE categoriesID = 37 OR categoriesID = 38 LIMIT 8";
        return pdo_query($sql);
    }
    // hàm show sản phẩm đặc biệt
function stickGolfSpecial() {
    $sql = "SELECT * FROM products WHERE categoriesID = 14 OR categoriesID = 15  ORDER BY labelPromotion DESC LIMIT 12";
    return pdo_query($sql);
}

// hàm show giày golf
function shoeGolf() {
    $sql = "SELECT * FROM products WHERE categoriesID = 28 OR categoriesID = 29 LIMIT 8";
    return pdo_query($sql);
}
// hàm show túi golf
function bagGolf() {
    $sql = "SELECT * FROM products WHERE categoriesID = 23 OR categoriesID = 24 LIMIT 8";
    return pdo_query($sql);
}

function productOne($id){
    $sql = "SELECT * FROM products WHERE productsID=?";
    return pdo_query_one($sql, $id);
}

// hàm show hình ảnh 
function listProductImage($id){
    $sql = "SELECT * FROM productsimage WHERE productsID=?";
    return pdo_query($sql, $id);
}

//================
//Trang product
//================

// hàm show sản phẩm
    // function collectionProduct($id, $minPrice, $maxPrice, $order, $page) {
    //     $start = ($page-1)*15;
    //     $sql = "SELECT * FROM products WHERE promotionalPrice > ".$minPrice." AND promotionalPrice < ".$maxPrice;
    //     if ($id)  $sql .= " AND categoriesID = ".$id;
    //     $sql .= " ORDER BY promotionalPrice ".$order;
    //     $sql .= " LIMIT $start,15";
    //     //echo $sql;
    //     return pdo_query($sql);
    // }

    function collectionProduct($id, $minPrice, $maxPrice, $order, $page) {
        $start = ($page - 1) * 15;
        $sql = "SELECT * FROM products WHERE promotionalPrice > ".$minPrice." AND promotionalPrice < ".$maxPrice;
        if ($id)  $sql .= " AND categoriesID = ".$id;
        
        // Thêm điều kiện sắp xếp theo thứ tự từ A đến Z hoặc từ Z đến A
        if ($order == 'AZ') {
            $sql .= " ORDER BY productName ASC";
        } elseif ($order == 'ZA') {
            $sql .= " ORDER BY productName DESC";
        } elseif ($order == 'ASC') {
            $sql .= " ORDER BY promotionalPrice ASC"; // Sắp xếp theo giá tăng dần
        } elseif ($order == 'DESC') {
            $sql .= " ORDER BY promotionalPrice DESC"; // Sắp xếp theo giá giảm dần
        } elseif ($order == 'NEWEST') {
            $sql .= " ORDER BY creationDate DESC"; // Sắp xếp theo sản phẩm mới nhất
        } else {
            // Mặc định sắp xếp theo giá giảm dần
            $sql .= " ORDER BY promotionalPrice DESC";
        }
    
        $sql .= " LIMIT $start,15";
        
        return pdo_query($sql);
    }
    
//================
//Trang search
//================

// hàm tìm kiếm

    function searchProduct($keyword){
        $sql = "SELECT * FROM products WHERE productName LIKE '%$keyword%'";
        return pdo_query($sql);
    }


//================
//Trang admin
//================

function productList(){
    $sql = "SELECT * from products  ";
    return pdo_query($sql);
}
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