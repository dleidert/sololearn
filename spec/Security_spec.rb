require 'spec_helper'

def run_Security
  load(File.expand_path('../../Security.rb', __FILE__))
end

describe "Security" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("xxxxxGxx$xxxT\n")
    expect { run_Security }.to output("ALARM\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("xxxGGxx$xxGxxT\n")
    expect { run_Security }.to output("quiet\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("T$xxxxxxxG\n")
    expect { run_Security }.to output("ALARM\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
