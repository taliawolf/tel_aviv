cards = document.querySelectorAll('.home-page-cards > .home-page-card')
cards.forEach((card) => {
  card.addEventListener('mouseenter', (event) => {
    event.currentTarget.classList.add("clicked-card")
  });
});

cards.forEach((card) => {
  card.addEventListener('mouseleave', (event) => {
    event.currentTarget.classList.remove("clicked-card")
  });
});
