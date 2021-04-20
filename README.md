# cookiecutter-golang-cli

A template powered by [cookiecutter](https://github.com/audreyr/cookiecutter) for building command-line interface in golang using the [cli](https://github.com/mitchellh/cli) framework. If you know me professionally - you know I love writing scripts/cli/programs to automate my development and operational workflow. I find myself copying a bunch of stuff from different projects - so this template reflects the typical cli project I would create. Buyer Beware - alot of the choice I make in this project is personal preference!

See [this repo](https://github.com/jamescurtin/demo-cookiecutter-flask) for an example project generated from the most recent version of the template.

## Use it now

If you don't have cookiecutter installed and Python ≥ 3.6 is required. you'll need to install that first using Python's pip command:

```bash
$ pip install cookiecutter
```

alternatively you can install cookiecutter via brew

```bash
$ brew intall cookiecutter
```

```bash
$ cookiecutter https://github.com/srizzling/cookiecutter-golang-cli.git
```

You will be asked about your basic info (name, project name, app name, etc.). This info will be used in your new project.

## Features

- Uses the [cli](https://github.com/mitchellh/cli) framework. (the framework that powers terraform, waypoint, etc)
- Generous Makefile with management commands
- Works with either in a global GOPATH or with a local vendor directory
- Uses go modules for dependency management
- Uses logrus for logging
- Configures and sets up [gitmoji](https://github.com/carloscuesta/gitmoji) commit hooks.

## Roadmap

See the [open issues](https://github.com/srizzling/cookiecutter-golang-cli/issues) for a list of proposed features (and known issues).

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
