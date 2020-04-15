require 'spec_helper'

def run_PasswordValidation
  load(File.expand_path('../../PasswordValidation.rb', __FILE__))
end

describe "PasswordValidation" do
  it "Sample case" do
    allow(STDIN).to receive(:gets).and_return("Hello@$World19\n")
    expect { run_PasswordValidation }.to output("Strong\n").to_stdout
  end
  it "Test case #1" do
    allow(STDIN).to receive(:gets).and_return("PassWord19$#\n")
    expect { run_PasswordValidation }.to output("Strong\n").to_stdout
  end
  it "Test case #2" do
    allow(STDIN).to receive(:gets).and_return("LeTme!n\n")
    expect { run_PasswordValidation }.to output("Weak\n").to_stdout
  end
end

# vim: set ts=2 sw=2 ai si et:
