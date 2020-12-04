import UIKit


/** 属性
 * 储存属性将常量和变量储存为实例的一部分,计算属性则直接计算值
 * 计算属性用于类,结构体,枚举
 * 储存属性用于类和结构体
 */

// 存储属性
struct infoStruct {
    var name: String
    let age: Int
}

var footballTeams = infoStruct(name: "luonaerduo", age: 18)
footballTeams.name = "James"
print("\(footballTeams.name)")

/**
 * 注意：
 * 结构体属于值类型。当值类型实例被声明为常量，它的所有属性都会变为常量
 */
//let guozuTeam = infoStruct(name: "s13", age: 1)
//guozuTeam.name = "弟中弟"
//guozuTeam.age = 0
//print("\(guozuTeam.name)  \(guozuTeam.age)")



/* 懒加载存储属性
 * 当第一次被调用的时候才会计算其初始值的属性。
 * 在属性声明前使用 lazy 来表示一个延时加载存储属性。
       必须将延时加载属性声明成变量（使用 var 关键字）
       因为属性的初始值可能在实例构造完成之后才会得到。
       而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延时加载。
 */

struct Car {
    
    // property
    var price: Int
    var brand: String
    var petrol: Int
    
    // method: mutating默认关键字
    mutating func drive() {
        if petrol > 0 {
            petrol -= 1
            print("drive 10 milo")
        }
    }
    
    // 表示属性值是不可改的
//    nonmutating func gasUp() {
//        price += 10
//        print("gas up")
//    }
    
}

class DataImporter {
    var fileName = "date.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manger = DataManager()
manger.data.append("asd")
manger.data.append("asddd")

print(manger.importer.fileName)


/**  存储属性和实例变量
 * 除存储属性外，类、结构体和枚举可以定义计算属性。
 * 计算属性不直接存储值，而是提供一个 getter 和一个可选的 setter，来间接获取和设置其他属性或变量的值。
 */

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

// 简化setter声明
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

// 只读计算属性
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

/** 属性观察器
 * willSet 在新的值被设置之前调用
 * didSet 在新的值被设置之后调用
 * willSet和didSet观察器在属性初始化过程中不会被调用
 * 注意：
 * 不需要为无法重载的计算属性添加属性观察器，因为可以通过 setter 直接监控和响应值的变化。
 */

/**
 * 计算属性和属性观察器所描述的模式也可以用于全局变量和局部变量。
 *      局部变量                                    全局变量
 * 在函数、方法或闭包内部定义的变量。        函数、方法、闭包或任何类型之外定义的变量。
 * 用于存储和检索值。                     用于存储和检索值。
 * 存储属性用于获取和设置值。              存储属性用于获取和设置值。
 * 也用于计算属性。                      也用于计算属性。
 */

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("将 totalSteps 的值设置为 \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("增加了 \(totalSteps - oldValue) 步")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// 将 totalSteps 的值设置为 200
// 增加了 200 步
stepCounter.totalSteps = 360
// 将 totalSteps 的值设置为 360
// 增加了 160 步
stepCounter.totalSteps = 896
// 将 totalSteps 的值设置为 896
// 增加了 536 步


/**
 * 获取和设置类型属性的值
 * 类似于实例的属性，类型属性的访问也是通过点运算符(.)来进行。
 * 但是，类型属性是通过类型本身来获取和设置，而不是通过实例。实例如下：
 */

struct StudMarks {
   static let markCount = 97
   static var totalCount = 0
   var InternalMarks: Int = 0 {
      didSet {
         if InternalMarks > StudMarks.markCount {
            InternalMarks = StudMarks.markCount
         }
         if InternalMarks > StudMarks.totalCount {
            StudMarks.totalCount = InternalMarks
         }
      }
   }
}

var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()

stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks)

stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)




















































































































