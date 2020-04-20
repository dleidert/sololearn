require 'spec_helper'

def run_Balconies
  load(File.expand_path('../../Balconies.rb', __FILE__))
end

describe "Balconies" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("5,5\n", "2,10\n")
    expect { run_Balconies }.to output("Apartment A\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("16,10\n", "17,10\n")
    expect { run_Balconies }.to output("Apartment B\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("5,5\n", "3,10\n")
    expect { run_Balconies }.to output("Apartment B\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
