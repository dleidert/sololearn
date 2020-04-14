require 'spec_helper'

def run_SkeeBall
  load(File.expand_path('../../SkeeBall.rb', __FILE__))
end

describe "SkeeBall" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("500\n", "40\n")
    expect { run_SkeeBall }.to output("Buy it!\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("100\n", "50\n")
    expect { run_SkeeBall }.to output("Try again\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("10000\n", "600\n")
    expect { run_SkeeBall }.to output("Buy it!\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
