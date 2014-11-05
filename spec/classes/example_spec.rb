require 'spec_helper'

describe 'bind' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "bind class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('bind::params') }
        it { should contain_class('bind::install').that_comes_before('bind::config') }
        it { should contain_class('bind::config') }
        it { should contain_class('bind::service').that_subscribes_to('bind::config') }

        it { should contain_service('bind') }
        it { should contain_package('bind').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'bind class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('bind') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
