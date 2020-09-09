require "./spec_helper"

describe Imgcat do
  it "cats file" do
    io = IO::Memory.new
    Imgcat.cat_file("crystal.png", io)

    io.to_s.should eq(Helper.iterm_string)
  end

  it "cats" do
    io = IO::Memory.new
    Imgcat.cat(File.open("crystal.png"), io)

    io.to_s.should eq(Helper.iterm_string)
  end
end
