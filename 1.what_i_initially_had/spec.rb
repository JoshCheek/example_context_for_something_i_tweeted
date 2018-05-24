require_relative 'ns'

RSpec.describe NS do
  include described_class

  context 'one' do
    it 'does the type one thing' do
      expect(custom_type_one).to include 'one'
    end

    it 'does the common thing' do
      expect(custom_type_one).to include 'common'
    end
  end


  context 'two' do
    it 'does the type two thing' do
      expect(custom_type_two).to include 'two'
    end

    it 'does the common thing' do
      expect(custom_type_two).to include 'common'
    end
  end
end
