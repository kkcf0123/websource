document.querySelector("form").addEventListener("submit", (e) => {
  e.preventDefault();

  const name = document.querySelector("#name");
  const title = document.querySelector("#title");
  const content = document.querySelector("#content");
  const password = document.querySelector("#password");

  if (!name.value) {
    alert("check name");
    name.focus();
    return;
  } else if (!title.value) {
    alert("check title");
    title.focus();
    return;
  } else if (!content.value) {
    alert("check content");
    content.focus();
    return;
  } else if (!password.value) {
    alert("check password");
    password.focus();
    return;
  }
  e.target.submit();
});

document.querySelector("#list").addEventListener("click", () => {
  location.href = "/qList.do";
});
