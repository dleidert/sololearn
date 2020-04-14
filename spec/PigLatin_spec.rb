require 'spec_helper'

def run_PigLatin
  load(File.expand_path('../../PigLatin.rb', __FILE__))
end

describe "PigLatin" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("nevermind youve got them\n")
    expect { run_PigLatin }.to output("evermindnay ouveyay otgay hemtay\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("go over there\n")
    expect { run_PigLatin }.to output("ogay veroay heretay\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("sally knows best\n")
    expect { run_PigLatin }.to output("allysay nowskay estbay\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
