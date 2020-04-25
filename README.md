# GitHub Action template

Template repository for GitHub Actions. 

Dockerized as [christophshyper/template-action](https://hub.docker.com/repository/docker/christophshyper/template-action).

**This is just a template repository.**

Features:
* Baseline for `Dockerfile`, `entrypoint.sh`, `Makefile`.
* Templates for Pull Requests and Issues.
* Actions for a default automation.
* Includes Code of Conduct, Contributing and Codeowners.


## Badge swag
[
![GitHub](https://img.shields.io/badge/github-devops--infra%2Ftemplate--action-brightgreen.svg?style=flat-square&logo=github)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/devops-infra/template-action?color=brightgreen&label=Code%20size&style=flat-square&logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/devops-infra/template-action?color=brightgreen&label=Last%20commit&style=flat-square&logo=github)
](https://github.com/devops-infra/template-action "shields.io")
[![Push to master](https://github.com/devops-infra/template-action/workflows/Push%20to%20master/badge.svg)](https://github.com/devops-infra/template-action/actions?query=workflow%3A%22Push+to+master%22)
[![Push to other](https://github.com/devops-infra/template-action/workflows/Push%20to%20other/badge.svg)](https://github.com/devops-infra/template-action/actions?query=workflow%3A%22Push+to+other%22)
<br>
[
![DockerHub](https://img.shields.io/badge/docker-christophshyper%2Ftemplate--action-blue.svg?style=flat-square&logo=docker)
![Dockerfile size](https://img.shields.io/github/size/devops-infra/template-action/Dockerfile?label=Dockerfile%20size&style=flat-square&logo=docker)
![Image size](https://img.shields.io/docker/image-size/christophshyper/template-action/latest?label=Image%20size&style=flat-square&logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/christophshyper/template-action?color=blue&label=Pulls&logo=docker&style=flat-square)
![Docker version](https://img.shields.io/docker/v/christophshyper/template-action?color=blue&label=Version&logo=docker&style=flat-square)
](https://hub.docker.com/r/christophshyper/template-action "shields.io")


## Reference

```yaml
    - name: Run the Action
      uses: devops-infra/template-action@master
      env:
        bazbar: barfoo
      with:
        foobar: bazbar
```

Environment Variable | Required |Description
:--- | :---: | :---
bazbar | No | Environment variable for `env: ...`.

Input Variable | Required | Default |Description
:--- | :---: | :---: | :---
foobar | No | `foobar` | Some input variable for `with: ...`.

Outputs | Description
:--- | :---
foobar | Output from action.


## Examples

Run the Action with defaults.
```yaml
name: Run the Action on each commit
on:
  push
jobs:
  template-action:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@master
      - name: Run the Action
        uses: devops-infra/template-action@master
```

Run the Action with set inputs.
```yaml
name: Run the Action on each commit
on:
  push
jobs:
  template-action:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repoistory
        uses: actions/checkout@master
      - name: Run the Action
        uses: devops-infra/template-action@master
        env:
          bar: foo
        with:
          bar: baz
```
