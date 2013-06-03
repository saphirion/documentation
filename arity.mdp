Arity of Rebol functions.

    Author: Ladislav Mecir

===Introduction

This article discusses the number of arguments Rebol functions take. It describes both R2 and R3 versions of the interpreter.

===Specified number of arguments

Every Rebol function has got a specification block which, besides other things, also specifies the number of arguments a function is supposed to take.

We can find the number by using the *nargs* function written by Carl Sassenrath:

    nargs: func [
        {The number of the function arguments specified}
        f [any-function!]
    ] [
        -1 + index? any [find words-of :f refinement! tail words-of :f]
    ]

Example:

    nargs :add ; == 2


===Actual number of arguments

To be able to find the actual number of arguments a function takes I defined the following function:

    args-taken?: func [
        {How many arguments the given function actually takes?}
        f [any-function! word! path!]
        args [block!]
        /local test r
    ] either system/version < 2.90.0 [[
        test: make block! 1 + length? args
        insert/only test :f
        repeat i length? args [
            insert/only tail test to paren! reduce ['first at args i]
        ]
        if error? r: try [do/next test] [do r]
        (length? args) - (length? second r)
    ]] [[
        test: make block! 1 + length? args
        insert/only test :f
        repeat i length? args [
            insert/only tail test to paren! reduce ['first at args i]
        ]
        if error? set/any 'r try [do/next test 'pos] [do r]
        (length? args) - (length? pos)
	]]

Let's test the behaviour of the *list-dir* function:

    nargs :list-dir ; == 1
    args-taken? :list-dir [%.]
    ; feedback.r    license.html  nntp.r        notes.html    rebdoc.r
    ; rebol.exe     rebol.r       setup.html    user.r
    ; == 1

We have seen, that the *list-dir* function took the specified number of arguments in this case.

---Unset arguments

The *list-dir* function is able to take less than standard number of arguments, because its *dir* argument can be of the *unset!* datatype as the *any-type!* declaration suggests:

    args-taken? :list-dir []
    ; feedback.r    license.html  nntp.r        notes.html    rebdoc.r
    ; rebol.exe     rebol.r       setup.html    user.r
    ; == 0

Here the *list-dir* function took 0 arguments, because we didn't supply more.

---Refinements

A different situation can be observed with function refinements. A function can take more than standard number of arguments in this case:

    nargs :copy ; == 1
    args-taken? 'copy [[1 2]] ; == 1
    args-taken? 'copy/part [[1 2] 1] ; == 2

---Operators

If we look at the *+* operator, we see that its specified number of arguments is two.

In R2, the same number we obtain when we check the actual number of arguments taken when the operator is used as prefix:

    nargs :+ ; == 2
    args-taken? :+ [1 2] ; == 2

In R2 the *-* operator is an exception, since it acts as unary if we use it as prefix operator:

    nargs :- ; == 2
    args-taken? :- [1 2] ; == 1

In R3 these examples do not work since R3 does not allow to use infix operators this way (in a prefix expression).

---Variadic functions

There are functions that take varying number of arguments depending on the arguments supplied. Such functions are called variadic functions.

For example, *make* is specified to take two arguments:

    nargs :make ; == 2
    args-taken? :make [word word] ; == 2

However, in R2, if we supply different arguments, *make* can take three arguments:

    args-taken? :make reduce [function! [] []] ; == 3

This is not the case in R3, where *make* works as follows:

    args-taken? :make reduce [function! [[] []]] ; == 2

always taking the fixed number of arguments.

An example of a variadic function is the *do* function which can take unlimited number of arguments both in R2 as well as in R3:

    nargs :do ; == 1
    args-taken? :do [1] ; == 1
	args-taken? :do reduce [:negate 1] ; == 2
    args-taken? :do reduce [:subtract 1 2] ; == 3

, etc...

In R3, we can define our own variadic functions as follows:

	; define a variadic function called sumn
	use [result collect process] [
	    collect: func [:value [any-type!]] [
	        unless value? 'value [return process result]
	        append/only result :value
	        return/redo :collect
	    ]
	    process: func [block [block!] /local result] [
	        result: 0
	        foreach value reduce block [result: result + value]
	        result
	    ]
	    sumn: func [] [
	        result: copy []
	        return/redo :collect
	    ]
	]

We can find out that the *sumn* function actually doesn't specify any arguments:

	nargs :sumn ; == 0

However, it can take unlimited number of arguments, in fact:

	args-taken? :sumn [1] ; == 1
	args-taken? :sumn [1 1] ; == 2
	args-taken? :sumn [1 1 1] ; == 3

, etc...

The end.
