/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/
const button = document.querySelector("#dyslexia-toggle");
const content = document.querySelector("body");

let isPressed = window.localStorage.getItem("dyslexic") === "true";
if (isPressed) {
  document.body.className = "dyslexia-mode";
}

button.addEventListener("click", () => {
  content.className =
    content.className !== "dyslexia-mode" ? "dyslexia-mode" : "";
  isPressed = !isPressed;
  window.localStorage.setItem("dyslexic", String(isPressed));
});
