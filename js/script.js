let userBox = document.querySelector('.header .header-1 .user-box');
let usericon = document.querySelector('#user-btn');
let menuicon = document.querySelector('#menu-btn');

document.querySelector('#user-btn').onclick = () =>{
   userBox.classList.toggle('active');
   navbar.classList.remove('active');
   usericon.classList.toggle('fa-times');
   menuicon.classList.remove('fa-times');
}

let navbar = document.querySelector('.header .header-1 .navbar');

document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   userBox.classList.remove('active');
   usericon.classList.remove('fa-times');
   menuicon.classList.toggle('fa-times');

}

window.onscroll = () =>{
   userBox.classList.remove('active');
   navbar.classList.remove('active');
   usericon.classList.remove('fa-times');
   menuicon.classList.remove('fa-times');



   if(window.scrollY > 0){
      document.querySelector('.header .header-1').classList.add('active');
   }else{
      document.querySelector('.header .header-1').classList.remove('active');
   }
}

const to = document.querySelector(".to-top")
window.addEventListener("scroll", ()=>{
    if(window.pageYOffset>100)
    {
        to.classList.add("active");
    }
    else
    {
        to.classList.remove("active");
    }
})