require 'chef/provider'

class Chef::Provider::ChefVersion < Chef::Provider
  def load_current_resource
    @current_resource ||= Chef::Resource::ChefVersion.new(new_resource.version)
  end

  def action_update
    chef_gem 'chef' do
      options '--no-ri --no-rdoc'
      version new_resource.version
      notifies :updated, 'chef_version[%s]' % new_resource.version, :immediately
    end
  end

  def action_updated
    new_resource.updated_by_last_action(true)
  end
end
