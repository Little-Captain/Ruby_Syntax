#!/usr/bin/env ruby

# Ruby中的块不仅仅是一个代码块或一组语句。 
# Ruby块总是与方法一起调用。 实际上，块是闭包，有时称为无名函数。
# 他们像其他方法中的方法一样工作，与外部方法共享变量。 
# 在Ruby中，闭包或块由大括号（{}）或do / end包装，
# 并依赖于相关的方法（内部使用了 yield 语句执行与方法关联的 Block. 如 each）来完成其工作。

pacific = [ "Washington", "Oregon", "California" ]
# Array each 实例方法
# each { |item| block } → ary : 后接闭包, 返回原始数组
# each → Enumerator : 后不接闭包, 返回 Enumerator
# 方式一
pacific.each { |e| puts e }
# 方式二: 与方式一等价
pacific.each do |element|
  puts element
end
# 也就是 { |e| statement } <=> do |e| statement end

j = 7
(1..4).to_a.each { |j|
  puts j
}

# yield 语句执行与方法关联的 Block。
# 方法关联的 Block 执行后, 立即执行 yield 的下一条语句

def gimme
  if block_given?
    yield
    yield
  else
    puts "I'm blockless!"
  end
end

gimme
gimme { print "Say hi to the people.\n" }