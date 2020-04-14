require 'spec_helper'

def run_CheerCreator
  load(File.expand_path('../../CheerCreator.rb', __FILE__))
end

describe "CheerCreator" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("3\n")
    expect { run_CheerCreator }.to output("Ra!Ra!Ra!\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("5\n")
    expect { run_CheerCreator }.to output("Ra!Ra!Ra!Ra!Ra!\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("0\n")
    expect { run_CheerCreator }.to output("shh\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
