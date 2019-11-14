require 'spec_helper_acceptance'

describe 'Simple Application' do

  let(:pp) do
    <<-EOS
    class { '::colorprompt': }

    EOS
  end

  it_behaves_like 'a idempotent resource'

end
