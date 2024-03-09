build: 
	npx @marp-team/marp-cli@latest presentation.md -o ./public/index.html
	
serve: 
	npx @marp-team/marp-cli@latest -s ./
	
docker: build
	docker build -t booster2024 .

docker-run: docker
	docker run -p 8043:8043 booster2024