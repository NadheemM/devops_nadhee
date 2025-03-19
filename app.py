from flask import Flask  # Corrected import statement (uppercase 'F' in Flask)

app = Flask(__name__)  # Corrected to 'Flask' instead of 'Flash'

@app.route("/")
def hello():
    return "Hello, World! Running inside Docker!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
