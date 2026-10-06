/**
 * 
 */
// Welcome message
console.log("Library Dashboard Loaded");

// Highlight sidebar menu
const menu = document.querySelectorAll(".sidebar li");

menu.forEach(item=>{
    item.addEventListener("click",()=>{

        menu.forEach(i=>i.classList.remove("active"));

        item.classList.add("active");

    });
});

// Search functionality (basic)
const searchInput = document.querySelector(".search-box input");

searchInput.addEventListener("keyup", function () {
    const value = this.value.toLowerCase();
    const cards = document.querySelectorAll(".book-card");

    cards.forEach(card => {
        const title = card.querySelector("h6").textContent.toLowerCase();
        card.style.display = title.includes(value) ? "block" : "none";
    });
});

// Fade in animation
window.addEventListener("load",()=>{
    document.body.style.opacity="1";
});