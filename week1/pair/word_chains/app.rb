require 'ruby-dictionary'
require_relative ("lib/word_chain.rb")


dict = Dictionary.from_file("/usr/share/dict/words")
chainer = WordChain.new(dict)

chainer.print_chain("cat", "dog")

puts "\n-----------\n"

chainer.print_chain("fish", "duct")

