import { fetchMovies, searchMovies } from "./movies";
import { initSortable } from "./plugins/init_sortable";
import { initMarkdown } from "./plugins/init_markdown";
import { initSelect2 } from "./plugins/init_select2";

initSortable();
initMarkdown();
initSelect2();

const form = document.getElementById("search-movies");
form.addEventListener("submit", searchMovies);

fetchMovies("Harry Potter");
