require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Validate Group model' do
    before(:example) do
      @user = User.new(email: 'example@mail.com', password: '1234567')
      @group = Group.new(name: 'test', author_id: @user)
      @user.save
    end

    before { @group.save }

    it 'group should be valid' do
      expect(@group).to_not be_valid
    end

    it 'group should have a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'group has an icon' do
      @group.icon = nil
      expect(@group).to_not be_valid
    end
  end
end
