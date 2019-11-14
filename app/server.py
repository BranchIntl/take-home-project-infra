from flask import Flask

PORT = 8000

app = Flask(__name__)

@app.route("/")
def root():
    return "Hello BranchIntl World!\n".encode("utf-8")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)