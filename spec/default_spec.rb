require 'chefspec'
require 'chefspec/berkshelf'

describe 'myface::default' do
let (:chef_run) { ChefSpec::Runner.new.converge 'myface::default' }

  # Check to make sure the user is created
  it 'should create a service account for the myface daemon' do
    expect(chef_run).to create_user 'myface'
  end

  # Install the sudo package
  it 'should install the sudo package' do
    expect(chef_run).to install_package('sudo')
  end

end
