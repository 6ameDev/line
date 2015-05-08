require 'spec_helper'

describe Application::Line do
  context '#length' do
    it 'should return length as 6' do
      coordinate_1 = Application::Coordinate.new(1, 0)
      coordinate_2 = Application::Coordinate.new(6, 0)
      line = Application::Line.new(coordinate_1, coordinate_2)
      expect(line.length).to eq(6)
    end

    it 'should return length as 5' do
      coordinate_1 = Application::Coordinate.new(1, 0)
      coordinate_2 = Application::Coordinate.new(4, 3)
      line = Application::Line.new(coordinate_1, coordinate_2)
      expect(line.length).to eq(5)
    end

    it 'should return length as 8' do
      coordinate_1 = Application::Coordinate.new(1, 5)
      coordinate_2 = Application::Coordinate.new(8, 5)
      line = Application::Line.new(coordinate_1, coordinate_2)
      expect(line.length).to eq(8)
    end
  end

  context '#equality' do
    before(:each) do
      coordinate_1 = Application::Coordinate.new(1, 0)
      coordinate_2 = Application::Coordinate.new(5, 0)
      @line = Application::Line.new(coordinate_1, coordinate_2)
    end

    context '#equal' do
      it 'should be reflexive' do
        expect(@line).to eq(@line)
      end

      it 'should be equal to similar line' do
        coordinate_1 = Application::Coordinate.new(1, 0)
        coordinate_2 = Application::Coordinate.new(5, 0)
        new_line = Application::Line.new(coordinate_1, coordinate_2)
        expect(@line).to eq(new_line)
      end

      it 'should be equal to line with swapped coordinates' do
        coordinate_1 = Application::Coordinate.new(5, 0)
        coordinate_2 = Application::Coordinate.new(1, 0)
        new_line = Application::Line.new(coordinate_1, coordinate_2)
        expect(@line).to eq(new_line)
      end

      it 'should have equal hash' do
        coordinate_1 = Application::Coordinate.new(5, 0)
        coordinate_2 = Application::Coordinate.new(1, 0)
        new_line = Application::Line.new(coordinate_1, coordinate_2)
        expect(@line.hash).to eq(new_line.hash)
      end
    end

    context '#not equal' do
      it 'should not be equal to different line' do
        coordinate_1 = Application::Coordinate.new(4, 7)
        coordinate_2 = Application::Coordinate.new(3, 9)
        new_line = Application::Line.new(coordinate_1, coordinate_2)
        expect(@line).to_not eq(new_line)
      end

      it 'should not be equal to different line with same length' do
        coordinate_1 = Application::Coordinate.new(1, 1)
        coordinate_2 = Application::Coordinate.new(5, 1)
        new_line = Application::Line.new(coordinate_1, coordinate_2)
        expect(@line).to_not eq(new_line)
      end

      it 'should not be equal to nil' do
        expect(@line).to_not eq(nil)
      end

      it 'should not be equal to object of a different class' do
        expect(@line).to_not eq(Object.class)
      end
    end
  end
end
