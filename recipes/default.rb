case node[:platform]
when 'debian', 'ubuntu'
  include_recipe 'apt'
end

include_recipe 'build-essential'
