require 'docking_station'
#require 'bike'

describe DockingStation do
  it "releases a bike" do
    expect(subject).to respond_to(:release_bike)
    bike = subject.release_bike
    expect(bike).not_to eq nil
    expect(bike).to be_working
  end
end
