require File.join(File.dirname(__FILE__), %w[spec_helper])

describe Harakiri do
  it "should shorten with tinyurl" do
    Harakiri.encode("www.lucasallan.com").should == "http://tinyurl.com/26pwxbx"
  end
end

