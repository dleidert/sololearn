require 'spec_helper'

def run_Skel
  load(File.expand_path('../../Skel.rb', __FILE__))
end

describe "Skel" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("\n")
    expect { run_Skel }.to output("\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("\n")
    expect { run_Skel }.to output("\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("\n")
    expect { run_Skel }.to output("\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
