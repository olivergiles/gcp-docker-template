# Template for using gcp on docker
## Instructions
Build the container locally for testing.
```code
make build_container
```
Build the container for pushing to GCP
```code
make build_google_container
```
Push to GCP
```code
make push_google_container
```
Deploy on GCP
```code
make deploy_google_container
```
