//**********Object Literal ****************/

let coolGuy = {
    firstName: "Adam",
    lastName: "Johnson"
}

let coolGuy2 = {
    firstName: "Nick",
    lastName: "Baccete"
}

//********** Factory Pattern ****************************/
function coolPersonFactory(firstName, lastName) {
    return {
        firstName: firstName,
        lastName: lastName
    }
}

let mark = coolPersonFactory("Mark", "IsSuperCool")
let melinda = coolPersonFactory("Melinda", "Diaz")

//********** ES5 Constructor ****************************/
function CoolPerson(firstName, lastName) {
    //this refers to a new empty object
    this.firstName = firstName
    this.lastName = lastName
    //adding a function
    // this.greet = function() {
    //     console.log(`Hi my name is ${this.firstName} ${this.lastName}`)
    // }
}

// let adam = { }.CoolPerson()
let adam = new CoolPerson("Adam", "Adolfo")
let milo = new CoolPerson("Milo", "Kunis")

// milo.greet === adam.greet ?

//Adding to an objects prototype 
CoolPerson.prototype.greet = function() {
    console.log(`Hi my name is ${this.firstName} ${this.lastName}`)
}

//The Prototype Property
console.log(CoolPerson.prototype)

adam.__proto__ === CoolPerson.prototype

adam.__proto__.__proto__ === Object.prototype

var array = new Array()

//********** ES6 Class Syntax ****************************/
class Teacher{

    // In order to pass in data to our instances,
    // we must use a constructor function
    constructor(firstName, lastName){
        // debugger
        this.firstName = firstName
        this.lastName = lastName
    }

    //instance methods
    getFullName() {
        return `${this.firstName} ${this.lastName}`
    }

    greet(){
        console.log(`Hello, ${this.getFullName()}`)
    }

    //Class method
    static lecture() {
        console.log('Lecture time')
    }
}

let paul = new Teacher("Paul", "Nicholson")
let shannon = new Teacher("Shannon", "Nabors")

//********** ES6 Class Inheritance ****************************/
class Person {
    constructor(firstName, lastName) {
        this.firstName = firstName
        this.lastName = lastName
    }

    getFullName() {
        return `${this.firstName} ${this.lastName}`
    }

    greet(){
        return `Hello, ${this.getFullName()}`
    }
}

class Teacher extends Person{
    constructor(firstName, lastName, specialty){
        // In order to inherit the attributes of the
        // parent class we must call "super" and pass
        // this values in there
        super(firstName, lastName)
        this.specialty = specialty
    }

    teachMe(){
        console.log(`${this.greet()} teaching ${this.specialty}`)
    }
}

let adam = new Teacher('Adam', "Js", "python")