const url = 'http://localhost:3000/'

document.addEventListener('DOMContentLoaded', () => {
    fetchUsers()
})

function fetchUsers() {
    fetch(url + "users")
    .then(r => r.json())
    .then(users => {
        users.forEach(makeCard)
    })
}

function makeCard(user) {
    let userContainer = document.querySelector("#user-container")
    let card = document.createElement('div')
    card.className = "card"

    card.innerHTML = `
        <div class="image">
            <img src=${user.image_url}>
        </div>
        <div class="content">
            <div class="header">${user.name}</div>
            <div class="meta">
            <a>${user.office}</a>
            </div>
            <div class="description">
            Favorite trees:
            </div>
        </div>
    `

    userContainer.append(card)
}