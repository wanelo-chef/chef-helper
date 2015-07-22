chef-helper-cookbook
=============

Install a specific version of Chef everywhere. This cookbook helps to
keep your infrastructure up to date with the latest version of Chef.

## Installation

```ruby
cookbook 'chef_helper', git: 'https://github.com/wanelo-chef/chef-helper.git'
```

## Usage

```ruby
include_recipe 'chef_helper'

chef_version '11.16.4'
```

Note that you probably do not want to notify restart of chef-client when 
running this cookbook, otherwise the chef run will not complete.

