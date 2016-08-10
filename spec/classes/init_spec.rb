require 'spec_helper'
describe 'percona_toolkit' do

  context 'with defaults for all parameters' do
    it { should contain_class('percona_toolkit') }
  end
end
