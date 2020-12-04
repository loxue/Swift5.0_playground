import UIKit


/** 继承
 * 继承我们可以理解为一个类获取了另外一个类的方法和属性。
 * 当一个类继承其它类时，继承类叫子类，被继承类叫超类（或父类)
 * 在 Swift 中，类可以调用和访问超类的方法，属性和下标脚本，并且可以重写它们。
 * 我们也可以为类中继承来的属性添加属性观察器。
 */

/** Swift 成员变量后面的?和!区别
 * ? 解释:这个对象还没赋值 可能为空    备注:如果在后面的某个函数中复制了就不会为空了,所以要给个?
 * ! 解释:这个对象已经初始化了        备注:在声明后立即初始化
 */

/** 基类
 * Swift 中的类并不是从一个通用的基类继承而来的。OC里面的类是没有指定都是继承自NSObject
 * 如果你不为自己定义的类指定一个超类的话，这个类就会自动成为基类。
 */

class StuDetails {
    
    var studentName: String!
    var mark1: Int!
    var mark2: Int!
    var mark3: Int!
    init(studentName: String, mark1: Int, mark2: Int, mark3: Int) {
        self.studentName = studentName
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
    
    func gradeLevel(_ a: String, _ b: Int, _ c: Int, _ d: Int) -> String {
        var disStr = ""
        if b>90 {
            disStr = String(format: "\(a)同学的数学成绩很牛")
            print(disStr)
        } else {
            disStr = String(format: "\(a)同学的数学成绩很菜")
            print(disStr)
        }
        return disStr
    }
    
    func show() {
        print("mark1:\(String(describing: self.mark1!)), mark2:\(String(describing: self.mark2!)), mark3:\(String(describing: self.mark3!))")
    }
    
}

let name = "Jams"
let mathMark = 100
let chineseMark = 100
let englishMark = 100

let stuMark = StuDetails(studentName: name, mark1: mathMark, mark2: chineseMark, mark3: englishMark);
print(stuMark.studentName!)
print(stuMark.mark1!)
print(stuMark.mark2!)
print(stuMark.mark3!)

stuMark.gradeLevel("马化腾", 100, 100, 0)


/** 子类：指的是在一个已有类的基础上创建一个新的类。
 *       为了指明某个类的超类，将超类名写在子类名的后面，用冒号(:)分隔,语法格式如下
 * 子类定义
 * 子类实例化
 */

// 子类的定义
class SonClass: StuDetails {
    // 类的定义
}

class Mayun : StuDetails {
    init() {
        super.init(studentName: "马云", mark1: 0, mark2: 99, mark3: 100)
    }
}

let mayun = Mayun()
mayun.show()
mayun.gradeLevel("马云", 0, 90, 100)


/**  重写（overriding）
 * 子类可以通过继承来的实例方法，类方法，实例属性，或下标脚本来实现自己的定制功能，我们把这种行为叫重写
 * 我们可以使用 override 关键字来实现重写
 *
 * 访问超类的方法、属性及下标脚本
 *          重写          访问方法，属性，下标脚本
            方法          super.somemethod()
            属性          super.someProperty()
            下标脚本       super[someIndex]
 */



// 访问超类的方法,属性及小标
class Father {
    func show() {
        print("我是爸爸")
    }
}

class Son : Father {
    override func show() {
        print("我是儿子")
    }
}

let son = Son()
son.show()




/** 重写属性：你可以提供定制的 getter（或 setter）来重写任意继承来的属性，无论继承来的属性是存储型的还是计算型的属性。
 * 子类并不知道继承来的属性是存储型的还是计算型的，它只知道继承来的属性会有一个名字和类型。所以你在重写一个属性时，必需将它的名字和类型都写出来。
 *
 * 注意点：
        如果你在重写属性中提供了 setter，那么你也一定要提供 getter。
        如果你不想在重写版本中的 getter 里修改继承来的属性值，
        你可以直接通过super.someProperty来返回继承来的值，其中someProperty是你要重写的属性的名字。
 *
 * 防止重写
 * 使用 final 关键字防止属性或者方法被重写。
 * 如果重写了final方法，属性或下标脚本，在编译时会报错。
 * （如果在整个类class前添加final【final class】标记，则这个类不可以被继承，否则编译报错）
 * 可以通过把方法，属性或下标标记为 final 来防止它们被重写，只需要在声明关键字前加上 final 修饰符即可
 * （例如：final var、final func、final class func 以及 final subscript）。
 */

class Circle {
    var radius = 12.5
    var area: String {
        return "radius=\(String(describing: radius))"
    }
}
//final class Circle { // final关键字会防止Circle类被重写
//    var radius = 12.5
//    var area: String {
//        return "radius=\(String(describing: radius))"
//    }
//}
// 继承父类Circle
class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " ，但现在被重写为 \(print)"
    }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")




/** 重写属性观察器
 * 可以在属性重写中为一个继承来的属性添加属性观察器。这样一来，当继承来的属性值发生改变时，你就会监测到。
 *
 * 注意：你不可以为继承来的常量存储型属性或继承来的只读计算型属性添加属性观察器。
 */
class Square: Rectangle {
    override var radius: Double {
        didSet {
            print = Int(radius/5.0)+1
        }
    }
}

let sq = Square()
sq.radius = 100.0
print("半径: \(sq.area)")


class Perimeter: Circle {
    override var radius: Double {
        didSet {
            radius = 50.0
        }
    }
}

let oper = Perimeter()
oper.radius = 20.0
print("\(oper.radius)")  // 你不可以为继承来的常量存储型属性或继承来的只读计算型属性添加属性观察器。
    

























































































































