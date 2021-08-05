const notice = document.querySelector(".notice");
console.log("hola");
notice.style.opacity = '0';
notice.addEventListener('transitionend', () => notice.remove());