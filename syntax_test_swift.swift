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

"This is a string"
// <- punctuation.definition.string.begin
// <- string.quoted.double
//^^^^^^^^^^^^^^^^ string.quoted.double
//               ^ punctuation.definition.string.end


"Length: \( line.length )"
//       ^^ punctuation.section.embedded.begin
//         ^^^^^^^^^^^^^ -string.quoted.double
//                      ^ punctuation.section.embedded.end
//^^^^^^^                string.quoted.double
//                       ^ string.quoted.double

@IBDesignable @objc fileprivate private final class MyViewController { }
// <- keyword.other
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
// ^^^^^^^^^^ keyword.other
//            ^^^^^ keyword.other
//                  ^^^^^^^^^^^ meta.class
//                              ^^^^^^^ invalid.illegal
//                                      ^^^^^ keyword.other
//                                            ^^^^^ keyword.entity

class Mvc : MyClass, MyProtocol { }
// <- keyword.entity
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//    ^^^ support.class
//        ^ punctuation.separator
//          ^^^^^^^ support.class
//                 ^ punctuation.separator
//                   ^^^^^^^^^^ support.class
//                              ^ punctuation.section.braces.begin
//                               ^ meta.braces
//                                ^ punctuation.section.braces.end

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

for x in array {

}

while 

MyClass.myVar?.myOtherVar.myFunction()

MyClass.myVar?.myOtherVar!.myProperty? = 42


