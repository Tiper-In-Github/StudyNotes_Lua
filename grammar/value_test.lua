-- 好的，我开始了第一篇第二阶段的学习（helloWord为第一阶段），让我看看...
-- 关键词(字)，好吧，所有的编程语言都有类似的东西，我们的变量、函数等命名需要避开这些：
--[[
    and 	    break 	do 	    else
    elseif 	    end 	false 	for
    function 	if 	    in  	local
    nil 	    not 	or 	    repeat
    return     	then 	true 	until
    while    	goto	
]]
-- 似乎并没有很多，上方的代码在vscode调整间隔
-- 变量--全局变量
-- 在默认情况下，变量总是认为是全局的。好家伙，这和其他我已知的编程语言完全相反，违背了我的常识
-- 菜鸟教程：全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。
-- 我试一下
-- print(test_a) -- 这里由于vscode语法检查不通过，需要放到lua.exe尝试
-- 上面的代码实际运行不会报错，但这绝不是个好习惯

test_a=3.1415927    -- 关于这里，在vccode的检查下也是会警告的，跳过即可，vscode会要求使用local
local test_b=1024
print(test_a)       -- 3.1415927
print(test_b)       -- 1024
-- 从上面的运行结果来看，Lua较为宽松的语法限制，这就需要开发者自行遵守规范了


-- 数据类型
-- 这里直接复制修改了菜鸟教程的内容(https://www.runoob.com/lua/lua-data-types.html)
-- Lua 是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回。

-- Lua 中有 8 个基本类型分别为：nil、boolean、number、string、userdata、function、thread 和 table。
-- 数据类型	描述
-- nil	    这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。（注意：它实际上是个字符串类型的数据！！！）
-- boolean	包含两个值：false和true。
-- number	表示双精度类型的实浮点数
-- string	字符串由一对双引号或单引号来表示 （pthon3开始也对单双引号一视同仁，平时用于区分字符串内的引号，通常可互相替代）
-- function	由 C 或 Lua 编写的函数          (啊这，所以说lua里面可以直接写C吗，那c语言所需的库怎么办，，，后面看有没有说)
-- userdata	表示任意存储在变量中的C数据结构
-- thread	表示执行的独立线路，用于执行协同程序   （这里不是很理解，数据类型为什么有线程，是说这个类型的数据指向具体的线程而非内存地址吗？）
-- table	Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。
--          在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。

-- 都试一遍吧
-- 额。。。怎么指定数据类型，，好像不用声明，
-- 最后可以通过type来测试数据类型，这个内置方法和python如出一辙
print(type(nil))
print(type(true))
print(type(false))
-- peint(type(i,,,等会true))。。。。没有整数？？
print(type(20))     -- number
-- 好吧，一时间不太适应双精度这个东西。
--  先提交一下

-- 截至这里，lua目前的语法还是很接近python等高级语言的，弱数据类型
