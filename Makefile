# Start

run:
	lsof -i :3333 | awk 'NR!=1 {print $$2}' | xargs -r kill -9
	mintlify dev --port 3333

# Node modules

upgrade-modules:
	bunx npm-check-updates -u

reinstall-modules:
	rm -rf node_modules && npm install


# Additional Commands
# mintlify openapi-check <openapiFilenameOrUrl>

# Check your OpenAPI file for errors. You can pass in a filename (e.g. ./openapi.yaml) or a URL (e.g. https://petstore3.swagger.io/api/v3/openapi.json).
# mintlify broken-links BETA

# Check for broken internal links in your Mintlify project.
# mintlify rename <from> <to> BETA