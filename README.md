# Template for using gcp on docker
## Setup
- Update the makefile

- add your required endpoints to api/app.py

- add the required packages to requirements.txt for your endpoint
## Instructions
Build the container locally for testing.
```bash
make build_container
```
Build the container for pushing to GCP
```bash
make build_google_container
```
Push to GCP
```bash
make push_google_container
```
Deploy on GCP
```bash
make deploy_google_container
```
Delete service on GCP
```bash
make stop_google_container
```
