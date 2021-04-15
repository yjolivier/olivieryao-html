// Do a nav scrool effect with simply js

const navScroll = document.getElementById("nav-scroll");
const headerContainer = document.getElementById("header-container");
window.onscroll = function () {
  if (document.documentElement.scrollTop > 90) {
    navScroll.style.background = "#222";
    navScroll.style.transition = "all 0.3s";
  } else {
    navScroll.style.background = "transparent";
  }
};

//smooth srolling effect and active nav style
// const links = document.querySelectorAll(
//   ".header-container .menu-container ul a"
// );
// const menu = document.getElementById("myMenu");
// const navigationLinks = document.getElementsByClassName("navigation__link");

// for (const link of links) {
//   link.addEventListener("click", clickHandler);
// }

// function clickHandler(e) {
//   e.preventDefault();
//   const href = this.getAttribute("href");
//   const offsetTop = document.querySelector(href).offsetTop;

//   scroll({
//     top: offsetTop,
//     behavior: "smooth",
//   });
// }

// for (var i = 0; i < navigationLinks.length; i++) {
//   navigationLinks[i].addEventListener("click", function () {
//     var current = document.getElementsByClassName("active");
//     current[0].className = current[0].className.replace(" active", "");
//     this.className += " active";
//   });
// }

// Page loaded animation
const loader = document.querySelector(".loader-card");

window.addEventListener("load", () => {
  loader.classList.add("fondu-out");
});
