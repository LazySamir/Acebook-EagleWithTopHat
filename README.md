# Acebook - API

[![Waffle.io - Columns and their card count](https://badge.waffle.io/LazySamir/Acebook-EagleWithTopHat.svg?columns=all)](https://waffle.io/LazySamir/Acebook-EagleWithTopHat)

[![Build Status](https://travis-ci.org/LazySamir/Acebook-EagleWithTopHat.svg?branch=master)](https://travis-ci.org/LazySamir/Acebook-EagleWithTopHat)

##### Acebook Frontend Repository
[https://github.com/LondonJim/acebook-frontend-eaglewithtophat ]()

## The Mission
Create a clone of a well-known social media platform using Rails.

## Created By
- [Alastair Edmonds](https://github.com/Alastair2D)
- [Esam Al-Dabagh](https://github.com/EsamAl-Dabagh)
- [James Sutherland](https://github.com/LondonJim)
- [Samir Soormally](https://github.com/LazySamir)

## How do I run it?

##### Download the app
```
$ git clone git@github.com:LazySamir/acebook-eaglewithtophat.git
$ cd acebook-eaglewithtophat
$ bundle
```

##### Set up database
```
$ rake db:drop db:create db:migrate
```

##### Start the server
```
$ rails server
```
-

### How do I use it?
There are currently two options to use this API, remotely and locally.

#### Local
- Run `rails server`
- Use `LOCALHOST:3000` within your client

#### Remote
- Use the url: `https://acebook-eaglewithtophat.herokuapp.com`


#### How to make calls

##### Sign up
Make a `POST` request to `/users`

Accepts the following format:

```
{ 
 "user" : {
        "full_name": "Test Name",
        "email": "abcde@cd.com",
        "password": "123456",
        "password_confirmation": "123456"
    }
 }
```

##### View Posts
Make a `GET` request to `/posts`


##### Create a Post
Make a `POST` request to `/posts`

Accepts the following format:

```
{ 
 "post" : {
        "user_id": 1,
        "message": "test message",
    }
 }
```
-


## User Stories
```
As a user
So I can created an account
I want to be able to signup
```

```
As a user
So I can access my account
I want to be able to login
```

```
As a user
So I can express myself
I want to be able to create posts
```

```
As a user
So I can express agreement with someone else's post
I want to be able to like posts
```

```
As a user
So I can see when someone created a post
Posts will show when they are created
```

```
As a user
So I can see latest posts
Posts will display with newest first
```

```
As a user
So I can spare my blushes
I can delete my own posts
```

```
As a user
So I can fix typos
I can update my post upto 10 mins after it's created.
```

```
As a user
So I can be sure likes haven't be gamed
Users can only like a post once.
```

```
As a user
So I can create a conversation
I want to be able to comment on posts
```

## Database Tables

```
+--------------------------------------------+
|                  Comments                  |
+--------------------------------------------+
| id | user_id | post_id | body | created_on |
+----+---------+---------+------+------------+

+-----------------------------------+
|                    Users          |
+-----------------------------------+
| id | full_name | email | password |
+----+-----------+-------+----------+

+-----------------------------------------------+
|                     Posts                     |
+-----------------------------------------------+
| id | user_id | body | created_on | updated_on |
+----+---------+------+------------+------------+

+------------------------+
|       Liked_posts      |
+------------------------+
| id | post_id | user_id |
+----+---------+---------+
```
