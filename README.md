# Take-home project for Infrastructure team
A basic Docker image for use in Branch's Infrastructure take-home project.

## Usage
### Run locally
Build and run via python3
```shell
$ python3 -m venv venv

$ ./venv/bin/pip install -qr requirements.txt

$ FLASK_ENV=development ./venv/bin/python3 app/server.py
 * Serving Flask app "server" (lazy loading)
 * Environment: development
 * Debug mode: on
 * Running on http://0.0.0.0:8000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
```
Test application is running
```shell
$ curl localhost:8000
Hello BranchIntl World!
```

### Run in Docker
Build the container image
```shell
$ docker build -t branchintl/hello-branch-world . 
```
Run the container
```shell
$ docker run --rm -it -p 8000:8000 branchintl/hello-branch-world
```
Test application is running in the container
```shell
$ curl localhost:8000
Hello BranchIntl World!
```


## License
Licensed under [MIT](LICENSE).