# sugarcube-project-scaffold

Bootstrap a new SugarCube project.

## Synopsis

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Installation

```sh
git clone https://github.com/critocrito/sugarcube-project-scaffold.git
cd sugarcube-project-scaffold
rm -rf .git && git init && git add -A && git commit -m "Initial commit."
yarn install
```

## Usage

Use scripts in `bin` to run various pipelines. Pipelines themselves are stored in `pipelines`. Static configuration and secrets are stored in `configs`. Create a new file `configs/secrets.json` to store any tokens and passwords. Make use of the `extends` mechanism to include it in pipelines.

## Custom plugins

Develop custom plugins in `lib`. If the name of the project get's changed, don't forget to edit `package.json` as well. To install the custom package follow these steps:

- `yarn install`
- `yarn compile`
- `cd lib && yarn link && cd ..`
- `yarn link sugarcube-plugin-project`

Verify the plugin by calling `$(npm bin)/sugarcube --list-plugins`. To develop use the watch mode for compilation (`yarn compile:watch`).

## License

[GPL 3.0 licensed](LICENSE)
