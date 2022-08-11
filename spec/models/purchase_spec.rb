require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe 'Test the Purchase model' do
    subject do
      @user = User.new(email: 'example@mail.com', password: '1234567')
      @group = Group.new(name: 'test', author_id: @user)
      @purchase = Purchase.new(name: 'beverages', amount: 200, author_id: @user, group_id: @group)
    end

    before { subject.save }

    it 'subject should be valid' do
      expect(subject).to_not be_valid
    end

    it 'subject name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end


    it 'subject amount should be greater than or equal to 0' do
      subject.amount = -200
      expect(subject).to_not be_valid
    end

    it 'categroy should be present' do
      subject.group_id = nil
      expect(subject).to_not be_valid
    end
  end
end
