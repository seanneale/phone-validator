RSpec.describe 'Test' do           #
  context 'before publication' do  # (almost) plain English
    it 'cannot have comments' do   #
      expect { false }.to be_truthy  # test code
    end
  end
end
