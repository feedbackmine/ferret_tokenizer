require 'ext/tokenizer'

t = Tokenizer.new '@feedbackmine sh*t, I LOVE this!!! so funny:-)'
while (tok = t.next)
  p tok
end

