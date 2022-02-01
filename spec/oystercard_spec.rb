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
      subject.top_up(Oystercard::MAX_LIMIT)
      expect { subject.top_up(1) }.to raise_error "Maximum Limit; #{Oystercard::MAX_LIMIT} exceeded"
    end

  end

  describe '#deduct' do
   
   it 'will deduct a value from the balance when called' do
    expect { subject.deduct(1) }.to change{ subject.balance }.by(-1)
   end

  end

  describe "#in_journey?" do
    it "gives us an update on journey status" do
      #expect(subject.in_journey?).to eq( false )
      expect(subject).not_to be_in_journey
    end
  end

  describe "#touch in" do
    it "tests the touch_in method, via checking the journey status" do
      subject.touch_in
      #expect(subject.in_journey?).to eq( true )
      expect(subject).to be_in_journey
    end
  end

  describe "#touch out" do
    it "tests the touch_out method, via checking the journey status" do
     subject.touch_in
     subject.touch_out
     #expect(subject.in_journey?).to eq( false )
     expect(subject).not_to be_in_journey
    end
  end

end
