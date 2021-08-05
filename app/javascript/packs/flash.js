const notice = document.querySelector(".notice");
notice.style.opacity = '0';
notice.addEventListener('transitionend', () => notice.remove());