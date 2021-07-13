// SYNTAX TEST "Swift.sublime-syntax"

// MARK: UITableViewDelegate
// <- comment.line
// <- punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
// ^^^^^ punctuation.definition.comment
//       ^^^^^^^^^^^^^^^^^^^ meta.toc-list

/* Here's a comment */
// <- comment.block
// <- punctuation.definition.comment.begin
//^^^^^^^^^^^^^^^^^^^^ comment.block
//                  ^^ punctuation.definition.comment.end

"This is a string \n \"\'\\\t\r"
// <- punctuation.definition.string.begin
// <- string.quoted.double
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                             ^ punctuation.definition.string.end
//                ^^ constant.character.escape.newline
//                   ^^^^^^^^^^ constant.character.escape


"Length: \( line.length )"
//       ^^ punctuation.section.embedded.begin
//         ^^^^^^^^^^^^^ -string.quoted.double
//                      ^ punctuation.section.embedded.end
//^^^^^^^                string.quoted.double
//                       ^ string.quoted.double

{[ (  )] }
// <- punctuation.section.block.begin
 // <- punctuation.section.brackets.begin
// ^ punctuation.section.parens.begin
//    ^ punctuation.section.parens.end
//     ^ punctuation.section.brackets.end
//       ^ punctuation.section.block.end
// ^^^^ meta.parens
//^^^^^^ meta.brackets
//^^^^^^^^ meta.braces

@IBDesignable @objc fileprivate final class MyViewController { }
// <- punctuation.definition.keyword
// <- keyword.other
//                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//^^^^^^^^^^^ keyword.other
//            ^^^^^ keyword.other
//                  ^^^^^^^^^^^ storage.modifier
//                              ^^^^^ storage.modifier
//                                    ^^^^^ keyword.declaration.class
class Mvc : MyClass, MyProtocol { }
// <- keyword.declaration.class
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//    ^^^ entity.name.class
//        ^ punctuation.separator
//          ^^^^^^^ entity.other.inherited-class
//                 ^ punctuation.separator
//                   ^^^^^^^^^^ entity.other.inherited-class
//                              ^ punctuation.section.block.begin
//                                ^ punctuation.section.block.end

class MyClass<Key: Hashable, Value>: Array<Array<String>> { }
//           ^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//           ^ punctuation.definition.generic.begin
//            ^^^ variable.other.generic
//               ^ punctuation.separator
//                 ^^^^^^^^ variable.other.generic
//                         ^ punctuation.separator
//                           ^^^^^ variable.other.generic
//                                ^ punctuation.definition.generic.end
//                                                     ^^ punctuation.definition.generic.end
//                                                        ^ punctuation.section.block.begin
//                                                          ^ punctuation.section.block.end
protocol MyProtocol: class, Other { }
// <- storage.type.protocol
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol
//       ^^^^^^^^^^ entity.name.class
//                 ^ punctuation.separator
//                   ^^^^^ keyword.other
//                        ^ punctuation.separator
//                          ^^^^^ entity.other.inherited-class
//                                ^ punctuation.section.block.begin
//                                  ^ punctuation.section.block.end

struct MyStruct: Protocol, Other { }
// <- storage.type.struct
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
//     ^^^^^^^^ entity.name.class
//             ^ punctuation.separator
//               ^^^^^^^ entity.other.inherited-class
//                       ^ punctuation.separator
//                         ^^^^^ entity.other.inherited-class
//                               ^ punctuation.section.block.begin
//                                 ^ punctuation.section.block.end

enum MyEnum<T>: Protocol, Other { }
// <- storage.type.enum
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum
//   ^^^^^^ entity.name.class
//         ^^^ meta.generic
//            ^ punctuation.separator
//              ^^^^^^^ entity.other.inherited-class
//                      ^ punctuation.separator
//                        ^^^^^ entity.other.inherited-class
//                              ^ punctuation.section.block.begin
//                                ^ punctuation.section.block.end

let x: String = "hello"
// <- storage.type
//  ^ variable.other.constant
//   ^ punctuation.separator
//     ^^^^^^ storage.type
//            ^ keyword.operator.assignment

var y: Array<String> = ["hello"]
// <- storage.type
//  ^ variable.other.readwrite
//     ^^^^^ storage.type
//          ^^^^^^^^ meta.generic

1.0 + -.46
// <- constant.numeric.float
//     ^^^ constant.numeric.float
//  ^ keyword.operator.arithmetic
//    ^ keyword.operator.arithmetic

100
// <- constant.numeric.integer

100 / 2.34*40
// <- constant.numeric.integer
//  ^ keyword.operator.arithmetic
//    ^^^^ constant.numeric.float
//        ^ keyword.operator.arithmetic
//         ^^ constant.numeric.integer

