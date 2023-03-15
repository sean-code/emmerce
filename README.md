# README

* Developed by - [John Nganga](https://github.com/sean-code)

## Description
A simple REST API that allows users to create, retrieve, update, and delete items from a
todo list.

&nbsp;<br>

## Technologies Used
* Ruby
* Rails
* Git
## API Set-up Instructions
- Clone this repository to your local environment (machine):
    * - ` git clone < SSH Link or HTTPS link >
- Then run:
    * `bundle install`
    * `rails db:migrate db:seed`

- Then run:
    * `rails s` \
    ...to launch the server locally

- By default it should run on port http://localhost:3000/

&nbsp;<br>


- On a separate terminal open an IRB session\
`rails c`

- Then to simulate authentication, create a new user by instantiating a new User. For example:\

```user2=User.create(username:"kate", password_digest:"1234")```\
* Note: Because we have BCrypt gem, the above password created gets salted and is therefore stored in a encrypted format



### All Todos In The DB
![AllNotes](./assets/imgs/todos.png)

### Notes By ID
![OneNote](./assets/imgs/todosid.png)


&nbsp;<br>
## Endpoints

* CRUD Actions (Supports all the Create, Read, Update, and Delete actions)


> POST

`/todos/create/`
- Response:

```json

- Create a new todo

```json
{
  "title": "string",
  "description":"string"
}
```

- Response:

```json
{
  "success": "User created successfully"
}
```

> GET

`/todos/`

- Get all todos


`/todos/{id}`

- Get todos by id


> PATCH

`todos/{id}`

```json
 {
  "id": 1,
  "title": "Climb Highway",
  "description": "Labore fugit voluptatem. Quo est ea. Consequatur tenetur odit."
}```

-Response:
 {
  "id": 1,
  "title": "Climb Staircase",
  "description": "Laborious ait voluptatem."
}

- Updated
````


> DELETE


`todos/{id}`

- Delete todo item

- Response:

```json
{
  "success": "Todo deleted successfully"
}
```



&nbsp;<br>
&nbsp;<br>
# License

Copyright (c) 2023 John Nganga

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files , to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.