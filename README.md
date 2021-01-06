# r-api
API endpoint to run R model, built using [rplumber.io](https://www.rplumber.io/)

## Quick Start
* Clone the repo:
```
https://github.com/fatematzuhora/r-api.git
```
* Go inside the folder:
```
cd r-api
```
* If you have docker installed on your local machine you just need to go a few steps with Docker to run the project.

* Build a **docker image**:
```
sudo docker build -t r-api .
```
Now you can see the following message on your terminal:

**Successfully tagged r-api:latest**

This means the docker image has built successfully.

* Now run the docker image:
```
sudo docker run -it -p 8000:8000 r-api
```

### Sample API Endpoints
```
curl "http://localhost:8000/echo?msg=Hello-World"
```

```
curl --data "a=12&b=13" "http://localhost:8000/sum"
```

### Expected API Endpoint
```
curl -s -w 'Total: %{time_total}s\n' "http://localhost:8000/up?project=prj-1&data=newt.csv&name=n_${x}&description=batchtest"
```
