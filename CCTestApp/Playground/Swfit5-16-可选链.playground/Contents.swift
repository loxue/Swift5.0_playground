import UIKit


/** 可选链（Optional Chaining）
 *  是一种可以请求和调用属性、方法和子脚本的过程，用于请求或调用的目标可能为nil。
 *
 *
 *
 *  可选链返回两个值：
 *      如果目标有值，调用就会成功，返回该值
 *      如果目标为nil，调用将返回nil
 *      多次请求或调用可以被链接成一个链，如果任意一个节点为nil将导致整条链失效。
 *
 *  可选链可替代强制解析：
 *      通过在属性、方法、或下标脚本的可选值后面放一个问号(?)，即可定义一个可选链。
 *
 *
 *
 *  可选链 '?'
 *      ? 放置于可选值后来调用方法，属性，下标脚本
 *      当可选为 nil 输出比较友好的错误信息
 *  感叹号（!）强制展开方法，属性，下标脚本可选链
 *      ! 放置于可选值后来调用方法，属性，下标脚本来强制展开值
 *      当可选为 nil 时强制展开执行错误
 */


/** 使用！来实现可选链 */
//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var numberOfRooms = 1
//}
//
//let john = Person()
//
///** 将导致运行时错误：
// *  想使用感叹号（!）强制解析获得这个人residence属性numberOfRooms属性值，将会引发运行时错误
// *  因为这时没有可以供解析的residence值
// */
//let roomCount = john.residence!.numberOfRooms



/** 使用？来实现可选链
 *
 */
//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var numberOfRooms = 1
//}
//
//let john = Person()
//
//// 链接可选residence?属性，如果residence存在则取回numberOfRooms的值
//if let roomCount = john.residence?.numberOfRooms {
//    print("John 的房间号为 \(roomCount)。")
//} else {
//    print("不能查看房间号")
//}

/** 注意：
 * 因为这种尝试获得numberOfRooms的操作有可能失败，可选链会返回Int?类型值，或者称作"可选Int"。
 * 当residence是空的时候（上例），选择Int将会为空，因此会出现无法访问numberOfRooms的情况。
 *
 * 注意：
 * 即使numberOfRooms是非可选Int（Int?）时这一点也成立。
 * 只要是通过可选链的请求就意味着最后numberOfRooms总是返回一个Int?而不是Int。
 */




/** 为可选链定义模型类
 *
 *  可以使用可选链来多层调用属性，方法，和下标脚本
 *  可以利用它们之间的复杂模型来获取更底层的属性，并检查是否可以成功获取此类底层属性。
 */
//class Person {
//    var residence: Residence?
//}
//
//// 定义了一个变量 rooms，它被初始化为一个Room[]类型的空数组
//class Residence {
//    var rooms = [Room]()
//    var numberOfRooms: Int {
//        return rooms.count
//    }
//    subscript(i: Int) -> Room {
//        return rooms[i]
//    }
//    func printNumberOfRooms() {
//        print("房间号为 \(numberOfRooms)")
//    }
//    var address: Address?
//}
//
//// Room 定义一个name属性和一个设定room名的初始化器
//class Room {
//    let name: String
//    init(name: String) { self.name = name }
//}
//
//// 模型中的最终类叫做Address
//class Address {
//    var buildingName: String?
//    var buildingNumber: String?
//    var street: String?
//    func buildingIdentifier() -> String? {
//        if (buildingName != nil) {
//            return buildingName
//        } else if (buildingNumber != nil) {
//            return buildingNumber
//        } else {
//            return nil
//        }
//    }
//}


/** 通过可选链调用方法
 *
 *  可以使用可选链的来调用可选值的方法并检查方法调用是否成功
 *  即使这个方法没有返回值，你依然可以使用可选链来达成这一目的。
 */
class Person {
    var residence: Residence?
}

// 定义了一个变量 rooms，它被初始化为一个Room[]类型的空数组
class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        return rooms[i]
    }
    func printNumberOfRooms() {
        print("房间号为 \(numberOfRooms)")
    }
    var address: Address?
}

// Room 定义一个name属性和一个设定room名的初始化器
class Room {
    let name: String
    init(name: String) { self.name = name }
}

// 模型中的最终类叫做Address
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if (buildingName != nil) {
            return buildingName
        } else if (buildingNumber != nil) {
            return buildingNumber
        } else {
            return nil
        }
    }
}

let john = Person()


if ((john.residence?.printNumberOfRooms()) != nil) {
    print("输出房间号")
} else {
    print("无法输出房间号")
}

if john.residence?.printNumberOfRooms() != nil {
    print("指定了房间号)")
}  else {
    print("未指定房间号")
}


/** 对返回可选值的函数进行链接 */
























































































































