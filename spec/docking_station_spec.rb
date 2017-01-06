require 'docking_station'
require 'bike'

bike = Bike.new

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to(:release_bike)
    expect {subject.release_bike}.to raise_error("No bikes available!")
  end

  it "checks if bike exists and is working" do
    #bike = subject.release_bike
    expect(bike).to be_working
  end

  it "respond to #dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "docks a bike a" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
