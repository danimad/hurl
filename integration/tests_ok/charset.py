from app import app
from flask import Response, make_response


@app.route("/charset/default")
def charset_default():
    return "<p>Hello World!</p>"


@app.route("/charset/uppercase")
def charset_uppercase():
    resp = make_response("<p>Hello World!</p>")
    resp.headers["Content-Type"] = "text/html; charset=UTF-8"
    return resp


@app.route("/charset/api-version")
def charset_api_version():
    return Response(
        """{ "version": "7.0-preview.1"}""",
        mimetype="application/json; charset=UTF-8; api-version=7.0-preview.1",
    )
