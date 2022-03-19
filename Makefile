PROJECT_ID=###
DOCKER_IMAGE_NAME=###
REGION=###
MEMORY=###
CPUS=###

build_container:
	@docker build -t ${DOCKER_IMAGE_NAME} .

run_container:
	@docker run -e PORT=8000 -p 8000:8000 ${IMAGE_NAME}

build_google_container:
	@docker build -t eu.gcr.io/${PROJECT_ID}/${DOCKER_IMAGE_NAME} .

push_google_container:
	@docker push eu.gcr.io/${PROJECT_ID}/${DOCKER_IMAGE_NAME}

deploy_google_container:
	@gcloud run deploy --image eu.gcr.io/${PROJECT_ID}/${DOCKER_IMAGE_NAME} --platform managed --region europe-west1 --memory ${MEMORY} --cpu ${CPUS}

stop_google_container:
	@gcloud run services delete ${DOCKER_IMAGE_NAME} --platform managed --region ${REGION}