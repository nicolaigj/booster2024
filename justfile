build: 
	npx @marp-team/marp-cli@latest presentation.md -o ./public/index.html
	cp -r ./assets/ ./public/
	
serve: 
	npx @marp-team/marp-cli@latest -s ./
	
docker: build
	docker build -t booster2024 .

run-docker: docker
	docker run -p 8043:8043 booster2024
	
deploy: build
	fly deploy