// *** When the DOM Loads, I want to make a GET fetch request,
// and make divs for each pokemon.

// *** When I submit my form, I want to make a POST
// request and append a new div with that data

// *** When I click on a pokemon card, a DELETE request should be made
// removing the data from the server AND removing that element from the DOM

const URL = 'http://localhost:3000/pokemon';

document.addEventListener('DOMContentLoaded', () => {
  // Any function we want to run immediately after the DOM is loaded
  // we put here
  getMyPokemon();
  // Rather than make a separate function, we can add an eventlistener as
  //soon as we obtain the DOM element
  document.querySelector('form').addEventListener('submit', submitHandler);
});

const getMyPokemon = () => {
  fetch(URL)
    //I make a get request with my URL
    .then((res) => res.json())
    // the call then passes the response which is then converted
    .then((pokemonData) => {
      pokemonData.forEach((pokemon) => {
        renderPokemon(pokemon);
      });
    });
};

const renderPokemon = (pokemon) => {
  //created pokemon div
  let pokeCard = document.createElement('Card');
  pokeCard.classList.add('card');
  document.querySelector('#pokemon-container').appendChild(pokeCard);
  pokeCard.id = `pokemon-${pokemon.id}`;

  //create the p tage
  let pTag = document.createElement('p');
  pTag.innerText = pokemon.name;
  pokeCard.appendChild(pTag);

  //create the image
  let pokeImg = document.createElement('img');
  pokeCard.appendChild(pokeImg);
  pokeImg.src = pokemon.sprite;
};

function submitHandler(event) {
  event.preventDefault();
  // We need to think about how we will obtain THEN structure the data we need
  let pokeData = {};
  pokeData.name = event.target[0].value;
  pokeData.sprite = event.target[1].value;
  console.log(pokeData);

  let requestPackage = {};
  requestPackage.method = 'POST';
  requestPackage.headers = { 'Content-Type': 'application/json' };
  requestPackage.body = JSON.stringify(pokeData);

  //Now that we have our data set, we will send it to our server
  fetch(URL, requestPackage)
    .then((res) => res.json())
    .then((pokemon) => renderPokemon(pokemon));
}

// function deletePokemon(event) {
//   let id = event.currentTarget.id.split('-')[1];
//   fetch(`http://localhost:3000/pokemon/${id}`, {
//     method: 'DELETE',
//   })
//     .then((res) => res.json())
//     .then(() => {
//       document.getElementById(`pokemon-${id}`).remove();
//     })
//     .catch(() => {
//       alert('Error, try again later');
//     });
// }
