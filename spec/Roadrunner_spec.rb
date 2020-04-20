require 'spec_helper'

def run_Roadrunner
  load(File.expand_path('../../Roadrunner.rb', __FILE__))
end

describe "Roadrunner" do
  it "Sample case" do
    allow(STDIN).to receive(:read).and_return("10\n5\n20\n")
    expect { run_Roadrunner }.to output("Meep Meep\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:read).and_return("100\n5\n20\n")
    expect { run_Roadrunner }.to output("Yum\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:read).and_return("5\n5\n10\n")
    expect { run_Roadrunner }.to output("Meep Meep\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
