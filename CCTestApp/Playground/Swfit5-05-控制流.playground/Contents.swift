import UIKit


/**
 *  控制流
 *  For-in 循环
 *  While 循环
 *  条件语句
 *  元组
 *  guard
 */

/**
 *  for循环
 */
let fruits = ["oragne", "apple", "banana"]
for subFruitsName in fruits {
    print("子类水果名字：\(subFruitsName)")
}

let animalColors = ["spider": "grey", "ant": "black", "cat": "orange"]
for (animalName, animalColor) in animalColors {
    print("\(animalName) is \(animalColor)")
}


/**
 *  for in 循环
 */
let num = 2
let problems = 7
var result = 1

for _ in 1...problems {
    result *= num
    print(result *= num)
}

let verfiryCode = 60
for time in 0..<verfiryCode {
//    print("倒计时开始：\(time)")
}

// 穿透：through的作用->为循环添加遍历条件，如下例子表达的意思就是：再0-60之间，输出打印满足后一项比前一项大5的所有值
let throughValue = 5
for getValue in stride(from: 4, through: verfiryCode, by: throughValue) {
//    print("穿透后的值：\(getValue)")
}

/**
 *  while循环：条件为真，不停地循环；条件为假，不执行循环体里面的语句
 */
//while condition {
//    statements
//}
while 1>2 {
    print("你说的是错的")
}


/**
 *  条件语句
 */
let behindValue = 10
var forwardValue = 20
if behindValue <= 32 {
    print("真的")
} else {
    print("假的")
}

/**
 *  switch语句
 *  switch语言没有隐式穿透，不用写break
 *  switch区间匹配
 *  switch元祖
 *  switch值绑定
 *  switch复合case
 *  switch可以用where来做额外判断条件case
 *  循环中的for through
 *  guard语句
 */

// switch
let switchValue:Character = "b"
switch switchValue {
    case "A":
        break
    case "b":
        print("value is b")
    case "C", "d":
        print("value is C and d")
    default:
        print("never have value")
}


// 区间匹配
let startValue = 20
let midStr = "qwertyuiop"
let resultValue: String

switch startValue {
    case 0:
        resultValue = "0"
        print(resultValue)
    case 1...5:
        resultValue = "2"
        print(resultValue)
    default:
        resultValue = "✅"
        print(resultValue)
}


// 元组
let coordinate = (-1, 0)
switch coordinate {
    case (0, 0):
        print("坐标系原点")
    case (0, _):
        print("坐标系Y轴")
    case (_, 0):
        print("坐标系X轴")
    case (-1...1, -1...1):
        print("坐标系内")
    default:
        print("坐标系外")
}

// 值绑定
let coordPoint = (1, 3)
switch coordPoint {
    case (let x, 0):
        print("\(x)X轴")
    case (0, let y):
        print("\(y)Y轴")
    case (let x, let y):
        print("\(x)X轴, \(y)Y轴")
}

/** case 分支的模式可以使用 where 语句来判断额外的条件。*/
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

// 复合型case
let letterStr: Character = "a"
switch letterStr {
    case "a", "e", "i", "o", "u":
        print("\(letterStr) is a vowel") // 元音
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
         "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        print("\(letterStr) is a consonant")  // 辅音
    default:
        print("\(letterStr) is not a vowel or a consonant") // 既不是元音也不是辅音
}



/** 控制转移语句
 * continue
 * break
 * fallthrough
 * return
 * throw
 */

let tips = "Gauss is an extremely great mathematician"
var resultStr = ""
for subC in tips {
    switch subC {
    case "k", "e", "b", "i", " ":
        continue
    default:
        resultStr.append(subC)
        print(resultStr)
    }
}


/** Break、continue、forthrough
 * break：满足条件后终止整个循环
 * continue：满足条件后终止当前循环
 * fallthrough（穿透）：不会检查它下一个将会落入执行的 case 中的匹配条件(也就是说执行了两个case，分别是穿透前的和穿透后的)
 */
let numb = 31
var desp = "\(numb) is"
switch numb {
    case 13, 17, 19, 31:
        desp += " a prime number, and also"
        fallthrough
    default:
        desp += " an integer."
}
print(desp)


/** guard
 *  与if区别是，if先执行条件判断，条件为真时执行后面括号里面的代码块，条件为假时执行else里面的代码块
 *  guard语句要求条件必须为真时（取决于表达式的bool值），才执行语句后面的代码，guard语句后面常跟一个else语句，条件不为真的时候执行else语句
 */


func greet(person:[String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("\(name)" + " say hello to " + person["people"]!)
}
greet(person: ["name": "John", "people": "Jams"])


// 检测API可用性
if #available(iOS 14, macOS 11.0.1, *) {
    print("iOS 14 与macOS 11.0.1 的 api")
} else {
    print("其他版本的api")
}



































