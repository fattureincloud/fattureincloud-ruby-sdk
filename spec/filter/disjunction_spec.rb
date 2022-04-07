=begin

#Fatture in Cloud API v2 - Filter Helper

=end

require 'spec_helper'

describe FattureInCloud_Ruby_Sdk::Disjunction do
  let(:left) { FattureInCloud_Ruby_Sdk::Condition.new('city', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Bergamo') }
  let(:right) { FattureInCloud_Ruby_Sdk::Condition.new('age', FattureInCloud_Ruby_Sdk::Operator::LT, 35) }
  let(:c) { FattureInCloud_Ruby_Sdk::Disjunction.new(left, right) }
  let(:left1) { FattureInCloud_Ruby_Sdk::Condition.new('team', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Volley Bergamo 1991') }
  let(:right1) { FattureInCloud_Ruby_Sdk::Condition.new('best_player', FattureInCloud_Ruby_Sdk::Operator::IS_NOT, 'null') }

  describe 'test an instance of Disjunction' do
    it 'should create an instance of Disjunction' do
      expect(c).to be_instance_of(FattureInCloud_Ruby_Sdk::Disjunction)
    end
  end

  describe 'test attribute "left"' do
    it 'should work' do
      expect(c.left).to eq(left)
      c.left = left1
      expect(c.left).to eq(left1)
    end
  end

  describe 'test attribute "right"' do
    it 'should work' do
      expect(c.right).to eq(right)
      c.right = right1
      expect(c.right).to eq(right1)
    end
  end

  describe 'test attribute "build_query"' do
    it 'should work' do
      expect(c.build_query).to eq("(city = 'Bergamo' or age < 35)")
    end
  end
end
