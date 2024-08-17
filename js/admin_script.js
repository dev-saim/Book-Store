let navbar = document.querySelector('.header .navbar');
let accountBox = document.querySelector('.header .account-box');
let usericon = document.querySelector('#user-btn');
let menuicon = document.querySelector('#menu-btn');

document.querySelector('#menu-btn').onclick = () =>{
   navbar.classList.toggle('active');
   menuicon.classList.toggle('fa-times');
   accountBox.classList.remove('active');
   usericon.classList.remove('fa-times');
}

document.querySelector('#user-btn').onclick = () =>{
   accountBox.classList.toggle('active');
   navbar.classList.remove('active');
   usericon.classList.toggle('fa-times');
   menuicon.classList.remove('fa-times');
}

window.onscroll = () =>{
   navbar.classList.remove('active');
   accountBox.classList.remove('active');
   usericon.classList.remove('fa-times');
   menuicon.classList.remove('fa-times');

}