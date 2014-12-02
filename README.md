chef-cookbook
=============

Install a specific version of Chef everywhere. This cookbook helps to
keep your infrastructure up to date with the latest version of Chef.

## Installation

```ruby
cookbook 'chef', git: 'https://github.com/wanelo-chef/chef-cookbook.git'
```

## Development

```bash
git clone https://github.com/wanelo-chef/chef-cookbook.git chef
```

## Usage

```ruby
include_recipe 'chef'

chef_version '11.16.4'
```

Note that you probably do not want to notify restart of chef-client when 
running this cookbook, otherwise the chef run will not complete.

