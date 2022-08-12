require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe 'Test the Purchase model' do
    before(:example) do
      @user = User.new(id: 1, name: 'zieeco', email: 'example@mail.com', password: '1234567')
      @group = Group.new(id: 1, name: 'beverages', icon: nil, author_id: @user.id)
      @purchase = Purchase.new(id: 1, author: @user, group_id: @group.id, name: 'beverages', amount: 200, created_at: Time.now, updated_at: Time.now)
    end

    it 'if name is present' do
      @purchase.name = 'beverages'
      expect(@purchase).to be_valid
    end

    it 'if name is invalid' do
      @purchase.name = nil
      expect(@purchase).to_not be_valid
    end


    it 'test if amount is a number' do
      @purchase.amount = 200
      expect(@purchase).to be_valid
    end

    it 'test if amount is is not valid' do
      @purchase.amount = nil
      expect(@purchase).to_not be_valid
    end
  end
end
