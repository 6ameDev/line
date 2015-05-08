require 'spec_helper'

describe Application::Coordinate do
  context '#equality' do
    let(:point) { Application::Coordinate.new(1, 0) }

    context '#equal' do
      it 'should be reflexive' do
        expect(point).to eq(point)
      end

      it 'should be symmetric' do
        new_point = Application::Coordinate.new(1, 0)
        a_eq_b = point == new_point
        b_eq_a = new_point == point
        expect([a_eq_b, b_eq_a]).to eq([true, true])
      end

      it 'should have equal hash' do
        new_point = Application::Coordinate.new(1, 0)
        expect(point.hash).to eq(new_point.hash)
      end
    end

    context '#not equal' do
      it 'should not be equal to nil' do
        expect(point).to_not eq(nil)
      end

      it 'should not be equal for other class object' do
        expect(point).to_not eq(Object.new)
      end

      it 'should not be equal to other coordinate' do
        other_point = Application::Coordinate.new(0, 1)
        expect(point).to_not eq(other_point)
      end
    end
  end
end
