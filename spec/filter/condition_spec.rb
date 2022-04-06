=begin

#Fatture in Cloud API v2 - Filter Helper

=end

require 'spec_helper'

describe FattureInCloud_Ruby_Sdk::Condition do
  let(:cBool) { FattureInCloud_Ruby_Sdk::Condition.new('qualified', FattureInCloud_Ruby_Sdk::Operator::EQ, true) }
  let(:cNum) { FattureInCloud_Ruby_Sdk::Condition.new('price', FattureInCloud_Ruby_Sdk::Operator::LTE, 10.12) }
  let(:cString) { FattureInCloud_Ruby_Sdk::Condition.new('sweet', FattureInCloud_Ruby_Sdk::Operator::ENDS_WITH, 'cioccolato') }
  let(:cNull) { FattureInCloud_Ruby_Sdk::Condition.new('girlfriend', FattureInCloud_Ruby_Sdk::Operator::IS_NOT, nil) }

  describe 'test an instance of Condition' do
    it 'should create an instance of Condition' do
      expect(cBool).to be_instance_of(FattureInCloud_Ruby_Sdk::Condition)
      expect(cNum).to be_instance_of(FattureInCloud_Ruby_Sdk::Condition)
      expect(cString).to be_instance_of(FattureInCloud_Ruby_Sdk::Condition)
      expect(cNull).to be_instance_of(FattureInCloud_Ruby_Sdk::Condition)
    end
  end

  describe 'test attribute "field"' do
    it 'should work' do
      expect(cBool.field).to eq('qualified')
      cBool.field = 'phd'
      expect(cBool.field).to eq('phd')
      expect(cNum.field).to eq('price')
      expect(cString.field).to eq('sweet')
      expect(cNull.field).to eq('girlfriend')
    end
  end

  describe 'test attribute "operator"' do
    it 'should work' do
      expect(cBool.operator).to eq(FattureInCloud_Ruby_Sdk::Operator::EQ)
      expect(cNum.operator).to eq(FattureInCloud_Ruby_Sdk::Operator::LTE)
      cNum.operator = FattureInCloud_Ruby_Sdk::Operator::GTE
      expect(cNum.operator).to eq(FattureInCloud_Ruby_Sdk::Operator::GTE)
      expect(cString.operator).to eq(FattureInCloud_Ruby_Sdk::Operator::ENDS_WITH)
      expect(cNull.operator).to eq(FattureInCloud_Ruby_Sdk::Operator::IS_NOT)
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      expect(cBool.value).to eq(true)
      expect(cNum.value).to eq(10.12)
      expect(cString.value).to eq('cioccolato')
      cString.value = 'panna'
      expect(cString.value).to eq('panna')
      expect(cNull.value).to eq(nil)
    end
  end

  describe 'test attribute "build_query"' do
    it 'should work' do
      expect(cBool.build_query).to eq('qualified = true')
      expect(cNum.build_query).to eq('price <= 10.12')
      expect(cString.build_query).to eq("sweet ends with 'cioccolato'")
      expect(cNull.build_query).to eq('girlfriend is not null')
    end
  end
end