0x42ab 0x3g 0b01 0o26 0o8
// <- constant.numeric.hex
//     ^^^^ -constant.numeric.hex
//          ^^^^ constant.numeric.binary
//               ^^^^ constant.numeric.octal
//                    ^^^ -constant.numeric.octal

self.hello super.thing(param)
// <- variable.language.self
//         ^^^^^ variable.language.super

true false nil
// <- constant.language.boolean.true
//   ^^^^^ constant.language.boolean.false
//         ^^^ constant.language.nil

for x in array { }
// <- keyword.control.loop

switch myEnum {
// <- keyword.control.switch
//            ^ punctuation.section.block.begin
  case .hello:
//^^^^ keyword.control.switch
//           ^ punctuation.separator
    doSomething()
  case .goodbye:
//^^^^ keyword.control.switch
//             ^ punctuation.separator
    doSomethingElse()
  default:
//^^^^^^^ keyword.control.switch
//       ^ punctuation.separator
    print("hi")
}
// <- punctuation.section.block.end

while x == y { }
// <- keyword.control.loop
//      ^^ keyword.operator.logical

x < 2 && y > 3
//^ keyword.operator.logical
//    ^^ keyword.operator.logical
//         ^ keyword.operator.logical

a ? b : nil
//^ keyword.control.conditional.ternary
//    ^ keyword.control.conditional.ternary

private func myFunc(_ param: Contact, for p2: String) -> Bool { }
// <- storage.modifier
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters
//                                                    ^^^^^^^^ meta.function.return-type
//      ^^^^ storage.type.function
//           ^^^^^^ entity.name.function
//                 ^ punctuation.section.parens.begin
//                  ^ variable.language.blank.swift
//                    ^^^^^ variable.parameter
//                         ^ punctuation.separator
//                           ^^^^^^^ storage.type
//                                  ^ punctuation.separator
//                                    ^^^ variable.parameter.argument-label.swift
//                                        ^^ variable.parameter
//                                          ^ punctuation.separator
//                                            ^^^^^^ storage.type
//                                                  ^ punctuation.section.parens.end
//                                                    ^^ keyword.operator.return
//                                                       ^^^^ storage.type
//                                                            ^ punctuation.section.block.begin
//                                                              ^ punctuation.section.block.end

do {
  try?

  catch RuntimeError where a == b{
  }
}

{ response in
  guard a != b else throw RuntimeError
  call(response)
}

extension String { }
// <- meta.class
//        ^^^^^^ entity.name.class

MyClass.myVar?.myOtherVar.myFunction() as! NSString
// <- support.class
//                        ^^^^^^^^^^ variable.function
//                                         ^^^^^^^^ support.class

MyClass.myVar?.myOtherVar!.myProperty? = 42

myfunction()
// <- variable.function

import Cocoa
//^^^^^^^^^^ meta.import.swift
// ^ keyword.control.import-export
//     ^^^^^ variable.other

static let settings = NSToolbarItem.Identifier("Settings")
// <- storage.modifier

appMenu.submenu?.addItem(NSMenuItem(title: "Hide \(appName)", action: #selector(NSApplication.hide(_:)), keyEquivalent: "h"))
//                       ^^^^^^^^^^ variable.instantiator
//                                  ^^^^^^ variable.property.swift
//                                                                    ^^^^^^^^^ variable.language.swift

if #available(macOS 11.0, *) {
// ^^^^^^^^^^ variable.language.swift

func doSomething(at time: _PrivateTime) -> Bool {}
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function
//                        ^^^^^^^^^^^^ storage.type

struct LoadData: Codable {
    var name: String
//  ^^^^^^^^^^^^^^^^^ meta.struct.swift
    var path: String?
//  ^^^ storage.type
//      ^^^^ variable.other.readwrite
//            ^^^^^^ storage.type
//                  ^ keyword.operator.optional
}

struct Resolution {
    var width = 0
//  ^^^^^^^^^^^^^ meta.struct.swift
//  ^^^ storage.type
//      ^^^^^ variable.other.readwrite
//            ^ keyword.operator.assignment
//              ^ constant.numeric.integer
    var height = 0
}

struct markStruct {
//                ^ punctuation.section.block.begin.swift
   var mark1: Int
   var mark2: Int
   var mark3: Int

   init(mark1: Int, mark2: Int, mark3: Int) {
// ^^^^ entity.name.function
//     ^ punctuation.section.parens.begin
//      ^^^^^ variable.parameter
//           ^ punctuation.separator
//             ^^^ storage.type.swift
//                ^ punctuation.separator
//                  ^^^^^ variable.parameter
//                                        ^ punctuation.section.parens.end
//                                          ^ meta.braces.swift meta.struct.swift meta.function.swift punctuation.section.block.begin.swift
      self.mark1 = mark1
      self.mark2 = mark2
      self.mark3 = mark3
   }
// ^ meta.function punctuation.section.block.end
}
// <- punctuation.section.block.end
