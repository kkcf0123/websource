const pagination = document.querySelector(".pagination");
const criteria = document.querySelector("#criteria");
console.log(pagination);

pagination.addEventListener("click", (e) => {
  e.preventDefault();

  console.log(e.target.href);
  console.log(e.target.getAttribute("href"));

  const href = e.target.getAttribute("href");

  actionForm.querySelector("[name = 'page']").value = href;

  console.log(actionForm);
  // e.target.submit();
});

document.querySelector("[name = search]").addEventListener("submit", (e) => {
  e.preventDefault();

  const criteria = document.querySelector("[name = criteria]");
  const keyword = document.querySelector("[name = keyword]");

  if (criteria.value == "n") {
    alert("check criteria");
    criteria.focus();
    return;
  } else if (!keyword.value) {
    alert("check keyword");
    keyword.focus();
    return;
  }

  e.target.submit();
});

// document.querySelector("").addEventListener("", () => {});
