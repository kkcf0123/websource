const save = document.querySelector("div button: nth-child(1)");
const del = document.querySelector("div button: nth-child(2)");
const init = document.querySelector("div button: nth-child(3)");

save.addEventListener("click", () => (location.href = "sessionset.jsp"));
del.addEventListener("click", () => (location.href = "sessiondel.jsp"));
init.addEventListener("click", () => (location.href = "sessioninv.jsp"));
