const form = document.querySelector("form");
form.addEventListener("submit", (e) => {
  e.preventDefault(); // stop submit for check data

  const id = document.querySelector("#id");
  const name = document.querySelector("#name");
  const age = document.querySelector("#age");

  if (!id.value) {
    alert("check id");
    id.focus();
    return;
  } else if (!name.value) {
    alert("check name");
    name.focus();
    return;
  } else if (!age.value || isNaN(age.value)) {
    alert("check age");
    age.focus();
    return;
  }

  form.submit();
});
