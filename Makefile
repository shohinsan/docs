run:
	lsof -i :3333 | awk 'NR!=1 {print $$2}' | xargs -r kill -9
	npx mintlify dev --port 3333

reinstall-modules:
	rm -rf node_modules && mintlify install

# Additional Commands
# mintlify openapi-check <openapiFilenameOrUrl>

# Check your OpenAPI file for errors. You can pass in a filename (e.g. ./openapi.yaml) or a URL (e.g. https://petstore3.swagger.io/api/v3/openapi.json).
# mintlify broken-links BETA

# Check for broken internal links in your Mintlify project.
# mintlify rename <from> <to> BETA