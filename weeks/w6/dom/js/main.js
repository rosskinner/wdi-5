var body = document.getElementsByTagName('body')[0];
body.style.fontFamily = 'Arial, sans-serif';

var nick = document.getElementById('nickname');
nick.innerHTML = "Ros";

var fav = document.getElementById('favorites');
fav.innerHTML = "food, style, design";

var home = document.getElementById('hometown');
home.innerHTML = "Denistone West";

var list = document.getElementsByTagName('li');
for (i = 0; i < list.length; i ++) {
  list[i].className = 'listitem';
  list[i].style.color = "#ccc";
}

var img = document.createElement('img');
img.src = 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xap1/t31.0-8/1462621_10152034735208798_1991910334_o.jpg';
img.style.width = '200px';
body.appendChild(img);