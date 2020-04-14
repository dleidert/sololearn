require 'spec_helper'

def run_Popsicles
  load(File.expand_path('../../Popsicles.rb', __FILE__))
end

describe "Popsicles" do
  it "Test case #1" do
    allow($stdin).to receive(:gets).and_return("2", "5")
    expect { run_Popsicles }.to output("eat them yourself\n").to_stdout
  end
  it "Test case #2" do
    allow($stdin).to receive(:gets).and_return("10", "20")
    expect { run_Popsicles }.to output("give away\n").to_stdout
  end

end

# vim: set ts=2 sw=2 ai si et:
