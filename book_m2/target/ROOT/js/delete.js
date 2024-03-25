// submit 발생 시
// submit 기능 중지
// code,title,writer,price 비어 있는지 확인
document.querySelector("form").addEventListener("submit", (e) => {
  e.preventDefault();

  const code = document.querySelector("#code");

  if (!code.value || code.value.length != 4 || isNaN(code.value)) {
    alert("code 값이 비어 있거나 숫자 4자리가 아닙니다.");
    code.focus();
    return;
  }

  e.target.submit();
});
