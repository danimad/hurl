GET http://localhost:8000/charset/default
HTTP 200
Content-Type: text/html; charset=utf-8
`<p>Hello World!</p>`

GET http://localhost:8000/charset/uppercase
HTTP 200
Content-Type: text/html; charset=UTF-8
[Asserts]
body == "<p>Hello World!</p>"

GET http://localhost:8000/charset/api-version
HTTP 200
Content-Type: application/json; charset=UTF-8; api-version=7.0-preview.1
[Asserts]
jsonpath "$.version" == "7.0-preview.1"
