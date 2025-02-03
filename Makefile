# Start

run:
	lsof -i :3000 | awk 'NR!=1 {print $$2}' | xargs -r kill -9
	bun run dev


runx:
	bun run dev --experimental-https

# Node modules

upgrade-modules:
	bunx npm-check-updates -u

reinstall-modules:
	rm -rf node_modules && npm install
