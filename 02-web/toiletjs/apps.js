console.log('please flush');

var poop = function() {
  document.getElementsByTagName('body')[0].style.backgroundColor = 'darkolivegreen';
}

var poopBtn = document.getElementById('poop-btn');

poopBtn.addEventListener('click', poop);

var flush = function() {
  document.getElementsByTagName('body')[0].style.backgroundColor = 'mintcream';
}

var flushBtn = document.getElementById('flush-btn');

flushBtn.addEventListener('click', flush);
