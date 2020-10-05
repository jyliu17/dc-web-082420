// Once connected, any JS you wrtie here will be rendered to the DOM
console.log("We're In");

// Console logging
let a = 2;
let b = 4;
let c = 6;
console.log(a, b, c);

// Differences between Ruby and JS?

// Returning functions
function sayHi() {
  'hello';
}
sayHi();

// Data Types
1 + 1;
'1' + '1';
1 + '1';
1 + 1 + '1';
1 * 1;

// Everything is an object
let arr = [1, 2, 3];
arr.name = 'Adam';
console.log(arr.length, arr.name);

let crazyObj = {
  key1: [
    4,
    2,
    function () {
      return function () {
        return 8;
      };
    },
  ],
};

// Datatypes - Numbers
NaN;
Infinity;
Math.PI;
1 + 2;
0.1 + 0.2;

// Datatypes - bool

let x = 0;
if (x) {
  console.log('This is truthy');
} else {
  console.log('This is falsy');
}

//Pass by value
function addTwo(num) {
  let val = num;
  val = val + 2;
  return val;
}

let a = 5;
let b = addTwo(a);
console.log('a:', a);
console.log('b:', b);

//Pass by reference
function addTwo(num) {
  let val = num;
  val.num = val.num + 2;
  return val;
}

let a = { num: 5 };
let b = addTwo(a);
console.log('a:', a);
console.log('b:', b);

a === b;
