require 'spec_helper'

def run_Argentina
  load(File.expand_path('../../Argentina.rb', __FILE__))
end

describe "Argentina" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("4000\n", "100\n")
    expect { run_Argentina }.to output("Pesos\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("400\n", "10\n")
    expect { run_Argentina }.to output("Pesos\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("10000\n", "10\n")
    expect { run_Argentina }.to output("Dollars\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
