=begin

#Fatture in Cloud API v2 - Filter Helper

=end

require 'spec_helper'

describe FattureInCloud_Ruby_Sdk::Filter do
  let(:e) { FattureInCloud_Ruby_Sdk::Condition.new('nation', FattureInCloud_Ruby_Sdk::Operator::EQ, 'IT') }
  let(:e1) { FattureInCloud_Ruby_Sdk::Condition.new('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'MadBit Entertainment S.r.l.') }
  let(:c1) { FattureInCloud_Ruby_Sdk::Condition.new('city', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Warsaw') }
  let(:c2) { FattureInCloud_Ruby_Sdk::Condition.new('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Przewodniczka Social Media') }
  let(:f) { FattureInCloud_Ruby_Sdk::Filter.new(e) }
  let(:f_empty) { FattureInCloud_Ruby_Sdk::Filter.new }

  describe 'test an instance of Filter' do
    it 'should create an instance of Filter' do
      expect(f).to be_instance_of(FattureInCloud_Ruby_Sdk::Filter)
    end
  end

  describe 'test attribute expression' do
    it 'should work' do
      expect(f.expression).to eq(e)
      f.expression = e1
      expect(f.expression).to eq(e1)
    end
  end

  describe 'test method where' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      f_empty.where('nation', FattureInCloud_Ruby_Sdk::Operator::EQ, 'IT')
      expect(f_empty.expression).to eq(e)

      f_empty.where('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'MadBit Entertainment S.r.l.')
      expect(f_empty.expression).to eq(e1)
    end
  end

  describe 'test method where_expression' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      f_empty.where_expression(e)
      expect(f_empty.expression).to eq(e)

      f_empty.where_expression(e1)
      expect(f_empty.expression).to eq(e1)
    end
  end

  describe 'test method and' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      conj = FattureInCloud_Ruby_Sdk::Conjunction.new(c1, c2)

      expect { f_empty.and('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Reply') }.to raise_error('Cannot create a conjunction with an empty expression.')

      f_empty.where('city', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Warsaw').and('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Przewodniczka Social Media')
      expect(f_empty.expression).to eq(conj)
    end
  end

  describe 'test method and_expression' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      conj = FattureInCloud_Ruby_Sdk::Conjunction.new(c1, c2)

      expect { f_empty.and_expression(c2) }.to raise_error('Cannot create a conjunction with an empty expression.')

      expect { f_empty.where_expression(c1).and_expression(nil) }.to raise_error('Cannot create a conjunction with an empty expression.')

      f_empty.where_expression(c1).and_expression(c2)
      expect(f_empty.expression).to eq(conj)
    end
  end

  describe 'test method and_filter' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      conj = FattureInCloud_Ruby_Sdk::Conjunction.new(c1, c2)

      expect { f_empty.and_filter(FattureInCloud_Ruby_Sdk::Filter.new(c2)) }.to raise_error('Cannot create a conjunction with an empty expression.')

      expect { f_empty.where_expression(c1).and_filter(FattureInCloud_Ruby_Sdk::Filter.new()) }.to raise_error('Cannot create a conjunction with an empty expression.')

      expect { f_empty.where_expression(c1).and_filter(nil) }.to raise_error('Cannot create a conjunction with an empty expression.')

      f_empty.where_expression(c1).and_filter(FattureInCloud_Ruby_Sdk::Filter.new(c2))
      expect(f_empty.expression).to eq(conj)
    end
  end

  describe 'test method or' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      conj = FattureInCloud_Ruby_Sdk::Disjunction.new(c1, c2)

      expect { f_empty.or('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Reply') }.to raise_error('Cannot create a disjunction with an empty expression.')

      f_empty.where('city', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Warsaw').or('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Przewodniczka Social Media')
      expect(f_empty.expression).to eq(conj)
    end
  end

  describe 'test method or_expression' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      conj = FattureInCloud_Ruby_Sdk::Disjunction.new(c1, c2)

      expect { f_empty.or_expression(c2) }.to raise_error('Cannot create a disjunction with an empty expression.')

      expect { f_empty.where_expression(c1).or_expression(nil) }.to raise_error('Cannot create a disjunction with an empty expression.')

      f_empty.where_expression(c1).or_expression(c2)
      expect(f_empty.expression).to eq(conj)
    end
  end

  describe 'test method or_filter' do
    it 'should work' do
      expect(f_empty.expression).to eq(nil)

      conj = FattureInCloud_Ruby_Sdk::Disjunction.new(c1, c2)

      expect { f_empty.or_filter(FattureInCloud_Ruby_Sdk::Filter.new(c2)) }.to raise_error('Cannot create a disjunction with an empty expression.')

      expect { f_empty.where_expression(c1).or_filter(FattureInCloud_Ruby_Sdk::Filter.new()) }.to raise_error('Cannot create a disjunction with an empty expression.')

      expect { f_empty.where_expression(c1).or_filter(nil) }.to raise_error('Cannot create a disjunction with an empty expression.')

      f_empty.where_expression(c1).or_filter(FattureInCloud_Ruby_Sdk::Filter.new(c2))
      expect(f_empty.expression).to eq(conj)
    end
  end

  describe 'test method build_query' do
    it 'should work' do
      expect(f_empty.build_query).to eq('')

      f_empty = FattureInCloud_Ruby_Sdk::Filter.new(FattureInCloud_Ruby_Sdk::Condition.new('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Przewodniczka Social Media'))
      expect(f_empty.build_query).to eq("company = 'Przewodniczka Social Media'")
    end
  end

  describe 'test method build_url_encoded_query' do
    it 'should work' do
      expect(f_empty.build_url_encoded_query).to eq('')

      f_empty = FattureInCloud_Ruby_Sdk::Filter.new(FattureInCloud_Ruby_Sdk::Condition.new('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Przewodniczka Social Media'))
      expect(f_empty.build_url_encoded_query).to eq('company+%3D+%27Przewodniczka+Social+Media%27')
    end
  end

  describe 'test method to_s' do
    it 'should work' do
      expect(f_empty.to_s).to eq('')

      f_empty = FattureInCloud_Ruby_Sdk::Filter.new(FattureInCloud_Ruby_Sdk::Condition.new('company', FattureInCloud_Ruby_Sdk::Operator::EQ, 'Przewodniczka Social Media'))
      expect(f_empty.to_s).to eq("company = 'Przewodniczka Social Media'")
    end
  end
end
