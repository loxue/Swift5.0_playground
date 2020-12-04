
import UIKit



/*
 * 一元运算符对单一操作对象操作（如 -a）。一元运算符分前置运算符和后置运算符，前置运算符需紧跟在操作对象之前（如 !b），后置运算符需紧跟在操作对象之后（如 c!）。
 * 二元运算符操作两个操作对象（如 2 + 3），是中置的，因为它们出现在两个操作对象之间。
 * 三元运算符操作三个操作对象，和 C 语言一样，Swift 只有一个三元运算符，就是三目运算符（a ? b : c）。
 */


/**
 * 赋值运算符
 */
let b = 10
var a = 5
a = b

let (x,y) = (1,2)

/**
 * Swift与C和OC不同，赋值操作并不返回任何值
 */
//所以下面语句是无效的：
//if x = y {
//
//}

/**
 * 算术运算符
 */
1 + 2
"heeee" + "asdas"

print(1+2)
print("hello" + " " + "world!")

/**
 * 求余运算符
 */
10 % 4
-7 % 4
print(String(10%4) + "13")

/**
 * 一元负号运算符
 */
let six = 6
let minusSix = -six
print(-six + 6)

/**
 * 组合赋值运算符
 */
var e = 1
e += 2

let arrayA = [1, 3, 33, 224, 999, 2000]
for a in arrayA {
    var finalValue = 1
    finalValue += a
    print(finalValue)
}



/**
 * 比较运算符
 * 每个比较运算都返回了一个标识表达式是否成立的布尔值
 * bool值的元祖不能比较,只能比较7个以内元素
 */

1 == 1   // true, 因为 1 等于 1
2 != 1   // true, 因为 2 不等于 1
2 > 1    // true, 因为 2 大于 1
1 < 2    // true, 因为 1 小于2
1 >= 1   // true, 因为 1 大于等于 1
2 <= 1   // false, 因为 2 并不小于等于 1

(1,"a") < (2,"a")


/**
 * 三元运算符
 */
let oneParam = 20
let tempBool = false
var rowheight = oneParam + (tempBool ? 50 : 30)


/**
 * 空合运算符
 * 空合运算符（a ?? b）将对可选类型 a 进行空判断，
 * 如果 a 包含一个值就进行解包，否则就返回一个默认值 b。表达式 a 必须是 Optional 类型。
 * 默认值 b 的类型必须要和 a 存储值的类型保持一致。
 */
let testV = 23
var test11:Int?
var test111 = test11 ?? testV   // 这段代码意思就是如果test11为nil就返回testV否则返回test11


/**
 * 区间运算符
 * 闭区间运算符（a...b）定义一个包含从 a 到 b（包括 a 和 b）的所有值的区间。a 的值不能超过 b。
 */
for index in 1...5 {
    print("\(index)")
}
/*
// 错误写法如下：（原因：a...b 的用法中a的值不能小于b，否则报错）
for subObject in 40...1 {
    print("\(subObject)")
}
 */


/**
 * 半区间运算符
 * 半开区间运算符（a..<b）定义一个从 a 到 b 但不包括 b 的区间。
 * 之所以称为半开区间，是因为该区间包含第一个值而不包括最后的值。
 */
let names = ["0", "1", "2", "3", "4", "5", "6", "7"]

let count = names.count
for i in 0..<count {
    print("\(names[i])")
    print(i)
}


/**
 * 单侧区间
 */
print("///////////////////////////////////////////////////")
for name in names[1...] {
    print(name)
}

for name in names[...3] {
    print(name)
}

for name in names[..<3] {
    print(name)
}


/**
 * 逻辑运算符
 * 1.逻辑非
 * 2.逻辑与
 * 3.逻辑或
 */

// 1
let boolValue = false
if !boolValue {
    print("取反")
    print(!boolValue)
}

// 2
let boolValue1 = true
let boolValue2 = false
if boolValue1 && boolValue2 {
    print("全真")
} else {
    print("假")
}

// 3
if boolValue1 || boolValue2 {
    print("有一真结果为真")
} else {
    print("全假结果为假")
}

















