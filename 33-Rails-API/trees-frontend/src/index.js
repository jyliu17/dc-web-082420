const url = 'http://localhost:3000/'

document.addEventListener('DOMContentLoaded', () => {
    fetchUsers()
    fetchTrees()
    let form = document.querySelector("form")
    form.addEventListener('submit', handleFormSubmit)
})

function fetchUsers() {
    fetch(url + "users")
    .then(r => r.json())
    .then(users => {
        users.forEach(makeCard)
    })
}

function fetchTrees() {
    fetch(url + "trees")
    .then(r => r.json())
    .then(listTrees)
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
            Favorite trees: ${user.trees.map(tree => tree.common_name).join(", ")}
            </div>
        </div>
    `

    userContainer.append(card)
}

function listTrees(trees) {
    let ul = document.querySelector("#trees")
    trees.forEach(tree => {
        let li = document.createElement('li')
        li.innerText = `${tree.common_name} (${tree.binomial_name})`

        ul.append(li)
    })
}

function handleFormSubmit(e) {
    e.preventDefault()
    let name = e.target.querySelector("#name-input").value
    let office = e.target.querySelector("#office-input").value
    let image_url = e.target.querySelector("#image-input").value
    e.target.reset()

    fetch(url + "users", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            name: name, office: office, image_url: image_url
        })
    }).then(r => r.json())
    .then(makeCard)

}