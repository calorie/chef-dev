chef-dev
========

## Requirements

- ubuntu, linux mint
- openssh-server
- libxslt-dev, libxml2-dev
- ruby, ruby-dev

## Setup

```
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ bundle install --path vendor/bundle
$ bundle exec berks install -p cookbooks
$ ssh-copy-id localhost
$ bundle exec knife solo init .
$ bundle exec knife solo prepare localhost
$ sudo gem install bundler
$ bundle exec knife solo cook localhost
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
