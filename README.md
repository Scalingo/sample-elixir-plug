# Sample Application with Elixir and Plug

## Running Locally

First, you need to have a working elixir environment:

https://elixir-lang.org/install.html

### Setup

```sh
mix deps.get
```

### Build

```sh
mix compile
```

### Execute
```sh
mix run --no-halt
```

## Deploying on Scalingo

Create an application on https://scalingo.com, then:

```
git remote add scalingo git@scalingo.com:<name_of_your_app>.git
git push scalingo master
```

And that's it!

The application is running at this url: https://sample-elixir-plug.scalingo.io/

## Deploy in one click

[![Deploy to Scalingo](https://cdn.scalingo.com/deploy/button.svg)](https://my.scalingo.com/deploy)

## Links

https://elixir-lang.org
https://github.com/elixir-plug/plug
