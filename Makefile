hugo-server: ## run the hugo server locally
	hugo server --logLevel debug --disableFastRender -p 1313
help:
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-70s\033[0m %s\n", $$1, $$2}'

.PHONY: hugo-server
.DEFAULT_GOAL := help
