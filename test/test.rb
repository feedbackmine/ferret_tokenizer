require 'ext/ferret_tokenizer'

t = FerretTokenizer.new '@feedbackmine sh*t, I LOVE this!!! so funny:-) :('
while (tok = t.next)
  p tok
end

