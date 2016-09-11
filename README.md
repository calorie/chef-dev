chef-dev
========

Provisioning development environment like BOXEN.

## Requirements

- Ubuntu, Linux Mint

## Setup

```
$ sudo add-apt-repository -y ppa:brightbox/ruby-ng
$ sudo apt-get update
$ sudo apt-get install -y git-core g++ libxslt-dev libxml2-dev ruby2.3 ruby2.3-dev autoconf build-essential
$ sudo gem install bundler --no-rdoc --no-ri
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ bundle install
$ berks vendor cookbooks
```

## Provisioning

### Chef Zero

```
$ sed -i -e "s/yuu/$USER/g" nodes/dev.json
$ sudo chef-client -z -c solo.rb -j nodes/dev.json
```

### Knife Solo

```
$ sed -i -e "s/yuu/[user_name]/g" nodes/dev.json
$ knife solo init .
$ knife solo prepare [user_name]@[host]
$ knife solo cook [user_name]@[host] nodes/dev.json
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
