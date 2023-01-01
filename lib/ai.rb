# frozen_string_literal: true

require 'pry-byebug'

# AI logic
class AI
  def self.ai_key(pegs, sym)
    key = []
    pegs.times do
      key << sym.sample
    end
    key
  end

  def self.ai_turn; end

  def code_separator; end

  def array_code_combiner(value, pegs); end

  def array_code_assembler(value)
    output_array = []
    num = value.to_s.split('').map(&:to_i)
    num.each_with_index do |el, idx|
      array_positional_builder(el, idx).each do |ell|
        output_array << ell
      end
    end
    output_array
  end

  def array_positional_builder(value, idx)
    # takes value and output a set of arrays with that value at a specified position
    i = 0
    positional_array = []
    while i < 6**3 # need total pegs guessed less one
      num = format('%03d', i.to_s(6)) # formatted with leading zeros
      positional_array << num.split('').insert(idx, value).map(&:to_i)
      i += 1
    end
    positional_array
  end

  def self.checker(key, turn)
    pegs = 0
    positions = 0
    turn.each_with_index do |peg, idx|
      if peg == key[idx]
        positions += 1
      elsif key.include?(peg)
        pegs += 1
      end
    end
    [positions]
  end

  @pegs = [1, 2, 3, 4, 5, 6]
  @combo = @pegs.repeated_permutation(4).to_a
  @guess = [2,2,1,1]
  @key = [3,3,3,1]

  @remaining_combos = []

  @current_remaining_combos = []
  @adding_remaining_combos = []

  p 5 + 5

  def self.matching(key, guess)
    case checker(key, guess)
    when [1]
      @combo.each do |el|
        el.each_with_index do |e, idx|
          if (el[idx] == guess[idx] && el[idx+1] != guess[idx] && el[idx+2] != guess[idx] && el[idx+3] != guess[idx])
            @adding_remaining_combos << el
        

      end
    end
  endgit
end
end
#   p @adding_remaining_combos

 matching(@key,@guess)

# p @adding_remaining_combos.count
p @adding_remaining_combos.uniq!.count

# p @adding_remaining_combos
p checker(@key,@guess)
end