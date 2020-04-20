require 'spec_helper'

def run_Candles
  load(File.expand_path('../../Candles.rb', __FILE__))
end

describe "Candles" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("4\n")
    expect { run_Candles }.to output("45\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("0\n")
    expect { run_Candles }.to output("9\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("1\n")
    expect { run_Candles }.to output("18\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
