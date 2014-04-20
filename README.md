chef-dev
========

Provisioning development environment like BOXEN.

chef-dev is NOT stable.

## Requirements

- ubuntu, linux mint
- git-core
- libxslt-dev, libxml2-dev
- ruby, ruby-dev
- bundler

## Setup

```
$ sudo apt-get install -y libxslt-dev libxml2-dev ruby ruby-dev git-core g++
$ sudo gem install bundler --no-rdoc --no-ri
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ bundle install
$ berks install -p cookbooks
```

### Chef Solo

```
$ sed -i '' -e "s/yuu/$USER/g" nodes/localhost.json
$ sudo chef-solo -c solo.rb -j nodes/localhost.json
```

### Knife Solo

```
$ sed -i '' -e "s/yuu/[user_name]/g" nodes/localhost.json
$ knife solo init .
$ knife solo prepare [user_name]@[host]
$ knife solo cook [user_name]@[host] nodes/localhost.json
```

### Vagrant

Install Vagrant, VirtualBox and:

```
$ sed -i '' -e "s/yuu/vagrant/g" nodes/localhost.json
$ vagrant up
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
