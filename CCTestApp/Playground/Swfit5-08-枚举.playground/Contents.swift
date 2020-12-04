import UIKit


/*  枚举
 * Swift中，枚举类型是一等（first-class）类型。采用了在传统上只被类（class）所支持的特性，
 * 例如计算属性（computed properties），用于提供枚举值的附加信息，
 * 实例方法（instance methods），用于提供和枚举值相关联的功能。
 * 枚举也可以定义构造函数（initializers）来提供一个初始值；
 * 可以在原始实现的基础上扩展它们的功能；
 * 还可以遵循协议（protocols）来提供标准的功能。
 */


// 枚举语法
enum DaysofaWeek {
   // 枚举定义放在这里
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}

var weekDay = DaysofaWeek.THURSDAY
weekDay = .THURSDAY
switch weekDay {
    case .Sunday:
        print("星期天")
    case .Monday:
        print("星期一")
    case .TUESDAY:
        print("星期二")
    case .WEDNESDAY:
        print("星期三")
    case .THURSDAY:
        print("星期四")
    case .FRIDAY:
        print("星期五")
    case .Saturday:
        print("星期六")
}
/**
 * 注意： 和 C 和 Objective-C 不同，Swift 的枚举成员在被创建时不会被赋予一个默认的整型值。
 * 在上面的DaysofaWeek例子中，Sunday，Monday，……和Saturday不会隐式地赋值为0，1，……和6。
 * 相反，这些枚举成员本身就有完备的值，这些值是已经明确定义好的DaysofaWeek类型。
 */

enum ComopassPoint{
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = ComopassPoint.west
directionToHead = .east

// 使用Switch 语句匹配枚举值
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}


enum Student{
    case Name(String)
    case Mark(Int,Int,Int)
}
var studDetails = Student.Name("Runoob")
var studMarks = Student.Mark(98,97,95)
switch studMarks {
case .Name(let studName):
    print("学生的名字是: \(studName)。")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("学生的成绩是: \(Mark1),\(Mark2),\(Mark3)。")
}

// 枚举成员的遍历
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

for beverage in Beverage.allCases {
    print(beverage)
}

// 关联值
enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(2, 30, 58, 33)
productBarcode = .qrCode("asdf")

/** 原始值
 * 原始值可以是字符串，字符，或者任何整型值或浮点型值。每个原始值在它的枚举声明中必须是唯一的。
 * 在原始值为整数的枚举时，不需要显式的为每一个成员赋值，Swift会自动为你赋值。
 * 例如，当使用整数作为原始值时，隐式赋值的值依次递增1。如果第一个值没有被赋初值，将会被自动置为0。
 */
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

// 原始值的隐式赋值
enum Planetr: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
Planetr(rawValue: 7)


// 递归枚举
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

//print(evaluate(product))
// 打印“18”





























































