** Authentication **

Goals:

- Use the `bcrypt` gem to add password to a `User` model
- Add ability to create a new user through the web interface

Authorization Steps
- uncomment bcrypt (and install)
- make a User model (regular Rails model)
    - give it a column of `password_digest:string`
    - include the `has_secure_password` macro on the model
- On login:
    - form for user to include username and password
        - if a user with that username is in the database AND we can authenticate that user with a password, great.  Log them in.
            - user = User.find_by(params[:username])
            - AND
            - user.authenticate(params[:password])
            - Then log in
                - session[:logged_in_user_id] = user.id
        - Otherwise, reload the form with errors