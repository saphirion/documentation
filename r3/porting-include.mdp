===Prerequisites

I never used infix operators to compute a prefix-type expression since I did not dare to rely on this undocumented and, as I thought, officially unsupported feature.

Moreover, I programmed a couple of plotting "widgets", therefore I was accustomed to the (relatively recent) introduction of the AS-PAIR function, so I had to expect a totally different types of gotchas than the ones Sunanda experienced and mentioned in his <a href="http://www.rebol.org/art-display-article.r?article=j26z">Porting article</a>.

I expected the port of the INCLUDE function to be complicated since the INCLUDE function defines and uses its own error in R2.

When an error occurs during file processing, it is necessary for the user to know, which file it is. Therefore, INCLUDE has to "catch" the original error and create a new one containing the original error information plus the name of the file, where the error occurred.

In R2 this was implemented by defining a new User error having a Wrapped type. When you define a new error type, you have to specify in the SYSTEM/ERROR object how the error is formed.

===SYSTEM/ERROR change used as a version detector

In R3, the SYSTEM/ERROR object does not exist, instead, there is a SYSTEM/CATALOG/ERRORS object. I decided to use this difference to detect, which version of INCLUDE should be used. This was a trivial, insertion of one line to both versions of the file.

When defining a new error type in the new version I used the APPEND function instead of using the make prototype [...] cloning approach. It worked happily, so I decided to continue.

===DO/NEXT change

The next adjustment was related to the DO/NEXT specification change. I decided to find all occurrences of DO/NEXT and modify the call in accordance with the new specification. This was easy enough, since INCLUDE contains only five DO/NEXT calls.

===Error handling test

To test the behaviour, I prepared a special two-file example causing error in the second file.

The error was correctly caught, but the INCLUDE function did not succeed to build the new error type. The problem was that INCLUDE used the R2-type error specification block. After a couple of trials I found out that I can replace it by an already familiar and friendly object-spec syntax and it works in R3.

After solving this, I knew that the Near: field of the newly caused error was set to the error recausing code. I expected that the code in the format block of the error that I defined will replace it by the Near: field of the original error, which was kept within the newly caused error. That did not happen, the Near: field was the unwanted one, not informing me where the original error occurred.

When consulting this issue with Brian, he told me that I can easily take care of that before causing the new error, setting its Near: field to whatever I want, since the interpreter does not change the field, if it is already set. This worked without a glitch, and I obtained a correct Near: description of the error. I even obtained the name of the file, where the error occurred, as it was stored in the ARG1: field of the newly generated error.

The only thing missing was the description of the original error. I stopped doing no-effect trials when I finally realized, that my changes of the SYSTEM/CATALOG/ERRORS object actually did not have any observable effect on the interpreter, which most probably uses its own version of the SYSTEM/CATALOG/ERRORS object ignoring any changes I make.

===Using the SYSTEM/CATALOG/ERRORS/USER

Instead of trying to define a new type of error I decided to circumvent the problem. Since I knew that the User error behaved well, showing at least the name of the file where the error occurred, I decided to use it.

Instead of storing the faulty file into the ARG1: field of the user error, I just wanted to put in a text mentioning both the file and the error description of the original error.

I found out that it actually isn't that easy to obtain a textual description of the original error using the REFORM function, since I had to bind the error-forming block to the correct context. But, the BIND function looked unhappy when seeing my effort to use the error as the context to bind to.

Maybe I should convert the old error to object? R3 DISARM function does not do it for us anymore. But, that was just a minor obstacle, I decided to copy the contents of the old error to a newly created object. Then BIND did not have any more objections and helped me to get the description of the error I needed.

The only minor annoyance was that I could not use more lines for the error description (the newline character was just molded into the string, not ending the line). But, the hardest part was done, this being only a minor quirk.

===System/script/path problem

Overcoming this, I actually expected the function to work, so I tried to include the %timblk.r script. It started, but when finishing, the error:

 change-dir does not allow none! for its path argument
 
occurred. I checked INCLUDE, and there was just one line that could have caused it:

 change-dir dir

, where the DIR argument was previously set by a

 dir: system/script/path

code. Realizing that the expression really set the variable to NONE, I replaced the line by a simpler:

 dir: what-dir

, and did that in the setup of the INCLUDE-PATH and in my %user.r file too. After that change, I posted the file to <a href="http://www.fm.tul.cz/~ladislav/rebol">my Rebol page</a>. The R2 version was at: <a href="http://www.fm.tul.cz/~ladislav/rebol/include.r">include.r</a>.

===Causing error

The above was not the last one, actually. I found out that I left some error throws in, i.e., code like:

 throw make error! ...

I replaced it by

 do make error! ...

to obtain the error reports I really wanted.

Moreover, I left one [catch] attribute in function spec, but that seems to be silently ignored.

===Handling objects

To obtain the specification of the script header I used the THIRD function in R2. In R3, this function does not work for object arguments, so the call had to be replaced.

===Merger

When changing the way how INCLUDE worked and defining the new INCLUDE-LOG variable I decided that it would be much better to have %include.r and %include.r3 merged. Thus, I deleted the %include.r3 file and finally made the <a href="http://www.fm.tul.cz/~ladislav/rebol/include.r">include.r</a>script compatible with both R2 as well as with R3.

The merger has proven to be very useful making it possible to have just one cross-platform version of the code capable of running under R2 and R3 interpreter versions. This makes maintenance more convenient (there is no need to implement the same improvement twice in two code versions).

Thus, my main conclusion coming from the porting effort is to *not* split the code into two versions. It is much better and sparing maintenance effort to keep just one version of the code able to run in different interpreter configurations.

I used the same approach also when updating the test framework code with a similar success. (There are some parts that are meant just for a specific interpreter version, but those parts are small and maintaining them requires much lower effort than a code split would do.)

The end.