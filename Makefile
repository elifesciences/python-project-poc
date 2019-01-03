help:
	@echo "start  - builds and starts services in dev mode"
	@echo "stop   - stop all running containers belonging to the project"
	@echo "test   - runs tests in debug mode (able to use pdb breakpoints)"
	@echo "debug  - runs the application in debug mode (able to use pdb breakpoints)"
	@echo "clean  - delete project containers, images and volumes"

start:
	docker-compose -f docker-compose.dev.yml up

stop:
	docker-compose -f docker-compose.dev.yml down -v

tests:
	docker-compose -f docker-compose.dev.yml run --rm --service-ports web \
	pytest -s --pdbcls=IPython.terminal.debugger:Pdb --log-cli-level DEBUG && \
	pylint run.py test_project.py --rcfile=.pylintrc && \
	echo \"Starting flake8 checks\" && \
	flake8 --config=.flake8 && \
	echo \"All checks completed\"


debug:
	docker-compose -f docker-compose.dev.yml run --rm --service-ports web

clean: stop
	-docker rm `docker-compose -f docker-compose.dev.yml ps -q`
	-docker rmi `docker-compose -f docker-compose.dev.yml images -q`
