# clock_spec.rb
require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'clock'

Minitest::Reporters.use!

# Describe blocks group tests
describe "clock" do 
  # It blocks are tests
  it "returns a string" do
    #Arrange
    hours = 8
    minutes = 14
    seconds = 3

    #Act
    result = clock(hours, minutes, seconds)

    #Assert
    expect(result).must_be_instance_of String
  end
  it "pads number with leading zeros" do
    #Arrange
    hours = 8
    minutes = 4
    seconds = 3

    #Act
    result = clock(hours, minutes, seconds)

    #Assert
    expect(result).must_equal "08:04:03"
  end
  it "handles 2-digit numbers" do
    #Arrange
    hours = 10
    minutes = 22
    seconds = 35

    #Act
    result = clock(hours, minutes, seconds)

    #Assert
    expect(result).must_equal "10:22:35"
  end
end