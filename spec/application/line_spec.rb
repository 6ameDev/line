require 'spec_helper'

describe Application::Line do
  context '#length' do
    it 'should return the correct length, 6' do
      line = Application::Line.new([1,0], [6,0])
      expect(line.line_length).to eq(6)
    end

    it 'should return the correct length, 7' do
      line = Application::Line.new([1,0], [7,0])
      expect(line.line_length).to eq(7)
    end

    it 'should return the correct length, 5' do
      line = Application::Line.new([1,0], [4,3])
      expect(line.line_length).to eq(5)
    end

    it 'should return the correct length, 5' do
      line = Application::Line.new([1,5], [5,5])
      expect(line.line_length).to eq(5)
    end
  end
end
