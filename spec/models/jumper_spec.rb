require 'rails_helper'

RSpec.describe Jumper, type: :model do
  subject { Jumper.create }

  describe '#mission_possible' do
    context 'when jumping through first array' do
      let(:array) { [2, 3, 1, 1, 4] }

      it 'should return true' do
        expect(subject.mission_possible?(array)).to be true
      end
    end

    context 'when jumping through second array' do
      let(:array) { [3, 2, 1, 0, 4] }

      it 'should return false' do
        expect(subject.mission_possible?(array)).to be false
      end
    end

     context 'when jumping through third array' do
      let(:array) { [2, 0, 0] }

      it 'should return true' do
        expect(subject.mission_possible?(array)).to be true
      end
    end
  end
end
