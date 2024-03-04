docker build -t t12-jupyter .
docker run -it --rm --name=jupyter -p 8888:8888 -v ./data:/data -v ./notebooks:/notebooks -v ./models:/models -w / t12-jupyter
