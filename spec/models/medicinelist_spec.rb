require 'rails_helper'

RSpec.describe Medicinelist, type: :model do
  before do
    @medicinelist = FactoryBot.build(:medicinelist)
  end

  describe '内服薬登録' do
    context '内服登録ができない場合' do
      it '薬の名前がないと登録できない' do
        @medicinelist.name = ''
        @medicinelist.valid?
        expect(@medicinelist.errors.full_messages).to include("Name can't be blank")
      end

      it '錠数がないと登録できない' do
        @medicinelist.number = ''
        @medicinelist.valid?
        expect(@medicinelist.errors.full_messages).to include("Number can't be blank")
      end

      it '飲むタイミングがないと登録できない' do
        @medicinelist.timing_id = '1'
        @medicinelist.valid?
        expect(@medicinelist.errors.full_messages).to include("Timing can't be blank")
      end
    end

    context '内服登録ができる場合' do
      it '全ての項目が入力できていれば登録できる' do
        expect(@medicinelist).to be_valid
      end

      it 'メモが空でも登録できる' do
        @medicinelist.memo = ''
        expect(@medicinelist).to be_valid
      end
    end
  end
end
