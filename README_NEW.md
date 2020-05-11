

```
docker build -f docker/simpleamt.Dockerfile --tag=simpleamt:0.0.1 .

docker run -it --rm -p 4002:8080 -v $(pwd):/mnt simpleamt:0.0.1
```
