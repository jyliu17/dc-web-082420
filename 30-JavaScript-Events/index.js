// Async JS
console.log('First');
setTimeout(() => console.log('second'), 0);
console.log('Third');

//event listeners always take TWO arguments
// The event "type" and a "callback"
document.addEventListener('mouseenter', console.log('look at me'));

//THE DOMContentLoaded Event
//with the script tag up top
console.log(document.querySelector('table'));

//DOM CRUD With Events

//Get an email index
const getAllEmails = () => {
  document.querySelectorAll('.email').forEach((email) => {
    console.log(email.innerText);
  });
};

//View a profile (the event object)
const viewProfileHandler = () => {
  let people = document.querySelectorAll('.person');
  people.forEach(function (person) {
    person.addEventListener('click', viewProfile);
  });
};

const viewProfile = (event) => {
  console.log(event.currentTarget.innerText);
};

//view Emails with e.target
function sendingEmail(e) {
  console.log('sending email to: ', e.target.innerText);
}

// Creating with a form
function addInstructor(firstName, lastName, email) {
  let trEl = document.createElement('tr');
  let tbodyEl = document.querySelector('tbody');
  tbodyEl.appendChild(trEl);

  let firstNameEl = document.createElement('td');
  trEl.appendChild(firstNameEl);
  firstNameEl.innerText = firstName;
  firstNameEl.classList.add('firstName');

  let lastNameEl = document.createElement('td');
  trEl.appendChild(lastNameEl);
  lastNameEl.innerText = lastName;
  lastNameEl.classList.add('lastName');

  let emailEl = document.createElement('td');
  trEl.appendChild(emailEl);
  emailEl.innerText = email;
  emailEl.classList.add('email');
}

//emailEl.addEventListener("click", sendingEmail)

function handleSubmit(e) {
  //e.preventDefault()
  let fn = document.querySelector('#firstNameInput').value;
  let ln = document.querySelector('#lastNameInput').value;
  let em = document.querySelector('#emailInput').value;
  addInstructor(fn, ln, em);
}

//Event Bubbling/Capturing
const bubbleListener = () => {
  const myTable = document.getElementById('instructor-table');
  console.log(myTable);
  myTable.addEventListener('click', (event) => {
    if (event.target.className === 'delete') {
      const tableRow = event.target.parentElement;
      tableRow.innerHTML = '';
    }
  });
};
