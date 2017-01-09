BRANCH = $(shell git rev-parse --abbrev-ref HEAD)


.PHONY: redoc

lint:
	yamllint *.yaml

validate:
	swagger validate spec.yaml

html:
	docker run --rm -it \
		-v ${PWD}/html:/swagger-api/out \
		-v ${PWD}:/swagger-api/yaml \
		jimschubert/swagger-codegen-cli generate \
		--input-spec /swagger-api/yaml/spec.yaml \
		--lang html \
		--output /swagger-api/out

dynamic-html:
	docker run --rm -it \
		-v ${PWD}/dynamic-html:/swagger-api/out \
		-v ${PWD}:/swagger-api/yaml \
		jimschubert/swagger-codegen-cli generate \
		--input-spec /swagger-api/yaml/spec.yaml \
		--lang dynamic-html \
		--output /swagger-api/out

# Renders documentation directly from the YAML file
redoc:
	@echo "Open http://localhost:8000/redoc/ in your browser"
	@echo ""
	open http://localhost:8000/redoc/ || xdg-open http://localhost:8000/redoc/
	python -m SimpleHTTPServer 8000

validate:
	@echo "Validating the latest online spec at 'https://github.com/giantswarm/api-spec/blob/${BRANCH}/spec.yaml'"
	@curl -s http://online.swagger.io/validator/debug?url=https://raw.githubusercontent.com/giantswarm/api-spec/${BRANCH}/spec.yaml
	@echo ""

clean:
	rm -rf html dynamic-html
