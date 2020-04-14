require 'spec_helper'

def run_NewDriversLicense
  load(File.expand_path('../../NewDriversLicense.rb', __FILE__))
end

describe "NewDriversLicense" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("Eric\n", "2\n", "Adam Caroline Rebecca Frank")
    expect { run_NewDriversLicense }.to output("40\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("Zebediah\n", "1\n", "Bob Jim Becky Pat\n")
    expect { run_NewDriversLicense }.to output("100\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("Aaron\n", "1\n", "Jane Max Olivia Sam\n")
    expect { run_NewDriversLicense }.to output("20\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
