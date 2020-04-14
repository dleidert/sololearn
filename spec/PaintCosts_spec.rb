require 'spec_helper'

def run_PaintCosts
  load(File.expand_path('../../PaintCosts.rb', __FILE__))
end

describe "PaintCosts" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("10\n")
    expect { run_PaintCosts }.to output("99\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("2\n")
    expect { run_PaintCosts }.to output("55\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("20\n")
    expect { run_PaintCosts }.to output("154\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
