require 'spec_helper'

def run_NoNumerals
  load(File.expand_path('../../NoNumerals.rb', __FILE__))
end

describe "NoNumerals" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("i need 2 pumpkins and 3 apples\n")
    expect { run_NoNumerals }.to output("i need two pumpkins and three apples\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("3 is a crowd\n")
    expect { run_NoNumerals }.to output("three is a crowd\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("1 is the loneliest number\n")
    expect { run_NoNumerals }.to output("one is the loneliest number\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
