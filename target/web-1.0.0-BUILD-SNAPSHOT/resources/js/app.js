const navSlide = ()=>{
    const burger = document.querySelector('.burger');
    const nav = document.querySelector('.nav-links');
    const navLinks = document.querySelectorAll('.nav-links li');
    // 토글 nav
    burger.addEventListener('click',()=>{
        nav.classList.toggle('nav-active');
    });
    // 애니메이션 링크
    navLinks.forEach((link, index) => {
        link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.3}` 
    });
}

navSlide();