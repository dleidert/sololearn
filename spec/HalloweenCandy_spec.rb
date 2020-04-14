require 'spec_helper'

def run_HalloweenCandy
  load(File.expand_path('../../HalloweenCandy.rb', __FILE__))
end

describe "HalloweenCandy" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("4")
    expect { run_HalloweenCandy }.to output("50\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("3")
    expect { run_HalloweenCandy }.to output("67\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("10")
    expect { run_HalloweenCandy }.to output("20\n").to_stdout
  end
  it "does not allow input <3" do
    allow(STDIN).to receive(:gets).and_return("2")
    expect { run_HalloweenCandy }.to raise_error(ArgumentError)
  end
end

# vim: set ts=2 sw=2 ai si et:
