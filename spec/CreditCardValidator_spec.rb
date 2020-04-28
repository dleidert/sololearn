require 'spec_helper'

def run_CreditCardValidator
  load(File.expand_path('../../CreditCardValidator.rb', __FILE__))
end

describe "CreditCardValidator" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("4091131560563988\n")
    expect { run_CreditCardValidator }.to output("valid\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("4100465547344404\n")
    expect { run_CreditCardValidator }.to output("valid\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("8626430272322848\n")
    expect { run_CreditCardValidator }.to output("not valid\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
