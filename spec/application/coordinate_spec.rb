require 'spec_helper'

describe Application::Coordinate do
  context '#assignment' do
    it 'should assign correct values to x and y' do
      point = Application::Coordinate.new(2, 3)
      expect([point.x, point.y]).to eq([2, 3])
    end
  end
end
