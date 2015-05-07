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

  context '#equality' do
    let(:line) { Application::Line.new([1,0], [5,0]) }

    context '#equal' do
      it 'should be equal to itself' do
        expect(line).to eq(line)
      end

      it 'should be equal to same line' do
        new_line = Application::Line.new([1,0], [5,0])
        expect(line).to eq(new_line)
      end

      it 'should be equal to line with swapped points' do
        new_line = Application::Line.new([5,0], [1,0])
        expect(line).to eq(new_line)
      end

      it 'should have equal hash' do
        new_line = Application::Line.new([5,0], [1,0])
        expect(line.hash).to eq(new_line.hash)
      end
    end

    context '#not equal' do
      it 'should not be equal to different line' do
        new_line = Application::Line.new([4,7], [3,9])
        expect(line).to_not eq(new_line)
      end

      it 'should not be equal to different line with same length' do
        new_line = Application::Line.new([1,1], [5,1])
        expect(line).to_not eq(new_line)
      end

      it 'should not be equal to nil' do
        expect(line).to_not eq(nil)
      end

      it 'should not be equal to object of a different class' do
        expect(line).to_not eq(Object.class)
      end
    end
  end
end
