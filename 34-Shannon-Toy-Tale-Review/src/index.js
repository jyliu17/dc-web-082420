const url = 'http://localhost:3000/toys'
let addToy = false
addBtn = () => document.querySelector("#new-toy-btn")
let toyFormContainer = () => document.querySelector(".container")
let toyForm = () => document.querySelector('form')
let toyCollection = () => document.querySelector("#toy-collection")

document.addEventListener("DOMContentLoaded", () => {
  addBtn().addEventListener("click", toggleForm)
  toyForm().addEventListener("submit", handleFormSubmission)
  toyCollection().addEventListener("click", handleToyCollectionClick)
  fetchToys()
})

function toggleForm() {
    addToy = !addToy
    if (addToy) {
      toyFormContainer().style.display = "block"
    } else {
      toyFormContainer().style.display = "none"
    }
}

function fetchToys() {
  fetch(url)
  .then(r => r.json())
  .then(toys => {
    toys.forEach(makeToyCard)
  })
}

function makeToyCard(toy) {
  let div = document.createElement('div')
  div.className = "card"

  let h2 = document.createElement('h2')
  h2.textContent = toy.name
  div.append(h2)

  let img = document.createElement('img')
  img.src = toy.image
  img.className = "toy-avatar"
  div.append(img)

  let likes = document.createElement('p')
  likes.textContent = `${toy.likes} Likes`
  div.append(likes)

  let likeButton = document.createElement('button')
  likeButton.className = 'like-btn'
  likeButton.id = toy.id
  likeButton.textContent = 'Like <3'
  // likeButton.addEventListener("click", () => handleLikeClick(toy, likes))
  div.append(likeButton)

  toyCollection().append(div)
}

function handleFormSubmission(e) {
  e.preventDefault()
  let bodyObj = {
    name: e.target.name.value,
    image: e.target.image.value,
    likes: 0
  }
  e.target.reset()
  
  fetch(url, {
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify(bodyObj)
  }).then(r => r.json())
  .then(makeToyCard)
}

function handleToyCollectionClick(e) {
  if (e.target.classList.contains('like-btn')) {
    handleLikeClick(e.target.previousElementSibling, e.target.id)
  }
}

function handleLikeClick(likesDiv, toyId) {
  let newLikes = parseInt(likesDiv.textContent.split(" ")[0]) + 1

  fetch(`${url}/${toyId}`, {
    method: "PATCH",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify({likes: newLikes})
  }).then(r => r.json())
  .then(() => {
    likesDiv.textContent = `${newLikes} Likes`
  })
}

// function handleLikeClick(toy, likesDiv) {
//   toy.likes = toy.likes + 1

//   fetch(`${url}/${toy.id}`, {
//     method: "PATCH",
//     headers: {"Content-Type": "application/json"},
//     body: JSON.stringify({likes: toy.likes})
//   }).then(r => r.json())
//   .then(() => {
//     likesDiv.textContent = `${toy.likes} Likes`
//   })
// }
