## Deliverables

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

### Basic Class Methods and Properties

Task:  Build out the methods and relationships for a `Tourist` model, a `Landmark` model, and a `Trip` model.

- A `Tourist` has a name
- A `Landmark` has a name and a city
- A `Tourist` can visit many `Landmark`s.
- A `Landmark` can be visited by many `Tourist`s
- A `Trip` belongs to a `Tourist`
- A `Trip` belongs to a `Landmark`
- A `Tourist` can take many `Trip`s
- A `Landmark` can have many `Trip`s

#### Build the following methods on the `Tourist` class

- `Tourist.all`
  - should return **all** of the `Tourist` instances
- `Tourist#name`
  - returns the name of the given `Tourist`
- `Tourist.find_by_name(name)`
  - given a string of a name, returns the **first tourist** whose  name matches
- `Tourist#trips`
  - returns an **array** of all the trips taken by the given `Tourist`
- `Tourist#landmarks`
  - returns an **array** of all the landmarks for the given `Tourist`
- `Tourist#visit_landmark(landmark)` should create a new trip for that tourist to the given landmark
- `Tourist#never_visited` should return an array of all the landmarks this tourist has never traveled to

#### Build out the following methods on the `Landmark` class

- `Landmark.all`
  - returns an **array** of all landmarks
- `Landmark.find_by_city(city)`
  - returns an **array** of all landmarks in that city
- `Landmark#trips`
  - returns an **array** of all the trips taken to a given landmark
- `Landmark#tourists`
  - returns an **array** of all the tourists at a given landmark

#### Build out the following methods on the `Trip` class

- `Trip.all`
  - returns an array of all trips
- `Trip#tourist`
  - returns the tourist who has taken that trip
- `Trip#landmark`
  - returns the landmark visited on the trip
