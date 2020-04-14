require 'spec_helper'

def run_ItsASign
  load(File.expand_path('../../ItsASign.rb', __FILE__))
end

describe "ItsASign" do
  it "Sample case" do
    allow(STDIN).to receive(:read).and_return("CAT\nMONDAYS\nRACECAR\nTACOS\n")
    expect { run_ItsASign }.to output("Open\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:read).and_return("ABBA\nFANCY\nNEVERMIND\n")
    expect { run_ItsASign }.to output("Open\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:read).and_return("LIVE\nLAUGH\nLOVE\n")
    expect { run_ItsASign }.to output("Trash\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
