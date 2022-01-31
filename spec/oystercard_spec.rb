require_relative "../lib/oyster_card.rb"

describe Oystercard do
 
  describe '#top_up' do

    it 'oystercard responds to balance method' do
      expect(subject).to respond_to(:balance)
    end

  end  

  describe '#top_up' do

    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'changes the amount by 1' do
      expect { subject.top_up(1) }.to change{ subject.balance }.by(1)
    end

    it 'will generate an error message if Max Amount is exceeded' do
      expect { subject.top_up(91) }.to raise_error
    end

  end

end