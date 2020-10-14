
//Object destructuring  *********************************
let personObject = {
    firstName: "Adam",
    lastName: "Wayne",
    email: 'mail@mail.com',
    userName: 'adamwjo',
    phoneNum: '555-555-5555',
    address: `123 B Bakers St.`,
    favorite_actors: ['Alicia Vikander', 'Michael Fassbender', 'Jude Law']
}

let { firstName, userName } = personObject

console.log(firstName, userName)

//Key-Value Syntax **************************************
const pizzaMaker = (cheese, sauce) => {

    // let newPizza = {
    //     cheese: cheese,
    //     sauce: sauce
    // }

    let newPizza = {cheese, sauce} 

    console.log(newPizza)
}

// pizzaMaker("fromage", "tomatt")

// Spread Operator ****************************************
let array = [1, 2, 3]
let array2 = [4, 5, 6]
let array3 = [...array, ...array2]

function updateName(personObject, firstName, lastName) {
    // let newObj = {...personObject, firstName: firstName, lastName: lastName}
    let newObj = {...personObject, firstName, lastName}
    console.log(newObj)
}

// updateName(personObject, "Bruce", "Wayne")

let argumentArray = [personObject, "Bruce", "Wayne"]

updateName(...argumentArray)

//Implicit vs Explicit return ************************************
const implicitAdd = (numA, numB) => console.log(numA + numB)
implicitAdd(3, 3)
const implicitSquare = num => num * num

console.log(implicitSquare(4))

const explicitReturn = (numA, numB) => {
    let array = []
    array.push(numA, numB)
    return array
}

console.log(explicitReturn(4, 5))

//Implicit vs Explicit return ************************************
const implicitAdd = (numA, numB) => console.log(numA + numB)
implicitAdd(3, 3)
const implicitSquare = num => num * num

console.log(implicitSquare(4))

const explicitReturn = (numA, numB) => {
    let array = []
    array.push(numA, numB)
    return array
}

console.log(explicitReturn(4, 5))


//Iterators ********************************************************
//.find()
let coolArray = ['Keanu Reeves', 14, 'Spiderman', 'Megan Rapinoe', 'Storm', 10, 3]

console.log(coolArray.find(item => typeof item != "number"))
//.filter()
console.log(coolArray.filter(item => typeof item != "number"))
//.forEach(value, index)

// for in (objects)with arrays  for(let index in animals)
// for of (arrays) you can use them on strings too

