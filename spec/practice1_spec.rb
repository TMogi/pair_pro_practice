require "spec_helper"
require_relative "../lib/practice1.rb"

RSpec.describe "課題1" do
  # 1-1
  context "fizz関数" do
    it "引数が3の倍数のとき、Fizzを返却" do
      fizz_check1 = fizz(6)
      expect(fizz_check1).to eq("Fizz")  
    end

    it "引数が3の倍数でないとき、引数を文字列にして返却" do
      fizz_check2 = fizz(100)
      expect(fizz_check2).to eq(100.to_s)
    end
  end

  # 1-2
  context "buzz関数" do
    it "引数が5の倍数のとき、Buzzを返却" do
      buzz_check1 = fizz(20)
      expect(buzz_check1).to eq("Buzz")  
    end

    it "引数が5の倍数でないとき、引数を文字列にして返却" do
      buzz_check2 = fizz(7)
      expect(buzz_check2).to eq(7.to_s)
    end
  end

  # 1-3
  context "fizz_buzz関数" do
    it "引数が3の倍数のとき、Fizzを返却" do
      fizz_buzz_check1 = fizz_buzz(33)
      expect(fizz_buzz_check1).to eq("Fizz")
    end

    it "引数が5の倍数のとき、Buzzを返却" do
      fizz_buzz_check1 = fizz_buzz(20)
      expect(fizz_buzz_check1).to eq("Buzz")
    end

    it "引数が3と5の倍数のとき、FizzBuzzを返却" do
      fizz_buzz_check1 = fizz_buzz(60)
      expect(fizz_buzz_check1).to eq("FizzBuzz")
    end

    it "引数が3の倍数でも5の倍数でもないとき、引数を文字列にして返却" do
      fizz_buzz_check1 = fizz_buzz(4)
      expect(fizz_buzz_check1).to eq(4.to_s)
    end
  end

  # 1-4
  context "fizz_buzz_array関数" do
    it "引数に配列を受け取って、適切にFizzBuzzに変換して返す" do
      input_arr = [ 1, 7, 3, 33, 5, 50, 15, 60 ]
      output_arr = [ "1", "7", "Fizz", "Fizz", "Buzz", "Buzz", "FizzBuzz", "FizzBuzz"]

      fizz_buzz_arr = fizz_buzz_array(input_arr)

      expect(fizz_buzz_arr).to match_array(output_arr)
    end
  end
end
