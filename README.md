latex-homework-template
=======================

[Adjusted] LaTeX file I use for math/CS homework. Forked from [jdavis](https://github.com/jdavis/latex-homework-template)


## Usage
In your document, place the following code (and extend as necessary):

```latex
\documentclass{homework}
\hwauthor{Your Name}
\hwclass{Class Name}
\hwtitle{HW Name}
\begin{document}

% here be problems

\begin{hwproblem}
    This is the solution to problem 1.
\end{hwproblem}

\begin{hwproblem}
    This is the solution to problem 2.
\end{hwproblem}

\end{document}
```

## Installing

1. First you'll need LaTeX. Instructions on obtaining it can be found here:
   http://latex-project.org/ftp.html
2. Compiling from the command line will look like the following:

   ```bash
   $ latexmk homework.tex
   ```
3. Or you can use [TeXShop][texshop] or a similar native client to typeset the
   LaTeX file.

## Credit

When first starting with LaTeX, I came across [this template][credit] and used
it as a base for starting my template. As you can see, it is pretty similar.

## License

This code is distributed under the MIT license. For more info, read the
[LICENSE](/LICENSE) file distributed with the source code.

[texshop]: http://pages.uoregon.edu/koch/texshop/
[credit]: http://www.latextemplates.com/template/programming-coding-assignment
[twitter]: https://twitter.com/jldavis
