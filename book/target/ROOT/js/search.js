// submit 발생 시
// submit 기능 중지
// code,title,writer,price 비어 있는지 확인
document.querySelector("form").addEventListener("submit", (e) => {
  e.preventDefault();

  const criteria = document.querySelector("#criteria");
  const keyword = document.querySelector("#keyword");

  if (!criteria.value == "검색 조건 선택") {
    alert("check options.");
    criteria.focus();
    return;
  } else if (!keyword.value) {
    alert("keyword check.");
    keyword.focus();
    return;
  }
  e.target.submit();
});
