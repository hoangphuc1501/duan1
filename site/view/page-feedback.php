<div class="page-feedback container">
    <!-- List feedback -->
    <hr>
    <h3>KHÁCH HÀNG ĐÁNH GIÁ : </h3>
    <?php if(isset($_SESSION['user'])): ?>
    <form method="post" class="form-feedback display-flex" action="">
        <textarea  class="content-feedback" cols="150" rows ="10" name="feedback"></textarea>
        <br>
        <input type="submit"  value="Gửi đánh giá" name="feedback_submit">
    </form>
    <?php else : ?>
    <div class=" display-flex">
        <a href="?mod=user&act=login" class="feedback-login">Đăng nhập để bình luận</a>    
    </div>
    <?php endif; ?>
    <?php foreach($feedbackList as $feedback): ?>
    <div class="feedback-list">
        <div class="feedback-title justify-content-space-between">
            <img class="feedback-img" src="https://library.sportingnews.com/styles/crop_style_16_9_desktop/s3/2024-03/Lionel%20Messi%20Inter%20Miami%202024%20013024.png?h=920929c4&itok=z23rxtBB">
            <span class="name-feedback"><?=$feedback['userName']?></span>
            <span class="date-feedback">Ngày bình luận: <?=$feedback['creationDate']?></span>
        </div>
        <div class="feedback-content" >
            <p><?=$feedback['content']?></p>
        </div>
    </div>
    <?php endforeach; ?>
    
</div>