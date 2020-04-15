require 'spec_helper'

def run_HexColorCodeGenerator
  load(File.expand_path('../../HexColorCodeGenerator.rb', __FILE__))
end

describe "HexColorCodeGenerator" do
  it "Sample case" do
    allow(STDIN).to receive(:read).and_return("100\n200\n233\n")
    expect { run_HexColorCodeGenerator }.to output("#64c8e9\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:read).and_return("100\n200\n233\n\n")
    expect { run_HexColorCodeGenerator }.to output("#64c8e9\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:read).and_return("16\n32\n161\n")
    expect { run_HexColorCodeGenerator }.to output("#1020a1\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
