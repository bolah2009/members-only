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

No validations is set for both the User and Post model
User model have the has_

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

> user = User.create(:name => "Chief", :email => "chief@email.com", :password => "password", :password_confirmation => "password")
> user.authenticate("wrongpassword")
=> false
> user.authenticate("password")
=> #<User id: 1, name: "Chief", email: "chief@email.com", password_digest: "$2a$10$9Lx...", created_at: "2019...", updated_at: "2019...">

```

## Screenshots

### Show all posts (Without Author)

`http://localhost:3000/` or `http://localhost:3000/posts`

![Show all posts (Without Author)](https://res.cloudinary.com/bolaah/image/upload/v1562715070/github-microverse-project/members-only/allposts-logged-out.png)


### Show all posts (With Author, logged in users)

`http://localhost:3000/` or `http://localhost:3000/posts`
![Show all posts (With Author, logged in users)](https://res.cloudinary.com/bolaah/image/upload/v1562715071/github-microverse-project/members-only/allposts-logged-in.png)


### Login page

`http://localhost:3000/login`
![Login Page](https://res.cloudinary.com/bolaah/image/upload/v1562715069/github-microverse-project/members-only/allpost-signup-page.png)


### Create new post

`http://localhost:3000/posts/new`
![Create new post](https://res.cloudinary.com/bolaah/image/upload/v1562717233/github-microverse-project/members-only/all-post-new.png)



## Ruby version

    ruby 2.6.3p62

## Rails version

    Rails 5.2.3

#### Authors

- [@Torres-ssf](https://github.com/Torres-ssf)
- [@bolah2009](https://github.com/bolah2009/)
