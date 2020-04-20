require 'spec_helper'

def run_Mathematics
  load(File.expand_path('../../Mathematics.rb', __FILE__))
end

describe "Mathematics" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("15\n", "(2+100) (5*3) (14+1)\n")
    expect { run_Mathematics }.to output("index 1\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("20\n", "(2*10) (17+20) (4-17)\n")
    expect { run_Mathematics }.to output("index 0\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("17\n", "(5*20) (88+22) (6-2)\n")
    expect { run_Mathematics }.to output("none\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
