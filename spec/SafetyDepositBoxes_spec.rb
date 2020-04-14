require 'spec_helper'

def run_SafetyDepositBoxes
  load(File.expand_path('../../SafetyDepositBoxes.rb', __FILE__))
end

describe "SafetyDepositBoxes" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("gold,diamonds,documents,Declaration of Independence,keys\n", "Declaration of Independence\n")
    expect { run_SafetyDepositBoxes }.to output("20\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("gold,silver,jewels,cheese\n", "gold\n")
    expect { run_SafetyDepositBoxes }.to output("5\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("gold,silver,jewels,cheese\n", "silver\n")
    expect { run_SafetyDepositBoxes }.to output("10\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
