#!/usr/bin/env ruby

# unless 语句是 if 语句的否定形式。
# unless : 如果不

lang = 'de'

unless lang == 'de'
  dog = 'dog'
else
  dog = 'Hund'
end

puts dog

if lang == 'de'
  dog = 'Hund'
else
  dog = 'dog'
end

# statement modifier for unless
# 优雅的使用 unless 作为语句修改器
num = 10
puts num += 1 unless num > 88
puts num