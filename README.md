# 🚀 GitHub Action template

**Template repository for GitHub Actions** 


## 📦 Available on
- **Docker Hub:** [devopsinfra/template-action:latest](https://hub.docker.com/repository/docker/devopsinfra/template-action)
- **GitHub Packages:** [ghcr.io/devops-infra/template-action:latest](https://github.com/devops-infra/template-action/pkgs/container/template-action)


## ✨ Features

* Baseline for `Dockerfile`, `entrypoint.sh`, `Makefile`.
* Templates for Pull Requests and Issues.
* Actions for a default automation.
* Includes Code of Conduct, Contributing and Codeowners.


## 📊 Badge Swag
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


## 📖 API Reference

```yaml
    - name: Run the Action
      uses: devops-infra/template-action@v0.1
      env:
        bazbar: barfoo
      with:
        foobar: bazbar
```


### 🔧 Input Parameters

| Environment Variable | Required | Description                          |
|:---------------------|:--------:|:-------------------------------------|
| bazbar               |    No    | Environment variable for `env: ...`. |


| Input Variable | Required | Default  | Description                          |
|:---------------|:--------:|:--------:|:-------------------------------------|
| foobar         |    No    | `foobar` | Some input variable for `with: ...`. |


### 📤 Output Parameters

| Outputs | Description         |
|:--------|:--------------------|
| foobar  | Output from action. |


## 💻 Usage Examples

### 📝 Basic Example

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
        uses: actions/checkout@v5
      - name: Run the Action
        uses: devops-infra/template-action@v0.1
```


### 🔀 Advanced Example

Run the Action with set inputs.

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
        env:
          bar: foo
        with:
          bar: baz
```


## 🏷️ Version Tags: vX, vX.Y, vX.Y.Z

This action supports three tag levels for flexible versioning:

- **`vX`**: Always points to the latest patch of a major version (e.g., `v1` → `v1.2.3`).  
  _Benefit: Get all latest fixes for a major version automatically._

- **`vX.Y`**: Always points to the latest patch of a minor version (e.g., `v1.2` → `v1.2.3`).  
  _Benefit: Stay on a minor version, always up-to-date with bugfixes._

- **`vX.Y.Z`**: Fixed to a specific release (e.g., `v1.2.3`).  
  _Benefit: Full reproducibility—never changes._

**Use the tag depth that matches your stability needs.**


## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. Refer to the [CONTRIBUTING](https://github.com/devops-infra/.github/blob/master/CONTRIBUTING.md) for guidelines.


## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## 💬 Support

If you have any questions or need help, please:
- 📝 Create an [issue](https://github.com/devops-infra/template-action/issues)
- 🌟 Star this repository if you find it useful!
