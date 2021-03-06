# docker-chef
Developer environment for using chef, notably being able to run `kitchen converge` on Windows without pulling your hair out. Currently only works when using `docker` driver in your `kitchen.yml`s.

## Requirements
- Docker
- docker-compose

## Installation
- Clone this repository
- Clone any chef repositories you want to work with in inside the `projects` directory
    - Add `use_internal_docker_network: true` under the `driver` section in your `kitchen.yml` for those projects
- Copy any SSH Keys you want accessible to your chef environment in to the `.ssh` directory

## Usage
- Run `docker-compose run chefdk bash` from the root of this repository
- Inside the container, navigate to your desired project and run `kitchen converge`
