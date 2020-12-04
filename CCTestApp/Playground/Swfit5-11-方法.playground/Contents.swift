import UIKit


/** 实例方法：可以访问和修改实例属性、提供与实例目的相关的功能
 * 实例方法要写在它所属的类型的前后大括号({})之间。
 * 实例方法能够隐式访问它所属类型的所有的其他实例方法和属性。
 * 实例方法只能被它所属的类的某个特定实例调用。
 * 实例方法不能脱离于现存的实例而被调用。
 * Swift中类方法与实例方法区别：类方法中用class或者static来就是，实例方法直接就是func
 */

// 语法格式
//func funcname(Parameters) -> returntype {
//    Statement1
//    Statement2
//    ……
//    Statement N
//    return parameters
//}


class Counter {
    var count = 0
    func increment() {
        count += 1
        print(count)
    }
    func increment(by amount: Int) {
        count += amount
        print(count)
    }
    func reset() {
        count = 0
        print(count)
    }
}
var counter = Counter()
counter.increment()
counter.increment(by: 10)
counter.reset()

// 一个负责计算的类
class CalcClass {
    var a = 0
    var b = 0
    
    func sumValue(a: Int, b: Int) -> Int {
        print("\(a + b)")
        return a + b
    }
}

var calc = CalcClass()
calc.sumValue(a: 19, b: 19)


/**  self 属性
 * 实际上，你不必在你的代码里面经常写 self。
 * 不论何时，只要在一个方法中使用一个已知的属性或者方法名称，如果你没有明确地写 self，Swift 假定你是指当前实例的属性或者方法。
 * 这种假定在上面的 Counter 中已经示范了：Counter 中的三个实例方法中都使用的是 count（而不是 self.count）。
 */

// 在实例方法中修改值类型
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
// 打印“The point is now at (3.0, 4.0)”


// 在可变方法中给self 赋值
struct Point1 {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point1(x: x + deltaX, y: y + deltaY)
    }
}
var pppp = Point1()
pppp.moveBy(x: 33, y: 11)

// 类方法
class TestClass {
    class func TestTypeMethod() {
        // 在这里实现类型方法
    }
    static func TestTypeMethod1() {
        
    }
}
TestClass.TestTypeMethod()
TestClass.TestTypeMethod1()
























































































































