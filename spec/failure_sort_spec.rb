require File.dirname(__FILE__) + '/spec_helper'

describe SpecFailureSort do
  it "produces a sorted list of files based upon the spec output from a log directory" do
    SpecFailureSort.sort('spec/fixtures/log').should == [
      "./spec/fake/thrice_spec.rb",
      "./spec/fake/twice_spec.rb",
      "./spec/fake/once_spec.rb"
    ]
  end
end
