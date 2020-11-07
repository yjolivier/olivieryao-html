const navScroll = document.getElementById('nav-scroll');

window.onscroll = function(){
    if(document.documentElement.scrollTop > 80){
        navScroll.style.background = "#222";
        navScroll.style.transition = "all 0.3s";
    }
    else{
        navScroll.style.background = "transparent";
    }
};

