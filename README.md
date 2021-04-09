# cfnctl

CLI for deploying and managing AWS Cloudformation templates.


## Usage

### Configuration File

cfnctl can be configured by creating a `.cfnctlrc.yaml` file in your project's root directory. Example `.cfnctlrc.yaml` file:

```yaml
dev:
  stack_name: web-tier-dev
  template_file: "./cloudformation/web-tier-stack.yaml"
  parameter_overrides:
  - VPC: vpc-8295027
  - InstanceType: t3.micro
  - BucketPrefix: web-tier-dev-images
  tags:
  - Owner: Nick Cronquist
  - Environment: dev
prod:
  stack_name: web-tier-prod
  template_file: "./cloudformation/web-tier-stack.yaml"
  parameter_overrides:
  - VPC: vpc-27038278
  - InstanceType: t3.xlarge
  - BucketPrefix: web-tier-prod-images
  tags:
  - Owner: Nick Cronquist
  - Environment: prod

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
