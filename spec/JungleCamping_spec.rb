require 'spec_helper'

def run_JungleCamping
  load(File.expand_path('../../JungleCamping.rb', __FILE__))
end

describe "JungleCamping" do
  it "Sample case" do
    allow($stdin).to receive(:gets).and_return("Rawr Chirp Ssss\n")
    expect { run_JungleCamping }.to output("Tiger Bird Snake\n").to_stdout
  end
  it "Test case #1" do
    allow($stdin).to receive(:gets).and_return("Grr Grr\n")
    expect { run_JungleCamping }.to output("Lion Lion\n").to_stdout
  end
  it "Test case #2" do
    allow($stdin).to receive(:gets).and_return("Ssss\n")
    expect { run_JungleCamping }.to output("Snake\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
