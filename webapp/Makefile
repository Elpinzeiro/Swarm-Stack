STACK = vcc_project

deploy:
	docker stack deploy -c docker-compose.yaml $(STACK)

reg-deploy:
	docker stack deploy -c registry.yaml $(STACK)

rm:
	docker stack rm $(STACK)

ps:
	docker stack ps $(STACK) --no-trunc

build:
	docker build -f Dockerfile-drupal -t 127.0.0.1:5000/drupal . --no-cache
	docker build -f Dockerfile-phpmyadmin -t 127.0.0.1:5000/phpmyadmin . --no-cache
	docker build -f Dockerfile-mariadb -t 127.0.0.1:5000/mariadb . --no-cache
	docker build -f Dockerfile-traefik -t 127.0.0.1:5000/traefik . --no-cache
	docker build -f Dockerfile-elasticsearch -t 127.0.0.1:5000/elasticsearch . --no-cache
	docker build -f Dockerfile-kibana -t 127.0.0.1:5000/kibana . --no-cache
	docker build -f Dockerfile-logstash -t 127.0.0.1:5000/logstash . --no-cache
	docker build -f Dockerfile-waf -t 127.0.0.1:5000/waf . --no-cache
push:
	docker push 127.0.0.1:5000/phpmyadmin
	docker push 127.0.0.1:5000/mariadb
	docker push 127.0.0.1:5000/traefik
	docker push 127.0.0.1:5000/elasticsearch
	docker push 127.0.0.1:5000/kibana
	docker push 127.0.0.1:5000/logstash
	docker push 127.0.0.1:5000/waf

pull:
	docker pull 127.0.0.1:5000/drupal
	docker pull 127.0.0.1:5000/phpmyadmin
	docker pull 127.0.0.1:5000/mariadb
	docker pull 127.0.0.1:5000/traefik
	docker pull 127.0.0.1:5000/elasticsearch
	docker pull 127.0.0.1:5000/kibana
	docker pull 127.0.0.1:5000/logstash
	docker pull 127.0.0.1:5000/waf


logstash:
	sudo sysctl -w vm.max_map_count=262144
