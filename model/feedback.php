<?php
include_once 'pdo.php'; 

function feedbackList($id){
    $sql = "SELECT * FROM comments cm INNER JOIN users us ON cm.usersID = us.usersID WHERE productsID=?";
        return pdo_query($sql, $id);
}
function feedbackAdd($userID, $feedback, $id){
    $sql = "INSERT INTO comments(usersID, content, productsID) VALUES(?,?,?)";
    return pdo_execute($sql, $userID, $feedback, $id);
}




// Trang admin
function feedback_list(){
    $sql = "SELECT * FROM comments";
    return pdo_query($sql);
}

function user_namelist(){
    $sql = "SELECT * FROM comments 
    INNER JOIN products on comments.productsID = products.productsID
    INNER JOIN users on comments.usersID = users.usersID
    ";
    return pdo_query($sql);
}


function user_edit_feedback($content,$id){
        $sql = "UPDATE comments SET content=? WHERE commentsID =?";
        return pdo_execute($sql,$content,$id);
    }
    // function user_delete($id){
    //     $sql = "DELETE FROM comments WHERE commentsID=?";
    //     return pdo_execute($sql, $id);
    // }
?>