import UIKit


/*  闭包(可以理解为C中的匿名函数或者OC中的block)
 * 闭包是自包含的函数代码块，可以在代码中被传递和使用。
 * 全局函数是一个有名字但不会捕获任何值的闭包
 * 嵌套函数是一个有名字并可以捕获其封闭函数域内值的闭包
 * 闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
 *
 * Swift闭包简单写法如下：
 * 利用上下文推断参数和返回值类型
 * 隐式返回单表达式闭包，即单表达式闭包可以省略 return 关键字
 * 参数名称缩写
 * 尾随闭包语法
 * 内联闭包语法
 * 逃逸闭包写法
 */


// 排序方法(例子：比较首字母先后顺序，进行排列)
let schools = ["Harvard University",
               "Oxford university",
               "Cambridge University",
               "University of London",
               "California Institute of Technology",
               "Massachusetts Institute of Technology",
               "Stanford University",
               "Princeton University"]

func conditionFunc(_ s1:String, _ s2: String) -> Bool {
    return s1 > s2
}
var reverseSchools = schools.sorted(by: conditionFunc)
for item in reverseSchools {
    print("\(item)")
}

// 测试number的闭包
//let numbersVlaue = [1, 333, 4, 55, 6, 3]
//func minusFuc(_ a: Int, _ b: Int) -> Bool {
//    return a > b
//}
//for subNum in numbersVlaue {
//    print("\(subNum)")
//}
//var reverseNumbs = numbersVlaue.sorted(by: minusFuc(_:_:))

/*  闭包表达式格式：
    {
        (parameters) -> return type in
        statements
    }
 */
reverseSchools = schools.sorted(by: { (param1: String, param2: String) -> Bool in
    return param1 > param2
})

/** 根据上下文推断类型 */
reverseSchools = schools.sorted(by: { param1, param2 in return param1 > param2})

/** 单表达式闭包的隐式返回 */
reverseSchools = schools.sorted(by: {param1, param2 in param1 > param2})

/*  参数名称缩写
 * Swift自动为内联闭包提供了参数名称缩写功能
 * 你可以直接通过 $0，$1，$2 来顺序调用闭包的参数，以此类推。
 */
reverseSchools = schools.sorted(by: {$0 > $1})
//reverseNumbs = numbersVlaue.sorted(by: {$0 > $1})

/** 运算符方法：
 * Swift 的String类型定义了关于大于号 (>) 的字符串实现，其作为一个函数接受两个String类型的参数并返回Bool类型的值。
 * 而这正好与sort(_:)方法的第二个参数需要的函数类型相符合。
 * 因此，您可以简单地传递一个大于号，Swift可以自动推断出您想使用大于号的字符串函数实现
 */
reverseSchools = schools.sorted(by: >)
//reverseNumbs = numbersVlaue.sorted(by: >)


/*  尾随闭包
 * 尾随闭包是一个书写在函数圆括号之后的闭包表达式，函数支持将其作为最后一个参数调用。
 * 在使用尾随闭包时，你不用写出它的参数标签：
 */
func funcClosure(closure: () -> Void){
    print("尾随闭包")
    closure()
}

funcClosure { }
reverseSchools = schools.sorted(){$0 > $1}
reverseSchools = schools.sorted{$0 > $1}



let nubNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [1, 8, 21]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = nubNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

/*  值捕获
 * 闭包可以在其被定义的上下文中捕获常量或变量。
 * 即使定义这些常量和变量的原作用域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值。
 */
func makeIncreementter(forInCrement amount: Int) -> (() -> Int) {
    var runnningTotal = 0
    func incrrementter() -> Int {
        runnningTotal += amount
        return runnningTotal
    }
    return incrrementter
}
let incrementByTen = makeIncreementter(forInCrement: 10)
incrementByTen() // 10
incrementByTen() // 20
incrementByTen() // 30

let incrementBySeven = makeIncreementter(forInCrement: 7)
incrementBySeven()  // 7
incrementByTen()    // 40


/** 闭包是引用类型 */
let alsoo = incrementByTen
alsoo()


/** 逃逸闭包 */
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
































