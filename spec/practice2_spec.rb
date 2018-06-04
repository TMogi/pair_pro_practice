require "spec_helper"
require_relative "../lib/practice2.rb"

RSpec.describe "課題2" do
  # 2-1
  context "push関数" do
    it "引数を配列の末尾に追加する" do
      stack = SimpleStack.new

      stack.push(1)
      stack.push(2)
      stack.push(3)

      results = stack.result_array
      expect(results).to match_array([1, 2, 3])
    end
  end

  # 2-2
  context "pop関数" do
    it "末尾から引数を取り出す" do
      stack = SimpleStack.new

      stack.push(1)
      stack.push(2)
      stack.push(3)

      expect(stack.pop).to eq(3)
      expect(stack.pop).to eq(2)
      results = stack.result_array
      expect(results).to match_array([1])
    end
  end

  # 2-3
  context "push_string関数" do
    it "末尾から引数を取り出す" do
      input_string = "1 2 3 10 200 3000"
      output_array = [1, 2, 3, 10, 200, 3000]

      result_array = push_string(input_string)
      expect(result_array).to match_array(output_array)
    end
  end

  # 2-4
  context "calc_string関数1" do
    it "文字列から計算をする(加算)" do
      # 1 + 3
      input_string = "1 2 +"
      output_array = [3]

      result_array = calc_string(input_string)
      expect(result_array).to match_array(output_array)
    end
  end

  # 2-5
  context "calc_string関数2" do
    it "文字列から計算をする(減算)" do
      # 10 - 7
      input_string = "10 7 -"
      output_array = [3]

      result_array = calc_string(input_string)
      expect(result_array).to match_array(output_array)
    end
  end

  # 2-6
  context "calc_string関数3" do
    it "文字列から計算をする(乗算)" do
      # 11 * 3
      input_string = "11 3 *"
      output_array = [33]

      result_array = calc_string(input_string)
      expect(result_array).to match_array(output_array)
    end
  end

  # 2-7
  context "calc_string関数4" do
    it "文字列から計算をする(除算)" do
      # 12 * 3
      input_string = "12 3 /"
      output_array = [4]

      result_array = calc_string(input_string)
      expect(result_array).to match_array(output_array)
    end
  end

  # 2-8
  context "calc_string関数5" do
    it "文字列から計算をする(複雑な式の場合)" do
      test_arrays = [
        ["1 2 3 + +  100 *", [600]],         # (1 + 2 + 3) * 100
        ["1 2 3 + + 1 2 3 + + /", [1]],      # (1 + 2 + 3) / (1 + 2 + 3)
        ["10 3 * 12 2 * 84 4 / - +", [33]],  # 10 * 3 + 12 * 2 - 84 / 4
      ]

      test_arrays.each do |test_case|
        input_string = test_case[0]
        output_array = test_case[1]

        result_array = calc_string(input_string)
        expect(result_array).to match_array(output_array)
      end
    end
  end
end
