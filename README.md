# Project: Members-only (Ruby on Rails)

This is the fifth project of the Main Rails curriculum at [Microverse](https://www.microverse.org/) - @microverseinc

- The objective is to build and implement an authentication system so users can only access areas of a site they are authorized to.
- The main focus will be on data and function as there will be less focus on the styling

#### [Assignment link](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication#project-2-members-only)

### Members-only (Ruby on Rails)

#### More about the project

##### Relationship

```
- Post `belongs_to` User
- User `has_many` posts
```

##### Validations

```
User
- `name` can not be blank and can not exceed 100 characters
`email` can not be blank and can not exceed 30 characters

Post
- `title` can not be blank, can not exceed 100 characters and must be unique
- `body` can not be blank and can not exceed 200 characters

## Usage Instructions

### Clone the project

- Clone the repo and run the app.

```bash
$ git clone git@github.com:bolah2009/members-only.git
$ cd members-only

```

### Run bundle install and migrate as follows:

```bash
bundle install

rails db:migrate
rails db:seed
```

### Run the rails console

```bash
rails console

```

## Creating a sample user and testing the #authenticate method

``` bash

> user = User.create(:name => "Cheif", :email => "cheif@email.com", :password => "password", :password_confirmation => "password")
> user.authenticate("wrongpassword")
=> false
> user.authenticate("password")
=> #<User id: 1, name: "foobar", email: "foo@bar.com", password_digest: "$2a$10$9Lx...", created_at: "2016...", updated_at: "2016...">

```

## Sign in form





### Show current user

`http://localhost:3000/users/1`
![Show current user](https://res.cloudinary.com/bolaah/image/upload/v1560484514/github-microverse-project/rails_form/form_display.png)

### Show all users

`http://localhost:3000/users`
![Show all users](https://res.cloudinary.com/bolaah/image/upload/v1560484514/github-microverse-project/rails_form/form_show_all.png)



## Ruby version

    ruby 2.6.3p62

## Rails version

    Rails 5.2.3

#### Authors

- [@Torres-ssf](https://github.com/Torres-ssf)
- [@bolah2009](https://github.com/bolah2009/)
