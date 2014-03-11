chef-dev
========

## Requirements

- ubuntu, linux mint
- ruby

## Setup

```
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ bundle install --path vendor/bundle
$ bundle exec berks install -p cookbooks
$ bundle exec knife solo init .
$ bundle exec knife solo prepare localhost
$ bundle exec knife solo cook localhost
```
