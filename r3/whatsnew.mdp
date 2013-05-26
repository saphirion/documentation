What is new in R3?
	Author: Ladislav Mecir

=toc

===Introduction

This document lists new and improved features in R3 compared to R2.

===New datatypes

---CLOSURE!

A type of function implemented in Rebol distinct from FUNCTION!

+++Advantages

* simpler to use than FUNCTION! (more beginner friendly)
* more "predictable" behaviour
* suitable for "asynchronous programming"

---COMMAND!

A type of native external function used by extensions.

---FRAME!

Internal context frame.

+++Advantages

* my guess is that this datatype is not meant as a "user feature"

---GET-PATH!

A special kind of path datatype.

+++Advantages

* to obtain a value the path is referring to

---GOB!

Low level graphical object.

+++Advantages

* meant to speed up graphics and
* decrease memory consumption
* support two-dimensional compositing with transparency
* support scalable vector graphics
* support image effects
* support rich text

---HANDLE!

Arbitrary internal object or value.

+++Advantages

* my guess is that this datatype is not meant as a "user feature"
* probably just improving interface with "outside"

---MAP!

Associative array type.

+++Advantages

* brings an associative array type to Rebol
* beginner-friendly

---MODULE!

Loadable context of code and data.

+++Advantages

* facilitating PITL (programming in the large)

---PERCENT!

Allows the expression and computation of percentages.

+++Advantages

* convenience of data representation

---TASK!

Not fully supported yet.

---TYPESET!

Allows definition of typesets. Typesets replace R2 "pseudotypes" like NUMBER!, SERIES!, etc. that weren't user-definable. 

+++Advantages

* supports definitions of new typesets

---UTYPE!

User-definable datatype.
Not fully supported yet.

---VECTOR!

Optimized for vector manipulations.
Not fully supported yet.

===Removed datatypes

---LIST!

Not popular.

---HASH!

Used mainly for associative arrays, but this purpose is better handled by the MAP! datatype.

===Improved datatypes

---BITSET!

+++Improvements

* supports definition of Unicode codepoint sets
* complementary bitsets are supported

---BLOCK!

+++Improvements

* INSERT HEAD speed was improved to be the same as the speed of INSERT TAIL and
* REMOVE HEAD speed was improved to be the same as the speed of REMOVE BACK TAIL

---CHAR!

+++Improvements

* can represent Unicode BMP codepoints

---DATATYPE!

+++Improvements

* now represents only "real" datatypes, for typesets see the TYPESET! datatype

---DATE!

+++Improvements

* UTC "attribute"
* HOUR "attribute"
* MINUTE "attribute"
* SECOND "attribute"
* "attributes" are accessible using the PICK function

---DECIMAL!

+++Improvements

* comparison operators improved
* a native ROUND function defined
* MOLD corrected

---EMAIL!

+++Improvements

* based on STRING! datatype, can contain Unicode BMP codepoints
* INSERT HEAD speed improved to be the same as INSERT TAIL speed
* REMOVE HEAD speed improved to be the same as REMOVE BACK TAIL speed

---ERROR!

+++Improvements

* became a "legal" datatype
* no DISARM necessary
* improved construction syntax

---FILE!

+++Improvements

* based on STRING! datatype, can contain Unicode BMP codepoints
* INSERT HEAD speed improved to be the same as INSERT TAIL speed
* REMOVE HEAD speed improved to be the same as REMOVE BACK TAIL speed

---FUNCTION!

+++Improvements

* now compatible with multithreading applications
* security, not offering/remembering argument values after the call finished
* accessors WORDS-OF, SPEC-OF and BODY-OF defined
* security, accessors not offering the "original" WORDS, BODY and SPEC blocks
* "unevaluated argument passing" specified by get-word parameter name in function spec now fully supported, allowing to define the proper QUOTE function
* "partially evaluated argument passing" specified by lit-word parameter name in function spec adjusted to allow parens to trigger evaluation of arguments if needed
* "partially evaluated argument passing" - get-words now also trigger "normal evaluation" of arguments

+++Deteriorations

* function variable access is O(n) depending on the depth of the function frame on the function call stack (this has to be corrected in my opinion)

---GET-WORD!

+++Improvements

* the Do dialect semantics of this datatype has changed, now it returns #[unset!] for "unset" variables

---IMAGE!

+++Improvements

* switched to "standard" alpha values now (0 transparent, 255 opaque) for better compatibility with existing frameworks and better portability of R3

---INTEGER!

+++Improvements

* switched to 64-bit
* arithmetic corrections

---ISSUE!

+++Improvements

* turned to word type in accordance with the major usage

---MONEY!

+++Improvements

* now implemented as a "truly decimal" (96-bit) type

+++Deteriorations

* not supporting currency attribute at present

---OBJECT!

+++Improvements

* "object growth" (this holds for contexts in general) now supported

---PAIR!

+++Improvements

* coordinates are now floats supporting subpixel accuracy

---REFINEMENT!

+++Improvements

* refinements are now bound like other word types

---SET-WORD!

+++Improvements

* used even more for "autocollecting" of local variables than before

---STRING!

+++Improvements

* can contain Unicode BMP codepoints
* INSERT HEAD speed improved to be the same as INSERT TAIL speed
* REMOVE HEAD speed improved to be the same as REMOVE BACK TAIL speed

---TIME!

+++Improvements

* "attributes" can be accessed using the PICK function

---URL!

+++Improvements

* based on STRING! datatype, can contain Unicode BMP codepoints
* INSERT HEAD speed improved to be the same as INSERT TAIL speed
* REMOVE HEAD speed improved to be the same as REMOVE BACK TAIL speed

---WORD!

+++Improvements

* minor syntactic corrections of all word types

===New functions

===Improved functions

---PARSE

+++Improvements

* new keywords: AND, NOT, FAIL, THEN added to improve compatibility with other members of the Top-down pasing language family like TDPL, GTDPL, PEG, etc. and increase expressivity of the Parse dialect
* other keywords increasing expressivity added: QUOTE, IF, REJECT, CHANGE, REMOVE, INSERT
* existing keywords have improved functionality: INTO, TO, THRU, SET
* improved consistency - COPY now produces a series having the same datatype as PARSE input
* /ALL option applies only to simple rules (not blocks)

===R3GUI

+++Improvements

* support for more advanced/demanding applications than VID
* box model for faces
* layouts (layout styles) are used to group faces
* support for auto-resizing layout styles
* two distinct auto-resizing layout styles (GROUP and PANEL) built in
* actors are used to define the behaviour of styles and faces
