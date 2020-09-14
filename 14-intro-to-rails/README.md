# Objectives 

- Create static pages in Rails
- Pass instance variables to views
- Use URL params
- Use ERB tags
- Use Rails routes and route prefixes

# Questions

- When using Rack, how do you use HTML?
- Rack .call (env)
- HTTP verbs (GET, POST, etc)
- How to better decide which ActiveRecord methods to use
- What should we know about the Internet before going in?
    - Server / Client
    - Request / Response
    - HTTP Verbs
    - Basic HTML stuff 

Controllers:

    Application Controller : Controls the logic of our app

Views: 

    HTML presentation of our webpages (ERB - Embedded Ruby) 

Models: 

    Ruby models (Active Records) 

Helpful Rails commands:
`rails new {{app_name}}`
`rails generate controller {{controller name, singular, capitalized}}`

`<%= %>` yields return value of this Ruby code into the HTML

"Fat Models, Skinny Views"
- Most of the logic in the models
- Then the controller
- As little as possible in the views / templates

To see routes and helpers:
`rails routes` or http://localhost:3000/rails/info/routes