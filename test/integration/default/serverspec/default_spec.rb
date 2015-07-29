require 'spec_helper'

describe command('chef-client --version') do
	its(:stdout) { should contain('Chef: 11.18.12') }
end
