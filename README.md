# Boilerplate for Shopify theme development

This repository provides boilerplate for Shopify theme development with the default theme.

## Requirements

- [nodenv](https://github.com/nodenv/nodenv#installation)
- [yarn](https://classic.yarnpkg.com/en/docs/install)
- [rbenv](https://github.com/rbenv/rbenv#installation)
- [bundler](https://github.com/rubygems/bundler)

## Setup

### Installation

```bash
yarn install
bundle install
```

### Make your own config.yml for development

In order to make `config.yml`, it can be done either by using Theme Kit or manually.

#### Theme Kit

```bash
yarn run config -p=<your password> -s=<your store url> -t=<your theme id> -d=src
```

#### Manual

```bash
cp -ip config.sample.yml config.yml
```

```yml
development:
  password: shppa_00000000000000000000000000000000 # your password for shopify api
  theme_id: "000000000000"                         # your woking theme id
  store: test.myshopify.com                        # your store url
  directory: src
```

### Get latest theme on Shopify

```bash
yarn run get
```

### Deploy your changes to Shopify

```bash
yarn run deploy
```

or if you want to continuously deploy

```bash
yarn run watch
```

## Helpful references for development

- [Shopify Theme Kit](https://shopify.dev/tools/theme-kit)
