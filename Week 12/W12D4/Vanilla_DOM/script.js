document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  const handleSubmit = (e) => {
    e.preventDefault();

    const input = document.querySelector(".favorite-input");
    const favorite = input.value;
    input.value = "";

    const li = document.createElement("li");
    li.textContent = favorite;

    const list = document.getElementById("sf-places");
    list.appendChild(li);
  };

  const button = document.querySelector(".favorite-submit");
  button.addEventListener("click", handleSubmit);



  // adding new photos

  // --- your code here!



});
