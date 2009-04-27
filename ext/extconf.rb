require 'mkmf'
$CFLAGS = "#{ENV['CFLAGS']} -Wall -O3 " 
create_makefile('ferret_tokenizer')

