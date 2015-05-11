require 'spec_helper'

describe Application::Coordinate do
  context '#equality' do
    let(:coordinate) { Application::Coordinate.new(1, 0) }

    context '#equal' do
      it 'should be reflexive' do
        expect(coordinate).to eq(coordinate)
      end

      it 'should be symmetric' do
        new_coordinate = Application::Coordinate.new(1, 0)
        a_eq_b = coordinate == new_coordinate
        b_eq_a = new_coordinate == coordinate
        expect([a_eq_b, b_eq_a]).to eq([true, true])
      end

      it 'should have equal hash' do
        new_coordinate = Application::Coordinate.new(1, 0)
        expect(coordinate.hash).to eq(new_coordinate.hash)
      end
    end

    context '#not equal' do
      it 'should not be equal to nil' do
        expect(coordinate).to_not eq(nil)
      end

      it 'should not be equal for other class object' do
        expect(coordinate).to_not eq(Object.new)
      end

      it 'should not be equal to other coordinate' do
        other_coordinate = Application::Coordinate.new(0, 1)
        expect(coordinate).to_not eq(other_coordinate)
      end
    end
  end

  context '#distance' do
    let(:coordinate_1) { Application::Coordinate.new(1, 0) }
    let(:coordinate_2) { Application::Coordinate.new(4, 3) }

    it 'should calculate the distance' do
      expect(coordinate_1.distance_from(coordinate_2)).to eq(5)
    end
  end
end
