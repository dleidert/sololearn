require 'spec_helper'

def run_SnapCrackleAndPop
  load(File.expand_path('../../SnapCrackleAndPop.rb', __FILE__))
end

describe "SnapCrackleAndPop" do
  it "Sample case" do
    allow(STDIN).to receive(:read).and_return("18\n5\n100\n25\n40\n24\n")
    expect { run_SnapCrackleAndPop }.to output("Pop Snap Crackle Snap Crackle Pop\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:read).and_return("1\n2\n3\n4\n5\n6\n")
    expect { run_SnapCrackleAndPop }.to output("Snap Crackle Pop Crackle Snap Pop\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:read).and_return("100\n200\n300\n150\n250\n350\n")
    expect { run_SnapCrackleAndPop }.to output("Crackle Crackle Pop Pop Crackle Crackle\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
