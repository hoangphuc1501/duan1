// slider banner
let slider = document.querySelector('.banner .list-banner');
let items = document.querySelectorAll('.banner .list-banner .item-banner');
let next = document.getElementById('next');
let prev = document.getElementById('prev');
let dots = document.querySelectorAll('.banner .dots li');

let lengthItems = items.length - 1;
let active = 0;
next.onclick = function(){
active = active + 1 <= lengthItems ? active + 1 : 0;
reloadSlider();
}
prev.onclick = function(){
active = active - 1 >= 0 ? active - 1 : lengthItems;
reloadSlider();
}
let refreshInterval = setInterval(()=> {next.click()}, 3000);
function reloadSlider(){
slider.style.left = -items[active].offsetLeft + 'px';
// 
let last_active_dot = document.querySelector('.banner .dots li.active');
last_active_dot.classList.remove('active');
dots[active].classList.add('active');

clearInterval(refreshInterval);
refreshInterval = setInterval(()=> {next.click()}, 5000);

}

dots.forEach((li, key) => {
li.addEventListener('click', ()=>{
active = key;
reloadSlider();
})
})
window.onresize = function(event) {
reloadSlider();
};

// slider dịch vụ
$(document).ready(function(){
    $('.list-top-service').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        Infinity: true,
        arrows:true,
        autoplay: true,
        autoplaySpeed: 2000,
        prevArrow: `<button type='button' class='slick-prev slick-arrow'><i class="fa-solid fa-chevron-left"></i></button>`,
        nextArrow: `<button type='button' class='slick-next slick-arrow'><i class="fa-solid fa-chevron-right"></i></button>`,
        dots: false,
    });
});

// 

var imgFeature = document.querySelector('.img-feature')
var listImg = document.querySelectorAll('.list-image img')
var prevBtn = document.querySelector('.prev')
var nextBtn = document.querySelector('.next')

var currentindex = 0;

function updateImageByIndex(index){

    document.querySelectorAll('.list-image div').forEach(item =>{
        item.classList.remove('active')
    })
    currentindex = index
    imgFeature.src = listImg[index].getAttribute('src')
    listImg[index].parentElement.classList.add('active')
}

listImg.forEach((imgElement, index) => {
    imgElement.addEventListener('click', e=>{
        updateImageByIndex(index)
    })
})

prevBtn.addEventListener('click', e=>{
    if(currentindex == 0){
        currentindex = listImg.length - 1
    }else{
        currentindex--
    }
    updateImageByIndex(currentindex)
})
nextBtn.addEventListener('click', e=>{
    if(currentindex == listImg.length - 1){
        currentindex = 0
    }else{
        currentindex++
    }
    updateImageByIndex(currentindex)
})

updateImageByIndex(0)