require 'rails_helper'

RSpec.describe Medicine, type: :model do
  before do
    @medicine = FactoryBot.build(:medicine)
  end

  describe '内服記録' do
    context '内服記録が登録できない場合' do
      it '内風時間がないと登録できない' do
        @medicine.start_time = nil
        @medicine.valid?
        expect(@medicine.errors.full_messages).to include("Start time can't be blank")
      end
    end
  end
end
