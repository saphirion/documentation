Argument passing styles in Rebol

    Author: Ladislav Mecir

===Introduction

Depending on whether the interpreter evaluates arguments or not before passing them to the function called there are several argument passing styles available in Rebol.

This article describes available argument passing styles and shows examples of their usage.

This version of the article describes both the properties of R2 as well as the properties of R3 interpreters.

===Evaluating argument passing style

This is the most common argument passing style used in Rebol, both in R2 as well as in R3.

Citation from the REBOL/Core User's Guide: "...the interpreter evaluates the arguments of function and passes them to the function ..."

When passing an argument to a function using this argument passing style, any expression encountered is evaluated and the result is passed to the function as the argument value.

Having a function like:

    f: func [value [any-type!]] [value]

We can pass an argument to it, e.g., as follows:

    f 1 + 2 ; == 3

    f add 1 2 ; == 3

In the former case infix addition was evaluated first to yield 3, which was supplied to *f* as the argument value.

In the latter case the *add* expression (prefix addition) was evaluated first to yield 3 which was supplied to *f* as the argument value.

Due to argument evaluation a cousin of the above *f* called *dtto* and looking too trivial at the first sight became useful in  
=url http://www.fm.tul.cz/~ladislav/rebol/build.r the Build dialect

---Usage

All built in Rebol functions except for only a few use this argument passing method.

---Advantages

Referential Transparency - a result of an expression can be supplied as an argument value.

Readability - because this method is standard, every script using this argument passing style is more readable than a script using less usual argument passing style.

===Literal argument passing style

This argument passing style is used in Rebol to pass a loop variable, a variable to the *help* function or to pass a security policy to the *secure* function.

Having a function like:

    g: func ['value [any-type!]] [value]

We can pass a word to it using the expression:

    g word ; == word

This is how the literal argument passing style differs from the evaluating argument passing style.

When writing a similar expression using the evaluating argument passing style, the code would actually trigger an error:

    f word
    ** Script Error: word has no value
    ** Near: f word

, because there would be an attempt to evaluate the ~word~ variable, which would fail due to the fact that the variable does not have a value.

If wanting to supply a word to *f* we would have to do it as follows:

    f 'word ; == word

In this case the lit-word evaluates to word before being passed to *f*.

Literal argument passing style also allows to pass a value of a variable to a function as follows:

    variable: 11
    g :variable ; == 11

---Literal argument passing style in R2

While being able to pass a variable or a value of a variable to a function using the literal argument passing style, the users weren't able to pass a result of an expression, possibly missing referential transparency (the ability to supply a result of an expression to the function). 

In R2 to supply a result of an expression to a function using the literal argument passing style the user first needs to evaluate the expression and assign its result to an intermediate variable; then the value of the intermediate variable can be passed to the function.

Example:

    my-words: [print get use]
    help (first my-words)

In this case the result is:

    (first my-words) is a paren

To obtain a help for print the user would need to do it as follows:

    intermediate-variable: first my-words
    help :intermediate-variable

obtaining the help for the *print* function.

---Literal argument passing style in R3

The need to use the intermediate variable is not comfortable. For R3 a more convenient alternative has been chosen.

As opposed to the R2 variant, in R3 the literal argument passing style was enhanced to perform evaluation if the argument expression is found to start with a get-word or a paren. Thus, in R3 this argument passing style became referentially transparent.

For example, in R3 it is possible to write:

    my-words: [print get use]
    help (first my-words)

obtaining a help for *print* in this case.

===Get argument passing style

This is how the specification looks:

    h: func [:value [any-type!]] [value]

---Get argument passing style in R2

This argument passing style was designed by Carl to work as follows:

* when a word is encountered, get its value and supply the value to the function as an argument
* if any other value is encountered, supply it to the function as an argument without further evaluation

Examples:

    word: "OK"
    h word ; == "OK"

Curiously, no mezzanine function used this argument passing style, it was also quite exceptional in user code.

---Get argument passing style (also unevaluated argument passing style) in R3

In R3 it was found out to be comfortable to have a completely unevaluated argument passing style, and the get argument passing style has been modified this way. The use of this argument passing style is typical for the *quote* function, which is defined as follows:

	quote: func [
	    "Returns the value passed to it without evaluation."
	    :value [any-type!]
	] [
	    :value
	]

The *quote* function is a general way how the user can protect some (otherwise evaluated) value so that it is not evaluated. It can be used to protect e.g. any-word values, parens, any-path values or any-functions against evaluation.

The End.
