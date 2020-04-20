require 'spec_helper'

def run_EasterEggs
  load(File.expand_path('../../EasterEggs.rb', __FILE__))
end

describe "EasterEggs" do
  it "Sample case" do
    allow(STDIN).to receive(:read).and_return("100\n40\n60\n")
    expect { run_EasterEggs }.to output("Candy Time\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:read).and_return("20\n5\n8\n")
    expect { run_EasterEggs }.to output("Keep Hunting\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:read).and_return("30\n15\n15\n")
    expect { run_EasterEggs }.to output("Candy Time\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
