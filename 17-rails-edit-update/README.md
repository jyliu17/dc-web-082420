# Objectives

- Use both form_for and form_tag to generate forms
- Build a form to send get params, and interpret them in the controller
- Use strong params to check for allowed form fields
- Create a new resource using form_for

# Questions
- New/Create why does it take two separate routes
- URL helpers - don't cry
- how do we set up our post and patch routes?
- difference between put and patch
- redirect with an instance variable?
- 


Forms:
method:  HTTP VERB (GET, POST, etc)
action:  URL responsible for handling that code

Form helpers:
`form_tag` generic form
`form_for` when the form is for creating or updating an ActiveRecord object (i.e., the fields on the form correspond to columns in our database)