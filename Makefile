IMAGE_NAME=deep-research

build:
	docker build -t $(IMAGE_NAME) .

start:
	docker run -p 8000:8000 $(IMAGE_NAME)

stop:
	docker stop $(IMAGE_NAME)

remove:
	docker rm $(IMAGE_NAME)

logs:
	docker logs $(IMAGE_NAME)

