require 'spec_helper'

def run_FruitBowl
  load(File.expand_path('../../FruitBowl.rb', __FILE__))
end

describe "FruitBowl" do
  it "Sample case" do
    allow($stdin).to receive(:gets).and_return("26\n")
    expect { run_FruitBowl }.to output("4\n").to_stdout
  end
  it "Test case #1" do
    allow($stdin).to receive(:gets).and_return("4\n")
    expect { run_FruitBowl }.to output("0\n").to_stdout
  end
  it "Test case #2" do
    allow($stdin).to receive(:gets).and_return("12\n")
    expect { run_FruitBowl }.to output("2\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
