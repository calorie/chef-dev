chef-dev
========

Provisioning development environment like BOXEN.

## Requirements

- ubuntu, linux mint
- git-core
- openssh-server
- libxslt-dev, libxml2-dev
- ruby, ruby-dev
- bundler, chef

## Setup

```
$ sudo apt-get install -y openssh-server libxslt-dev libxml2-dev ruby ruby-dev git-core
$ sudo gem install bundler chef --no-rdoc --no-ri
$ ssh-keygen
$ ssh-copy-id localhost
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ sed -i '' -e "s/yuu/$USER/g" nodes/localhost.json
$ bundle install --path vendor/bundle
$ bundle exec berks install -p cookbooks
$ bundle exec knife solo init .
$ bundle exec knife solo cook localhost
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
