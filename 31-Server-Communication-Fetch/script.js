//Callback hell
getHTTP('https://www.reddit.com/.json', function () {
  response.convertStringToJavaScript(function () {
    object.data.children.forEach(function (post) {
      console.log(post);
    });
  });
});

//Inside a fetch call
function fetchAnimals() {
  let animals = fetch('https://animal-farm-api.herokuapp.com/animals');
  console.log(animals);
}

// We need some way to say "when I actually get the data, do something"
// we need .then()
function fetchAnimals() {
  fetch('https://animal-farm-api.herokuapp.com/animals')
    .then((response) => response.json())
    .then((animalsArray) => {
      animalsArray.forEach((animal) => {
        console.log(animal);
      });
    });
}

//Now that we have obtain the data, we can dynamically update the DOM with it
function renderAnimal(animal) {
  // Grab the container from the DOM
  let container = document.querySelector('.container');

  //create a div for the animal
  let animalDiv = document.createElement('div');
  let classes = ['col-md-auto', 'card'];
  animalDiv.classList.add(...classes);
  animalDiv.style.width = '18rem';
  container.appendChild(animalDiv);

  //create a p
  let paragraphEl = document.createElement('p');
  paragraphEl.classList.add('card-text');
  paragraphEl.innerText = `${animal.name} the ${animal.species}`;
  animalDiv.appendChild(paragraphEl);

  //create animal image
  let imageEl = document.createElement('img');
  imageEl.classList.add('card-img-top');
  animalDiv.appendChild(imageEl);
  imageEl.src = animal.img;
}

//Lets See how we can use the above in conjunction with an event
