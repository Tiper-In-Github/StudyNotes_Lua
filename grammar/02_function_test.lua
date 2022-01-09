-- 函数（function）
-- 必不可少
-- 在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里
-- 这一点和Python的面向对象有点相似，可以存储其实理论上就可以当半个对象来使用了，就是不知道能不能包含属性
function fn_test_a(n) -- 关键字 函数名(参数)
    if n >= 5 then    -- then 是用于在里面区分
        print("小于等于5")
    else
        print("芜湖··")  -- 我没有写返回,直接在函数输出结果，也可以return返回给调用处
    end               -- 都使用end结尾
end                   -- 都使用end结尾

-- 函数定义好了，我们调用一下看
fn_test_a(5)

-- 再来一个返回结果的
function fn_test_b(int)
    return int + 10   -- 直接返回+10的结果给调用函数或调用处
end

print(fn_test_b(3))
