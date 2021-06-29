# GitHub Action template

**Template repository for GitHub Actions** 

Dockerized as [devopsinfra/template-action](https://hub.docker.com/repository/docker/devopsinfra/template-action).

**This is just a template repository.**

Features:
* Baseline for `Dockerfile`, `entrypoint.sh`, `Makefile`.
* Templates for Pull Requests and Issues.
* Actions for a default automation.
* Includes Code of Conduct, Contributing and Codeowners.


# Badge swag
[![Master branch](https://github.com/devops-infra/template-action/workflows/Master%20branch/badge.svg)](https://github.com/devops-infra/template-action/actions?query=workflow%3A%22Master+branch%22)
[![Other branches](https://github.com/devops-infra/template-action/workflows/Other%20branches/badge.svg)](https://github.com/devops-infra/template-action/actions?query=workflow%3A%22Other+branches%22)
<br>
[
![GitHub repo](https://img.shields.io/badge/GitHub-devops--infra%2Ftemplate--action-blueviolet.svg?style=plastic&logo=github)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/devops-infra/template-action?color=blueviolet&label=Code%20size&style=plastic&logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/devops-infra/template-action?color=blueviolet&logo=github&style=plastic&label=Last%20commit)
![GitHub license](https://img.shields.io/github/license/devops-infra/template-action?color=blueviolet&logo=github&style=plastic&label=License)
](https://github.com/devops-infra/template-action "shields.io")
<br>
[
![DockerHub](https://img.shields.io/badge/DockerHub-devopsinfra%2Ftemplate--action-blue.svg?style=plastic&logo=docker)
![Docker version](https://img.shields.io/docker/v/devopsinfra/template-action?color=blue&label=Version&logo=docker&style=plastic)
![Image size](https://img.shields.io/docker/image-size/devopsinfra/template-action/latest?label=Image%20size&style=plastic&logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/devopsinfra/template-action?color=blue&label=Pulls&logo=docker&style=plastic)
](https://hub.docker.com/r/devopsinfra/template-action "shields.io")


## Reference

```yaml
    - name: Run the Action
      uses: devops-infra/template-action@v0.1
      env:
        bazbar: barfoo
      with:
        foobar: bazbar
```


Environment Variable | Required | Description
:--- | :---: | :---
bazbar | No | Environment variable for `env: ...`.


Input Variable | Required | Default | Description
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
        uses: actions/checkout@v2
      - name: Run the Action
        uses: devops-infra/template-action@v0.1
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
        uses: actions/checkout@v2
      - name: Run the Action
        uses: devops-infra/template-action@v0.1
        env:
          bar: foo
        with:
          bar: baz
```
