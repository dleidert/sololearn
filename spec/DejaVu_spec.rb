require 'spec_helper'

def run_DejaVu
  load(File.expand_path('../../DejaVu.rb', __FILE__))
end

describe "DejaVu" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("aaaaaaaghhhhjkll\n")
    expect { run_DejaVu }.to output("Deja Vu\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("asd\n")
    expect { run_DejaVu }.to output("Unique\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("sammich\n")
    expect { run_DejaVu }.to output("Deja Vu\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
