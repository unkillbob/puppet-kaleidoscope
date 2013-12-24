require 'spec_helper'

describe 'kaleidoscope' do
  let(:boxenhome) { '/opt/boxen' }
  let(:configdir) { "#{boxenhome}/config/git" }
  let(:repodir) { "#{boxenhome}/repo" }
  let(:facts) do
    {
      :boxen_home    => boxenhome,
      :boxen_repodir => repodir,
    }
  end

  it do
    should contain_class('kaleidoscope')
    should contain_package('Kaleidoscope').with({
      :provider => 'compressed_app',
      :source   => 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.2-116.zip',
    })
  end
end
