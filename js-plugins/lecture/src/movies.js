const insertResult = (data) => {
  data.Search.forEach((result) => {
    const movie = `<li class="list-inline-item">
      <img src="${result.Poster}" height="120px">
    </li>`;
    results.insertAdjacentHTML("beforeend", movie);
  });
};

const fetchMovies = (query) => {
  results.innerHTML = "";
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
    .then((response) => response.json())
    .then(insertResult);
};

const searchMovies = (event) => {
  event.preventDefault();
  const input = document.getElementById("keyword");
  const keyword = input.value;
  fetchMovies(keyword);
};

export { fetchMovies, searchMovies };
