chef-dev
========

## Requirements

- ubuntu, linux mint
- openssh-server
- libxslt-dev, libxml2-dev
- ruby1.9.1, ruby1.9.1-dev

## Setup

```
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ bundle install --path vendor/bundle --no-rdoc --no-ri
$ bundle exec berks install -p cookbooks
$ bundle exec knife solo init .
$ bundle exec knife solo prepare localhost
$ bundle exec knife solo cook localhost
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
