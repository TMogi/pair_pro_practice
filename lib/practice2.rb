# 演習2

# スタック実現のためのクラス
class SimpleStack
  def initialize
    # スタックを実現するための配列
    # SimpleStack内ならどこでも利用可能
    @stack_arr = []
  end

  # 課題2-1
  def push(number)
    # 実装
  end

  # 課題2-2
  def pop
    # 実装
  end

  # rspec用の関数(編集しないこと)
  def result_array
    # @stack_arrをそのまま返却
    @stack_arr
  end
end

# 課題2-3
def push_string(number_string)
  # SimpleStackを利用できるようにする準備
  stack = SimpleStack.new

  # 実装
  
  # 戻り値は固定(stackの配列)
  stack.result_array
end

# 課題2-4, 2-5, 2-6
def calc_string(formula_string)
  # SimpleStackを利用できるようにする準備
  stack = SimpleStack.new

  # 実装
  
  # 戻り値は固定(stackの配列)
  stack.result_array
end
