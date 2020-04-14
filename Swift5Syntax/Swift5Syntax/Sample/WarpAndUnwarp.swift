//
//  WarpAndUnwarp.swift
//  Swift5Syntax
//
//  Created by akixie on 2020/4/13.
//  Copyright © 2020 Aki.Xie. All rights reserved.
//

import Foundation
/*
 打包wrap(?),强制解包Force unwrapping(!)
 参考：https://www.jianshu.com/p/7226d1711e90
 */

class WarpAndUnwarp: NSObject {
    func warpAndWnwarp()  {
        //打包wrap(?),强制解包Force unwrapping(!)
        //？ 表示有值或者为空。Eg: var name : String? 表示name可能有值也可能为空
//        let a :Int?
//        let b :Int
        //虽然都是Int类型，但实际上a和b是不一样的，a属于可选Int类型，b属于Int类型。
        var aaa: Int? = 30
        print(aaa as Any)
        //会报一个Expression implicitly coerced from 'Int?' to Any的警告，
        //提示没有对Int?进行解包unwrapped,Swift是强类型语言
        //把可选值类型隐式地强制转换成任意类型来处理，可修改为print(aaa as Any)消除警告。

        //解包Unwarpping optionals
        //1、强制解包Force unwrapping(!)
        print(aaa! + 1)
        //这样就解包了，变量名后的感叹号告诉编译器，我想看下盒子里面的内容并取出来里面的值，
        //但是，使用强制解包应该谨慎的使用。
        //对于强制解包，推荐是只有在确定不为空的情况下才使用的
        //还是针对上面的例子，由于aaa被定义为可选值变量，在使用过程中可能会置换为nil
        aaa = nil
        print(aaa! + 1)
        //会报错Fatal error: Unexpectedly found nil while unwrapping an Optional value，
        //错误原因是对一个值为空的变量进行了解包，
        //当然可以在每次解包的时候判断是否为nil，
        //但这无疑是增加了自己的代码及工作量，并且如果万一忘记了的话，程序还是会崩溃。
        
        //可选值绑定Optional binding(if let)
        //如果可选值内容不为空，那么就会被解包
        var a2: Int? = 30
        a2 = nil
        if let b = a2 {
            print(b + 1)
        } else {
            print("no")
        }
        //并且let的常量名可定义为相同的，如：
        var a3: Int? = 30
        a3 = nil
        if let a3 = a3 {
            print(a3 + 1)
        } else {
            print("no")
        }
        
        //空值合并Nil coalescing(??)
        //这也是一种解包，叫做空合运算符，类似于三目运算符
        var a4: Int? = 30
        a4 = nil
        let bbb = a4 ?? 20
        print(bbb + 1)
        //，上面??的意思表示如果aaa不为nil，那么就将a4的值给bbb，否则将bbb赋值为20。
    }
}
