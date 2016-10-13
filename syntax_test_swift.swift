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
// <- punctuation.section.braces.begin
 // <- punctuation.section.brackets.begin
// ^ punctuation.section.parens.begin
//    ^ punctuation.section.parens.end
//     ^ punctuation.section.brackets.end
//       ^ punctuation.section.braces.end
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
//                                    ^^^^^ storage.type.class

class Mvc : MyClass, MyProtocol { }
// <- storage.type.class
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//    ^^^ entity.name.class
//        ^ punctuation.separator
//          ^^^^^^^ entity.other.inherited-class
//                 ^ punctuation.separator
//                   ^^^^^^^^^^ entity.other.inherited-class
//                              ^ punctuation.definition.class.body.begin
//                                ^ punctuation.definition.class.body.end

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

protocol MyProtocol: class, Other { }
// <- storage.type.protocol
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.protocol
//       ^^^^^^^^^^ entity.name.class
//                 ^ punctuation.separator
//                   ^^^^^ keyword.other
//                        ^ punctuation.separator
//                          ^^^^^ entity.other.inherited-class
//                                ^ punctuation.definition.protocol.body.begin
//                                  ^ punctuation.definition.protocol.body.end

struct MyStruct: Protocol, Other { }
// <- storage.type.struct
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.struct
//     ^^^^^^^^ entity.name.class
//             ^ punctuation.separator
//               ^^^^^^^ entity.other.inherited-class
//                       ^ punctuation.separator
//                         ^^^^^ entity.other.inherited-class
//                               ^ punctuation.definition.struct.body.begin
//                                 ^ punctuation.definition.struct.body.end

enum MyEnum<T>: Protocol, Other { }
// <- storage.type.enum
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.enum
//   ^^^^^^ entity.name.class
//         ^^^ meta.generic
//            ^ punctuation.separator
//              ^^^^^^^ entity.other.inherited-class
//                      ^ punctuation.separator
//                        ^^^^^ entity.other.inherited-class
//                              ^ punctuation.definition.enum.body.begin
//                                ^ punctuation.definition.enum.body.end

let x: String = "hello"
//     ^^^^^^ support.class

var y: Array<String> = ["hello"]
//     ^^^^^ support.class
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

switch MyEnum {
// <- keyword.control.switch
//            ^ punctuation.section.braces.begin
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
// <- punctuation.section.braces.end

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
//                  ^ entity.name.function
//                    ^^^^^ variable.parameter
//                         ^ punctuation.separator
//                           ^^^^^^^ entity.name.type
//                                  ^ punctuation.separator
//                                    ^^^ entity.name.function
//                                        ^^ variable.parameter
//                                          ^ punctuation.separator
//                                            ^^^^^^ entity.name.type
//                                                  ^ punctuation.section.parens.end
//                                                    ^^ keyword.operator.return
//                                                       ^^^^ entity.name.type
//                                                            ^ punctuation.section.braces.begin
//                                                              ^ punctuation.section.braces.end


MyClass.myVar?.myOtherVar.myFunction()

MyClass.myVar?.myOtherVar!.myProperty? = 42


