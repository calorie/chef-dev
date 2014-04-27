chef-dev
========

Provisioning development environment like BOXEN.

## Requirements

### ubuntu, linux mint

- git-core
- g++
- libxslt-dev, libxml2-dev
- ruby, ruby-dev
- bundler

### mac

- bundler

## Setup

```
$ sudo gem install bundler --no-rdoc --no-ri
$ git clone https://github.com/calorie/chef-dev.git
$ cd chef-dev
$ bundle install
$ berks vendor cookbooks
```

### Chef Solo

ONLY ubuntu, linux mint, etc.

```
$ sed -i '' -e "s/vagrant/$USER/g" nodes/localhost.json
$ sudo chef-solo -c solo.rb -j nodes/localhost.json
```

### Knife Solo

```
$ sed -i '' -e "s/vagrant/[user_name]/g" nodes/localhost.json
$ knife solo init .
$ knife solo prepare [user_name]@[host]
$ knife solo cook [user_name]@[host] nodes/localhost.json
```

### Vagrant

Install Vagrant, VirtualBox and:

```
$ vagrant up
```

## Packages

[run_list](https://github.com/calorie/chef-dev/blob/master/roles/dev.rb)
