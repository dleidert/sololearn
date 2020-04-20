require 'spec_helper'

def run_DuctTape
  load(File.expand_path('../../DuctTape.rb', __FILE__))
end

describe "DuctTape" do
  it "Sample case" do
    allow(STDIN).to receive(:read).and_return("7\n4\n")
    expect { run_DuctTape }.to output("6\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:read).and_return("10\n5\n")
    expect { run_DuctTape }.to output("10\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:read).and_return("6\n3\n")
    expect { run_DuctTape }.to output("4\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
