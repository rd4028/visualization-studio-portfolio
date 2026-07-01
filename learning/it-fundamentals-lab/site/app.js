const form = document.querySelector("#review-form");
const scoreValue = document.querySelector("#score-value");
const scoreBox = document.querySelector(".score");

function updateScore() {
  const checked = [...form.querySelectorAll("input:checked")];
  const total = checked.reduce((sum, input) => sum + Number(input.dataset.weight), 0);

  scoreValue.textContent = total;
  scoreBox.classList.toggle("warning", total < 100 && total >= 50);
  scoreBox.classList.toggle("risk", total < 50);
}

form.addEventListener("change", updateScore);
updateScore();

