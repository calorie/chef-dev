chef-dev
========

## Requirements

- ubuntu, linux mint
- openssh-server
- libxslt-dev, libxml2-dev
- ruby, ruby-dev
- bundler

## Setup

```
$ ssh-copy-id localhost
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ sed -i '' -e 's/yuu/your_user_name/g' nodes/localhost.json
$ bundle install --path vendor/bundle
$ bundle exec berks install -p cookbooks
$ bundle exec knife solo init .
$ bundle exec knife solo prepare localhost
$ sudo gem install bundler
$ bundle exec knife solo cook localhost
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
