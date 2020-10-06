function addInstructor(firstName, lastName, email) {
  console.log('first');
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

function addInstructor(firstName, lastName, email) {
  console.log('second');
  let tbody = document.querySelector('tbody');
  tbody.innerHTML += `
    <tr>
        <td>${firstName}</td>
        <td>${lastName}</td>
        <td>${email}</td>
    </tr>
  `;
}
