require 'spec_helper'

def run_BallparkOrders
  load(File.expand_path('../../BallparkOrders.rb', __FILE__))
end

describe "BallparkOrders" do
  it "Sample case" do
    allow($stdin).to receive(:gets).and_return("Pizza Cheeseburger Water Popcorn\n")
    expect { run_BallparkOrders }.to output("26.75\n").to_stdout
  end
  it "Test case #1" do
    allow($stdin).to receive(:gets).and_return("Water Water Water Water\n")
    expect { run_BallparkOrders }.to output("17.12\n").to_stdout
  end
  it "Test case #2" do
    allow($stdin).to receive(:gets).and_return("Cheeseburger Cheeseburger Coke Water\n")
    expect { run_BallparkOrders }.to output("31.03\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
