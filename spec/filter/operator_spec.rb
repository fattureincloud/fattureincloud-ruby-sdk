=begin

#Fatture in Cloud API v2 - Filter Helper

=end

require 'spec_helper'

describe FattureInCloud_Ruby_Sdk::Operator do
  describe 'test enum "EQ"' do
    it 'should work' do
      expect(FattureInCloud_Ruby_Sdk::Operator::EQ).to eq('=')
      expect(FattureInCloud_Ruby_Sdk::Operator::GT).to eq('>')
      expect(FattureInCloud_Ruby_Sdk::Operator::GTE).to eq('>=')
      expect(FattureInCloud_Ruby_Sdk::Operator::LT).to eq('<')
      expect(FattureInCloud_Ruby_Sdk::Operator::LTE).to eq('<=')
      expect(FattureInCloud_Ruby_Sdk::Operator::NEQ).to eq('<>')
      expect(FattureInCloud_Ruby_Sdk::Operator::IS).to eq('is')
      expect(FattureInCloud_Ruby_Sdk::Operator::IS_NOT).to eq('is not')
      expect(FattureInCloud_Ruby_Sdk::Operator::LIKE).to eq('like')
      expect(FattureInCloud_Ruby_Sdk::Operator::CONTAINS).to eq('contains')
      expect(FattureInCloud_Ruby_Sdk::Operator::NOT_LIKE).to eq('not like')
      expect(FattureInCloud_Ruby_Sdk::Operator::NOT_CONTAINS).to eq('not contains')
      expect(FattureInCloud_Ruby_Sdk::Operator::STARTS_WITH).to eq('starts with')
      expect(FattureInCloud_Ruby_Sdk::Operator::ENDS_WITH).to eq('ends with')
    end
  end
end
