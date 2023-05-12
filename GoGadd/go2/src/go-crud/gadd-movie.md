# Movie API

This is a simple API application for managing movies. Using Gorilla Mux library for routing.

## Getting Started

### Prerequisites

Go installed on your machine. Go  official website: https://golang.org/dl/

### Installing / Running

go build

go run main.go

application should now be running at http://localhost:8080

### Usage
Prof Gadd requires you to access the following endpoints:

GET /movies: Returns a list of all movies.
GET /movies/{id}: Returns the movie with the specified ID.
POST /movies: Creates a new movie. The body of the request should be a JSON object representing the movie.
PUT /movies/{id}: Updates the movie with the specified ID. The body of the request should be a JSON object representing the movie.
DELETE /movies/{id}: Deletes the movie with the specified ID.


### possible tools for use:

Curl: Command-line tool that can send HTTP requests.

Postman: Popular GUI tool for testing APIs.

Insomnia: GUI tool similar to Postman.

httpie: command-line alternative to curl.

- E.Gadd Inc.
