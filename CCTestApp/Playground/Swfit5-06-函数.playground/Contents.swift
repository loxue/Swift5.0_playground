import UIKit

/** 函数的定义和调用
 *  格式： func 函数名(参数名1：参数类型， 参数名2：参数类型，。。。) -> 返回值类型{}
 *  例如： func minMax(min: Int, max: Int) -> Int{}
 */

// 定义函数
func phone(people: String) ->String {
    return "phone to \(people)"
}
phone(people: "Jams")

func minMax(min: Int, max: Int) -> Int{
    return min + max
}
minMax(min: 100, max: 150)


/** 函数的参数与返回值
 *  无参数函数
 *  多参数函数
 *  无返回值函数
 *  多返回值函数：（1、返回值为元祖类型【a：指定参数
 *                                b：忽略参数
 *                                c：默认参数
 *                                d：可变参数
 *                                e：输入输出参数】
 *               2、返回值为函数类型）
 */

// 无参数函数
func note() ->String {
    return "Swift 是世界上最好的语言"
}
note()

// 多参数函数
func studentsAge(classA:String, classB: String) -> String {
    return "\(classA) is best class" + "\(classB) is good class"
}
studentsAge(classA: "三年三班", classB: "三年二班")

// 无返回值函数
func sum(param1: Int, param2: Int) {
    if param1 == 4 {
        print("这个值不对")
    } else {
        let totalSum = param1 + param2
        print("totalSum is \(totalSum) ✅")
    }
}
sum(param1: 40, param2: 5)


// 多返回值函数
func summ(sumArr: [Int]) -> (min: Int, max: Int) {
    var minValue = 0
    var maxValue = 0

    for min in sumArr {
        if minValue > min {
            minValue = min
        } else {
            maxValue = min
        }
    }
    return (minValue, maxValue)
}
summ(sumArr: [2, 93, 84, 192, 0, 2111])


// 可选元组返回类型
/* 可选元组类型如 (Int, Int)? 与元组包含可选类型如 (Int?, Int?) 是不同的。可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。
 * 函数参数标签和参数名称
   每个函数参数都有一个参数标签（argument label）以及一个参数名称（parameter name）。
 * 参数标签在调用函数的时候使用；调用的时候需要将函数的参数标签写在对应的参数前面。
 * 参数名称在函数的实现中使用。默认情况下，函数参数使用参数名称来作为它们的参数标签。
*/
func exampleFunc(firstParam: Int, secondParam: Int) {
    // firstParam 和 secondParam 代表参数中的第一个和第二个参数值
}
exampleFunc(firstParam: 1, secondParam: 2)


// 指定参数标签
func exampleFunc1(argumentChip paramem: Int) { }
exampleFunc1(argumentChip: 1)


// 忽略参数标签
func exampleFunc2(_ firstParam: Int, secontParam: Int) { }
exampleFunc2(2, secontParam: 3)


// 默认参数值
func exampleFunc3(argm1: Int, argm2:Int = 12){
    print(argm1)
}
exampleFunc3(argm1: 1, argm2: 3)


// 可变参数
func exampleFunc4(_ numbers: Double...) ->Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
exampleFunc4(1.9, 3.3, 5.5, 7.2, 9.1)   // 27/5=5.4


// 输入输出参数
func swapTwoValues(_ a: inout Int, _ b: inout Int) {
    a = 10
}
var valueA = 12
var valueB = 133
swapTwoValues(&valueA, &valueB)
print("交换前的值：\(valueA), 交换后的值：\(valueB)")


// 函数类型
func sumTwoValues(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func mutiTwoValues(_ a: Int, _ b: Int) -> Int {
    return a * b
}
sumTwoValues(3, 3)
mutiTwoValues(3, 3)
//(Int, Int) -> Int

// 无参数无返回值
func printHelloWorld() {
    print("hello, world")
}
//() -> Void


// 使用函数类型: (Int, Int) -> Int
var mathFunction: (Int, Int) -> Int = sumTwoValues(_:_:)
mathFunction(2, 4)

// 函数类型作为参数类型
func outputResultValue(_ mathFunction:(Int, Int) -> Int, _ a: Int, _ b: Int){
    print("\(mathFunction(a,b)), \(a), \(b)")
}
outputResultValue(mathFunction, 1, 2)

///////////////////////
// 函数类型作为返回类型
func plusOne(_ output: Int) -> Int {
    return output + 1
}

func minusOne(_ output: Int) -> Int {
    return output - 1
}

func controlFunction(backward: Bool) -> ((Int) -> Int) {
    return backward ? plusOne(_:) : minusOne(_:)
}

var currentValue = 1
let moveValue = controlFunction(backward: currentValue > 0)
// moveValue 现在指向 plusOne() 函数。


/** 嵌套函数
 * 以上所有函数都是全局函数（global func），定义在全局域中。（也可以吧函数定义在别的函数体中，也叫做嵌套函数）
 * 默认情况，嵌套函数外界不可见，但可以被外围函数调用（一个外围函数可以返回它的某一个嵌套函数，是这个函数可以在其他域中被使用）
 */
//func controlFunction(backward: Bool) -> ((Int) -> Int) {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? stepBackward : stepForward
//}


