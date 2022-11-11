# ROYAL_CLINIC-FRONTEND 

## Project Description
is an application we created as a group for animal hospitals in which hospital administrators can keep track of the patients and their appointments.

It gives the users various resources for example one can access the following:-

1.Search for patient

2.Access patient list

3.Add new patient

4.Make new appointments



## Contributing
Contributions are always welcome!

See (Contributing.md) for ways to get started.

Please adhere to this project's code of conduct.

## 🚀 About us
Hi, There 👋

We are a group of junior developers...

here are our github links

 -https://github.com/Sugut

 -https://github.com/ngisah

 -https://github.com/SERON19

 -https://github.com/ElvisWG

## Installation
Here's a brief intro about what a developer must do in order to start developing the project further:

git clone (https://github.com/Sugut/royal-vet-clinic-backend)

-Fork and Clone repository

-bundle install

-run rake db:migrate

-run rake db:seed

-run rake server


## License
See the License in (LICENSE.md) to get started


## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have at least three models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. You should be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. You should NOT be relying on a GET request to update state. 
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary. 
- Routes in your application (both client side and back end) should follow RESTful
  conventions.
- Use your back end optimally. Pass JSON for related associations to the front 
  end from the back end. You should use active record methods in your controller to grab
  the needed data from your database and provide as JSON to the front end. You
  should NOT be relying on filtering front end state or a separate fetch request to
  retrieve related data.