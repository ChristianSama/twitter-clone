let notice = document.querySelector(".notice");

if (notice === null) {
  notice = document.querySelector(".alert-notice");
}

notice.style.opacity = '0';
notice.addEventListener('transitionend', () => notice.remove());