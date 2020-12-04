import UIKit

/**
 * 常量和变量
 * let 表示常量
 * var 表示变量
 * 变量可以连续声明并赋值
 * 变量可以标注类型
 */
let testValue = 10
var currentLoginAttempt = 0
var x = 0.0, y = 1, z = 900

// 类型标注
var welcomeMessage: String
var red, green, blue: Double



/**
 * 整数
 * Int
 * UInt
 * 浮点数 ：
        Float 表示32位浮点数。精度要求不高的话可以使用此类型。
        Double 表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
 * 类型安全 类型推断
 * Swift 是一个类型安全（type safe）的语言。类型安全的语言可以让你清楚地知道代码要处理的值的类型。如果你的代码需要一个 String，你绝对不可能不小心传进去一个 Int。
 * 如果你没有显式指定类型，Swift 会使用类型推断（type inference）来选择合适的类型。有了类型推断，编译器可以在编译代码的时候自动推断出表达式的类型。原理很简单，只要检查你赋的值即可。
 */



/**
 * 整数转换
 * 整数和浮点数的转换必须显式指定类型
 */

let three = 3
let pointOneFourOneFiveNine = 0.198456789
let resultVlaue = Float(pointOneFourOneFiveNine)
var resultVlaueStr = String(format: "%.2f", resultVlaue)
let pi = Double(three) + pointOneFourOneFiveNine
let intPi = Int(pointOneFourOneFiveNine)


let num1 = 123458282
let str = String(format: "%.2f", Float(num1)/1000)
let num2 = Float(str)
print(num2!)


/**
 * 类型别名
 */

typealias AudioSample = UInt16
typealias SingleType = UInt64

var maxAmplitudeFound = AudioSample.min
var singleValue = SingleType.max


/**
 * 布尔值
 */

let yy = true
let nn = false

if yy {
    print("YES")
}else{
    print("NO")
}

let i = 1
if i == 1 {
    print("111")
}
if i == 2 {
    print("success")
} else {
    print("error")
}



/**
 * 元祖
 * 元祖用小括号来表示
 * 元祖内部数据可以是无序的，不同类型的（不要求是相同类型的）
 * 元祖把多个值合成一个复合值
 * 元祖访问元素通过(.下标)来访问
 */

let http404Error = (404,"Not Found")
let (statusCode, statusMessage) = http404Error
print("\(statusCode)")
print("\(statusMessage)")

let (justCode,_) = http404Error
print("\(justCode)")

let (_, lastCode) = http404Error
print("\(lastCode)")

print("\(http404Error.0)")
print("\(http404Error.1)")

let http200 = (sta: 200,des: "OK")
print(http200.des)
print(http200.sta)


/**
 * 可选类型
 * Objective-C中nil表示指向不存在对象的指针，Swift中nil不是指针，它表示一个值，用来表示缺失，任何可选状态都可以被设置成nil，不只是对象类型
 */

var surveyAnswer: String?

let possible = "123"
let converted = Int(possible)

if converted != nil {
    print("conver 存在")
}

if converted != nil {
    print("粗正在 \(converted!)")
}



/**
 * 可选类型绑定（optional binding）
 * 来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在 if 和 while 语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将可选类型中的值赋给一个常量或者变量
 */

if let acc = Int(possible) {
    print("\(acc)-----\(possible)")
}



/**
 * 隐式解析可选类型
 */

let ppp: String? = "kebi"
let fff: String = ppp!

let aaa: String! = "messi"
let iii: String = aaa


/**
 * 错误处理
 */

func canError() throws {
    
}

do {
    try canError()
} catch {
    
}



/**
 * 断言和先决条件
 * 断言和先决条件是在运行时所做的检查。你可以用他们来检查在执行后续代码之前是否一个必要的条件已经被满足了。
 * 如果断言或者先决条件中的布尔条件评估的结果为 true（真），则代码像往常一样继续执行。如果布尔条件评估结果为 false（假），程序的当前状态是无效的，则代码执行结束，应用程序中止。
 */


let age = -3


/**
 * 当一个条件可能为假，但是继续执行代码要求条件必须为真的时候，需要使用先决条件。
 * 例如使用先决条件来检查是否下标越界，或者来检查是否将一个正确的参数传给函数。
 */
//precondition(index > 0, "Index must be greater than zero.")


