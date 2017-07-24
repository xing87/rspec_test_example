current_dir = File.dirname(__FILE__)

require 'bundler/setup'
Bundler.require
require "#{current_dir}/../spec/spec_helper.rb"

RSpec.describe 'Assertion' do
  describe 'expect equality' do
    it { expect(1).to eq(1) }
    it do
      arr = [1, 2, 3]
      expect(arr).not_to equal([1, 2, 3])
    end
  end

  describe 'expect Truthiness' do
    it { expect(1 + 1 == 2).to be true }
  end

  describe 'match array' do
    it do
      arr = [1, 2, 3]
      expect(arr).to match_array([1, 2, 3])
    end
  end

  describe 'exception' do
    it do
      expect {  nil.split(',') }.to raise_error(NoMethodError)
    end
  end
end
