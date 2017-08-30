# command-line
A template for creating command-line iOS apps with test modules

## Cloning
After cloning this repo you should change the name in `Package.swift` to be the name of your project instead of `template`. You should also rename the folder that is cloned to match your project name, run `rm -rf .git` followed by `git init` to reinitialize the repository from a fresh state.

A script will be created shortly to do this for you.

`Package.swift` also provides the setup for the targets listed below.

## Sources/Run
`main.swift` lives here and is where execution begins.

## Sources/App
All other classes should be created here. `App` has been seperated out for testability.

## Tests/AppTests
Testing module to create tests to be run. The sample already imports the `App` module.
