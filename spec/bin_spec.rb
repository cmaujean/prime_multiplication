require 'spec_helper'

describe 'Command Line Program' do
  before :each do
    @binfile = File.expand_path(File.join("bin", "prime_table.rb"))
  end

  it "exists" do
    File.exists?(@binfile).should be_true
  end

  context 'When I run the program with no arguments, it' do
    before :each do
      @raw = `ruby #{@binfile}`
      @output = TextTable.parse(@raw)
    end

    it "returns an exit code of 0" do
      $?.exitstatus.should == 0
    end

    it "prints the first 10 primes in the first row of the table" do
      @output.row(0).column(0).should == "2"
      @output.row(0).column(7).should == "19"
    end

    it "prints the first 10 primes in the first column" do
      @output.row(1).column(0).should == "2"
      @output.row(2).column(0).should == "3"
      @output.row(3).column(0).should == "5"
      # ... etc
    end

    it "prints the the first 9 products in the second column" do
      @output.row(1).column(1).should == "4"
      @output.row(1).column(7).should == "34"
    end
  end

  context 'When I run the program with an argument of "5", it' do
    before :each do
      @raw = `ruby #{@binfile} 5`
      @output = TextTable.parse(@raw)
    end

    it "returns an exit code of 0" do
      $?.exitstatus.should == 0
    end

    it "prints the first 5 primes in the first column" do
      @output.row(1).column(0).should == "2"
      @output.row(4).column(0).should == "7"
      @output.row(5).column(3).should == "55"
      @output.row(6).should be_nil
    end
  end
end