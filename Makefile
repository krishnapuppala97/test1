## Before we start test that we have the mandatory executables available
##EXECUTABLES = git terraform
##K := $(foreach exec,$(EXECUTABLES),\
##$(if $(shell which $(exec)),some string,$(error "No $(exec) in PATH, consider apt-get install $(exec)")))
DEV_BUCKET="test-task-terraform-state"
DEV_STATE_LOCK_TABLE = "test-terraform-state-lock"
DEV_REGION = "us-east-1"
DEV_STATE_FILE="terraform.tfstate"

.PHONY: plan

init:
	@echo "initialize remote state file"
	cd environments/$(LAYER) && \
	rm -rf .terraform/modules/ && \
	terraform init -backend-config="bucket=$(DEV_BUCKET)" -backend-config="key=$(DEV_STATE_FILE)" -backend-config="dynamodb_table=$(DEV_STATE_LOCK_TABLE)" -backend-config="region=$(DEV_REGION)" 


validate: init
	@echo "running terraform validate"
	cd environments/$(LAYER) && \
	terraform validate -no-color

plan: validate
	@echo "running terraform plan"
	cd environments/$(LAYER) && \
	terraform plan -no-color

apply: plan
	@echo "running terraform apply"
	cd environments/$(LAYER) && \
	terraform apply -auto-approve -no-color

plan-destroy: validate
	@echo "running terraform plan -destroy"
	cd environments/$(LAYER) && \
	terraform plan -destroy -no-color

destroy: init
	@echo "running terraform destroy"
	cd environments/$(LAYER) && \
	terraform destroy -force -no-color