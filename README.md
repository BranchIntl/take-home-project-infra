# Take-home project for Infrastructure team
A basic Docker image for use in Branch's Infrastructure take-home project.

## Usage
### Run locally
```shell
$ python3 -m venv venv

$ ./venv/bin/pip install -qr requirements.txt

$ FLASK_ENV=development ./venv/bin/python3 app/server.py
```

### Run in Docker
Build the container image.
```shell
docker build -t branchintl/hello-branch-world . 
```
Run the container.
```shell
docker run --rm -it branchintl/hello-branch-world
```

## License
Licensed under [MIT](LICENSE).