# cfnctl

CLI for deploying and managing AWS Cloudformation templates.


## Usage

### Configuration File

cfnctl can be configured by creating a `.cfnctlrc.yaml` file in your project's root directory. Example `.cfnctlrc.yaml` file:

```yaml
workspacename
```

## Local Developement

- Build the binary

```sh
make
```

- Run the tests

```sh
make check
```

- Format the code with goimports

```sh
make format
```

- Lint code and check formatting

```sh
make lint
```

- Run the CLI with the helper script during development

```sh
./cfnctl [command] [options]
```
