const url = "http://localhost:3000/films"
const filmsDiv = () => document.querySelector("#films")
const poster = () => document.querySelector("#poster")
const title = () => document.querySelector('#title')
const runtime = () => document.querySelector('#runtime')
const filmInfo = () => document.querySelector('#film-info')
const showtime = () => document.querySelector('#showtime')
const ticketNum = () => document.querySelector('#ticket-num')
const buttonDiv = () => document.querySelector('#button-div')
const button = () => document.querySelector('#button')

document.addEventListener('DOMContentLoaded', () => {
    fetchAllMovies()
    fetchOneMovie(1)
    button().addEventListener('click', buyTicket)
})

function fetchAllMovies() {
    fetch(url)
    .then(r => r.json())
    .then(listMovies)
}

function fetchOneMovie(id) {
    fetch(`${url}/${id}`)
    .then(r => r.json())
    .then(displayMovie)
}

function listMovies(movies) {
    movies.forEach(movie => {
        let filmItem = document.createElement('div')
        filmItem.className = (movie.capacity == movie.tickets_sold ? "sold-out film item" : "film item")
        filmItem.textContent = movie.title
        filmItem.id = `movie-${movie.id}`
        filmItem.addEventListener('click', () => fetchOneMovie(movie.id))
        filmsDiv().appendChild(filmItem)
    })
}

function displayMovie(movie) {
    title().textContent = movie.title
    runtime().textContent = `${movie.runtime} minutes`
    filmInfo().textContent = movie.description
    showtime().textContent = movie.showtime
    poster().src = movie.poster

    let ticketsLeft = movie.capacity - movie.tickets_sold
    ticketNum().textContent = ticketsLeft

    button().dataset.id = movie.id
    button().dataset.capacity = movie.capacity
    button().dataset.ticketsSold = movie.tickets_sold

    if (ticketsLeft === 0) {
        button().className = "ui label"
        button().textContent = "SOLD OUT"
    } else {
        button().className = "ui orange button"
        button().textContent = "Buy Ticket"
    }

}


function buyTicket() {
    let ticketsSold = parseInt(button().dataset.ticketsSold)
    let capacity = parseInt(button().dataset.capacity)

    if (ticketsSold < capacity) {

        fetch(`${url}/${button().dataset.id}`, {
            method: "PATCH",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({tickets_sold: ticketsSold + 1})
        }).then(r => r.json())
        .then(updatedMovie => {
            
            if (updatedMovie.capacity == updatedMovie.tickets_sold) {
                let filmItem = document.querySelector(`#movie-${updatedMovie.id}`)
                filmItem.classList.add('sold-out')
            }

            displayMovie(updatedMovie)
        })

    }
}