require 'spec_helper'

describe 'colorprompt' do
  on_os_under_test.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      let(:params) do
        { }.merge(overridden_params)
      end

      describe "apply colorprompt on #{os}" do
        let(:overridden_params) do {
        } end

        it { should compile.with_all_deps }

      end
    end
  end
end
