PROJECT_ID=learning-344114
DOCKER_IMAGE_NAME=gcp-test
REGION=europe-west1
MEMORY=8Gi
CPUS=2

build_container:
	@docker build -t ${DOCKER_IMAGE_NAME} .

build_google_container:
	@docker build -t eu.gcr.io/${PROJECT_ID}/${DOCKER_IMAGE_NAME} .

push_google_container:
	@docker push eu.gcr.io/${PROJECT_ID}/${DOCKER_IMAGE_NAME}

deploy_google_container:
	@gcloud run deploy --image eu.gcr.io/${PROJECT_ID}/${DOCKER_IMAGE_NAME} --platform managed --region europe-west1 --memory ${MEMORY} --cpu ${CPUS}

stop_google_container:
	@gcloud run services delete ${DOCKER_IMAGE_NAME} --platform managed --region ${REGION}