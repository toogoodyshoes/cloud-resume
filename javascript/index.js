document.addEventListener('DOMContentLoaded', function () {
  const pages = document.querySelectorAll('.page');
  let currentPage = 0;
  let lastScrollTop = 0;
  let isScrolling = false;

  window.addEventListener('wheel', function (e) {
    if (!isScrolling) {
      isScrolling = true;
      const st = window.scrollY || document.documentElement.scrollTop;
      if (st > lastScrollTop) {
        // Scrolling down
        if (currentPage < pages.length - 1) {
          currentPage++;
          scrollToPage(currentPage);
        }
      } else {
        // Scrolling up
        if (currentPage > 0) {
          currentPage--;
          scrollToPage(currentPage);
        }
      }
      lastScrollTop = st <= 0 ? 0 : st;
      e.preventDefault();
    }
  });

  function scrollToPage(index) {
    pages[index].scrollIntoView({ behavior: 'smooth', block: 'start' });
    setTimeout(() => {
      isScrolling = false;
    }, 800); // Adjust scroll duration as needed
  }


  const aboutButton = document.getElementById("about-button");
  aboutButton.addEventListener("click", function (event) {
    event.preventDefault();
    scrollToPage(0);
  });

  const projectsButton = document.getElementById("projects-button");
  projectsButton.addEventListener("click", function (event) {
    event.preventDefault();
    scrollToPage(1);
  });

  const workButton = document.getElementById("work-button");
  workButton.addEventListener("click", function (event) {
    event.preventDefault();
    scrollToPage(3);
  });
});
