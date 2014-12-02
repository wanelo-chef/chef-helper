require 'chef/provider'

class Chef::Resource::ChefVersion < Chef::Resource
  def initialize(name, run_context=nil)
    super
    @resource_name = :chef_version
    @provider = Chef::Provider::ChefVersion
    @action = :update
    @allowed_actions = [:update, :updated]
  end

  def version(arg=nil)
    set_or_return(:name, arg, kind_of: String, name_attribute: true)
  end
end
