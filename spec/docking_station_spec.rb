require 'docking_station'
require 'bike'

describe DockingStation do
  bike = Bike.new
  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }

    it 'raises an error when no bikes available' do
      expect {subject.release_bike}.to raise_error("No bikes available!")
    end
  end

  describe "#working" do
    it "checks if bike exists and is working" do
      expect(bike).to be_working
    end
  end

  describe "#dock" do
    it "respond to #dock" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "docks the given bike" do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it "raises an error if one bike already docked" do
      expect {subject.dock(bike)}.to raise_error("Capacity full!") if subject.dock(bike)
    end
  end
end
