require_relative 'ns'

RSpec.describe NS do
  describe described_class::One do
    include described_class

    it 'does the type one thing' do
      expect(custom_type).to include 'one'
    end

    it 'does the common thing' do
      expect(custom_type).to include 'common'
    end
  end


  describe described_class::Two do
    include described_class
    it 'does the type two thing' do
      expect(custom_type).to include 'two'
    end

    it 'does the common thing' do
      expect(custom_type).to include 'common'
    end
  end
end
