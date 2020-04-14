require 'spec_helper'

def run_TaxFree
  load(File.expand_path('../../TaxFree.rb', __FILE__))
end

describe "TaxFree" do
  it "Sample case" do
    allow($stdin).to receive(:gets).and_return("5,18,25,34\n")
    expect { run_TaxFree }.to output("83.61\n").to_stdout
  end
  it "Test case #1" do
    allow($stdin).to receive(:gets).and_return("2,10,80,99\n")
    expect { run_TaxFree }.to output("191.84\n").to_stdout
  end
  it "Test case #2" do
    allow($stdin).to receive(:gets).and_return("14,3,99,8\n")
    expect { run_TaxFree }.to output("125.75\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
