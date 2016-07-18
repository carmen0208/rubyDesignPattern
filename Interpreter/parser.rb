
class Parser
  def initialize(text)
    #scan is check the string, and according to the way to put it to array
    # a = "cruel world"
    # a.scan(/\w+/)        #=> ["cruel", "world"]
    @tokens = text.scan(/\(|\)|[\w\.\*]+/)
    # puts "tokens ----- #{@tokens}"
  end

  def next_token
    @tokens.shift
  end

  def expression
    token = next_token

    if token == nil
      return nil

    elsif token == '('
      result = expression
      # puts "expression ----- #{expression}"
      raise 'Expected )' unless next_token == ')'
      result

    elsif token == 'all'
      return All.new

    elsif token == 'writable'
      return Writable.new

    elsif token == 'bigger'
      return Bigger.new(next_token.to_i)

    elsif token == 'filename'
      return FileName.new(next_token)

    elsif token == 'not'
      return Not.new(expression)

    elsif token == 'and'
      return And.new(expression, expression)

    elsif token == 'or'
      return Or.new(expression, expression)

    else
      raise "Unexpected token: #{token}"
    end
  end
end
