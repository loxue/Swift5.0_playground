import UIKit


/** 自动引用计数：Swift 使用自动引用计数（ARC）这一机制来跟踪和管理应用程序的内存
 * 一般情况下ARC情况下会在类的实例不在被使用时，自动释放占用的内存，不需要手动去释放内存。有些时候还是需要代码中实现内存管理
 *
 * 需要手动管理内存的情况：
 * ARC功能->
 * 1、当每次使用init()方法创建类的新实例，ARC会分配一块大内存来存储实例的信息
 * 2、内存中会包含实例的类型信息，以及这个实例所有相关属性值
 * 3、当实例不再被使用时，ARC释放实例所占用的内存，并让释放的内存能挪作他用
 * 4、为了确保使用中的实例不会被销毁，ARC会跟踪和计算每一个实例正在被多少属性，常量和变量所引用
 * 5、实例赋值给属性、常量和变量，他们都会创建此实例的强引用，只要强引用还在，实例是不允许被销毁的
 */

// ARC实例
class Person {
    let name: String    // name property
    init(name: String) { // 构造器
        self.name = name
        print("\(name) 开始初始化")
    }
    deinit {  // 被析构
        print("\(name) 被析构")
    }
}

// 值会被自动初始化为nil，目前还不会引用到Person类的实例
var reference1: Person?     // nil
var reference2: Person?     // nil
var reference3: Person?     // nil

// 创建Person类的新实例
reference1 = Person(name: "Runoob")

// 赋值给其他两个变量，该实例又会多出两个强引用
reference2 = reference1
reference3 = reference1

//断开第一个强引用
reference1 = nil
//断开第二个强引用
reference2 = nil
//断开第三个强引用，并调用析构函数
reference3 = nil
/** 以上程序执行输出结果为：
    Runoob 开始初始化
    Runoob 被析构
 */



/** 类实例之间的循环强引用
 *  在上面的例子中，ARC 会跟踪你所新创建的 Person 实例的引用数量，并且会在 Person 实例不再被需要时销毁它。
 *  然而，我们可能会写出这样的代码，一个类永远不会有0个强引用。
    这种情况发生在两个类实例互相保持对方的强引用，并让对方不被销毁。这就是所谓的循环强引用。
 */


































































































