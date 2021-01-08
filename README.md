# r-api
API endpoint to run R model, built using [rplumber.io](https://www.rplumber.io/)

## Quick Start (Option #1)
* Clone the repo:
```
https://github.com/fatematzuhora/r-api.git
```
* Go inside the folder:
```
cd r-api
```
* Build a **docker image**:
```
sudo docker build -t fatematzuhora/r-api .
```
Now you can see the following message on your terminal:

**Successfully tagged fatematzuhora/r-api:latest**

This means the docker image has built successfully.

* Run the docker image:
```
sudo docker run -it -p 8000:8000 fatematzuhora/r-api
```

## Pull from [Docker Hub](https://hub.docker.com/r/fatematzuhora/r-api) (Option #2)

* Simply just pull the docker image from the docker hub:
```
sudo docker pull fatematzuhora/r-api
```
* Run the docker image:
```
sudo docker run -it -p 8000:8000 fatematzuhora/r-api
```

## API Endpoints

#### Sample Endpoints:
```
curl "http://localhost:8000/echo?msg=Hello-World"
```

```
curl --data "a=12&b=13" "http://localhost:8000/sum"
```

#### Expected Endpoint:
```
curl -s -w 'Total: %{time_total}s\n' "http://localhost:8000/up?project=prj-1&data=newt.csv&name=n_${x}&description=batchtest"
```
