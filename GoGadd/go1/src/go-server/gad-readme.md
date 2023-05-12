# Go Web Server

This is a simple web server written in Go. It serves static files from the `./static` directory and has two additional endpoints: `/form` and `/hello`.

## Endpoints

- `/`: Serves static files from the `./static` directory. (endpoint GOTdam busted)
- `/form`: Handles form submissions. Expects `name` and `address` fields in the form data. Egadd e'll let ya know.
- `/hello`: A simple endpoint that returns "HI!" if accessed with a GET request.

## Running the Server

Ensure that you have Go installed on your machine. You can download it from the [official Go website](https://golavng.org/dl/).

go build -- builds luigi module

go run main.go
Startin SERVoir at port 8080

access @
http://localhost:8080/

http://localhost:8080/hello

http://localhost:8080/form
