latex-homework-template
=======================

LaTeX file I use for math/CS homework. Forked from [jdavis](https://github.com/jdavis/latex-homework-template)


## Usage
In your document, place the following code (and extend as necessary):

```latex
\documentclass{homework}

% Variable definitions
\hwauthor{Your Name}
\hwclass{Class Name}
\hwtitle{HW Name}

% Document
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

This will produce 


![Example output of LaTeX](./example.png)

## Installing

**On Linux:** Just put the `homework.cls` file wherever your other `LaTeX` stuff is. Mine is in `~/texmf/tex/latex/commonstuff/homework.cls` for example, yours is probably similar. Here's an example:

```bash
$ kpsewhich -var-value=TEXMFHOME  # this folder may not exist, no worries either way
/home/offendo/texmf
$ mkdir -p ~/texmf/tex/latex/commonstuff # make the folder and subfolders
$ cp homework.cls ~/texmf/tex/latex/commonstuff/ # copy the cls file there
```
It's probably easier to follow whatever instructions your TeX software provides (MikTeX, TeXLive, etc.).

## License

This code is distributed under the MIT license. For more info, read the
[LICENSE](/LICENSE) file distributed with the source code.

[texshop]: http://pages.uoregon.edu/koch/texshop/
