require File.join(File.dirname(__FILE__), %w[spec_helper])

describe Harakiri do

  it "shortens url using tinyurl" do
    Harakiri.tiny_encode("www.lucasallan.com").should == "http://tinyurl.com/26pwxbx"
  end

  it "shortens with googl" do
   Harakiri.googl_encode("www.lucasallan.com").should == "http://goo.gl/c7R93"
  end
end

