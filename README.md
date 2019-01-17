elife Python project template
=============================
The purpose of this project is to create a template for other python projects.

The idea is to create a list of guidelines that all projects try should follow. 
This should help to standardise projects and make them easy to use and contribute to.

Ideally repositories should:
 - have a basic description about its purpose/function
 - be easy to run
 - be easy to test
 - be easy to debug


Dependencies
------------

* [Docker](https://www.docker.com/)

Getting started
---------------
This project provides a `Makefile` with short commands to run common tasks.

```
make help
```
Run this for a full list of commands.

```
make start
```
This command will build and/or run the site locally configured for development purposes.

```
make stop
```
Use this command to stop containers and clean up any anonymous volumes.

Running the tests
-----------------
```
make tests
```
Use this command to run unit tests.

```
make checks
```
Use this command to run static checks such as: mypy, flake8, pylint.

```
make all-tests
```
Combines the two commands above by running all checks followed by unit tests

Adding and removing dependencies
--------------------------------
The following commands update files that keep track of project dependencies.
```
make build
```
Run this if you would like to persist changes to dependencies to your docker container.

```
make dependency package=<package name>
make dev-dependency package=<package name>

# examples:
make dependency package=flask
make dependency package=flask==1.0.2
make dev-dependency package=pytest
```
Run either of these commands to add a python package as a project dependency or 
development dependency alike. You can specify just the package name to get the 
latest version or specify a specific version number.

```
make remove-dependency package=<package name>
make remove-dev-dependency package=<package name>
```
Run either of these commands to remove dependencies accordingly.

Other useful commands
---------------------
```
make run
```
Use this command to only run the python service.
It is possible to use pdb breakpoints with this configuration.

```
make shell
```
Use this to run the python service and enter a bash prompt.

```
make dependency-tree
# or
make d-tree
```
Use this to display a dependency tree

```
make fix-imports
```
When checks are run warnings are displayed because imports do not follow the
project conventions as specified in `setup.cfg` under `[isort]`.
Use this command to automatically fix imports for all project python files.