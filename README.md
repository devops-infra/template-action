# 🚀 GitHub Action template
**Template repository for GitHub Actions**


## 📦 Available on
- **Docker Hub:** [devopsinfra/template-action:latest](https://hub.docker.com/repository/docker/devopsinfra/template-action)
- **GitHub Packages:** [ghcr.io/devops-infra/template-action:latest](https://github.com/devops-infra/template-action/pkgs/container/template-action)


## ✨ Features
* Baseline for GitHub Actions for [DevOps-Infra](https://shyper.pro/portfolio/projects/actions/) projects


## 🔗 Related Actions
Check also other actions from [DevOps-Infra](https://shyper.pro/portfolio/projects/actions/)


## 📊 Badges
[
![GitHub repo](https://img.shields.io/badge/GitHub-devops--infra%2Ftemplate--action-blueviolet.svg?style=plastic&logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/devops-infra/template-action?color=blueviolet&logo=github&style=plastic&label=Last%20commit)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/devops-infra/template-action?color=blueviolet&label=Code%20size&style=plastic&logo=github)
![GitHub license](https://img.shields.io/github/license/devops-infra/template-action?color=blueviolet&logo=github&style=plastic&label=License)
](https://github.com/devops-infra/template-action "shields.io")
<br>
[
![DockerHub](https://img.shields.io/badge/DockerHub-devopsinfra%2Ftemplate--action-blue.svg?style=plastic&logo=docker)
![Docker version](https://img.shields.io/docker/v/devopsinfra/template-action?color=blue&label=Version&logo=docker&style=plastic&sort=semver)
![Image size](https://img.shields.io/docker/image-size/devopsinfra/template-action/latest?label=Image%20size&style=plastic&logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/devopsinfra/template-action?color=blue&label=Pulls&logo=docker&style=plastic)
](https://hub.docker.com/r/devopsinfra/template-action "shields.io")


## 🏷️ Version Tags: vX, vX.Y, vX.Y.Z
This action supports three tag levels for flexible versioning:
- `vX`: latest patch of the major version (e.g., `v1`).
- `vX.Y`: latest patch of the minor version (e.g., `v1.2`).
- `vX.Y.Z`: fixed to a specific release (e.g., `v1.2.3`).


## 📖 API Reference
```yaml
    - name: Run the Action
      uses: devops-infra/template-action@v1.0.2
      env:
        barfoo: foobaz
      with:
        foobar: bazbar
        debug: false
        # github_token: ${{ secrets.GITHUB_TOKEN }}
```

### 🔨 Environment Variables
| Variable | Description                  |
|:---------|:-----------------------------|
| `barfoo` | Sample environment variable. |


### 🔧 Input Parameters
| Input          | Required | Default  | Description                         |
|:---------------|:--------:|:--------:|:------------------------------------|
| `foobar`       |    No    | `foobar` | Sample input used by the action.    |
| `debug`        |    No    | `false`  | Enable verbose debug logging.       |
| `github_token` |    No    |          | For authenticated GitHub requests.  |


### 📤 Outputs Parameters
| Output   | Description                          |
|:---------|:-------------------------------------|
| `foobar` | Echo of provided `foobar` input.     |
| `barfoo` | Duplicate of `foobar` for demo use.  |


## 💻 Usage Examples

### 📝 Basic
Run the Action with defaults.

```yaml
name: Run the Action on each commit
on: [push]
jobs:
  template-action:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5

      - uses: devops-infra/template-action@v1
```

### 🔀 Advanced
Run the Action with set inputs.

```yaml
name: Run the Action on each commit
on: [push]
jobs:
  template-action:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5

      - uses: devops-infra/template-action@v1
        with:
          foobar: hello
          debug: 'true'
```

### 🎯 Use specific version
Run the Action with a specific version tag.

```yaml
name: Run the Action on each commit
on: [push]
jobs:
  template-action:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5

      - uses: devops-infra/template-action@v1.0.2
        id: Pin patch version

      - uses: devops-infra/template-action@v1.0
        id: Pin minor version

      - uses: devops-infra/template-action@v1
        id: Pin major version
```


## 🏗️ CI/CD
Workflows included:
- Pull Request: lint (hadolint, shellcheck, actionlint, yamllint), build and push a test image (test-<branch>), and a self-test running this action from source.
- Release (manual): updates action.yml (pins exact vX.Y.Z) and docs (major vX), creates vX.Y.Z and updates vX, vX.Y tags, builds and pushes multi-arch images, and publishes a GitHub Release.
- Weekly: builds and pushes a test image from the latest release tag (test-<tag>) to keep registries active and catch dependency issues.


## 🧑‍💻 Development
Prerequisites:
- Docker with Buildx,
- Task (installed via workflow or from https://taskfile.dev),
- gnu-sed if on macOS (`brew install gnu-sed`),
- pre-commit (optional).

Common tasks:
```bash
# Run all linters
task lint

# Build multi-arch images locally (no push)
task docker:build

# Push images (requires DOCKER_TOKEN and GITHUB_TOKEN)
DOCKER_TOKEN=... GITHUB_TOKEN=... task docker:push
```

Pre-commit hooks:
```bash
brew install pre-commit
task pre-commit:install
task pre-commit
```


## 🤝 Contributing
Contributions are welcome! See [CONTRIBUTING](https://github.com/devops-infra/.github/blob/master/CONTRIBUTING.md).
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## 💬 Support
If you have any questions or need help, please:
- 📝 Create an [issue](https://github.com/devops-infra/template-action/issues)
- 🌟 Star this repository if you find it useful!
