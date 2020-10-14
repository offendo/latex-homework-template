% Class settings

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[Nilay's Homework Class]

\LoadClass{article}

\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{tikz}
\RequirePackage[plain]{algorithm}
\RequirePackage{algpseudocode}

\usetikzlibrary{automata,positioning}


%
% Basic Document Settings
%

\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

\linespread{1.1}

% Variables to define header

\def\hwtitle#1{\def\@hwtitle{#1}}
\newcommand{\printhwtitle}{\@hwtitle}

\def\hwclass#1{\def\@hwclass{#1}}
\newcommand{\printhwclass}{\@hwclass}

\def\hwauthor#1{\def\@hwauthor{#1}}
\newcommand{\printhwauthor}{\@hwauthor}

\AtBeginDocument{
    \pagestyle{fancy}
    \lhead{\printhwauthor}
    \chead{\printhwclass: \printhwtitle}
    \rhead{\firstxmark}
    \lfoot{\lastxmark}
    \cfoot{\thepage}
}

\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

\setlength\parindent{0pt}

%
% Create Problem Sections
%

\newcommand{\enterProblemHeader}[1]{
    \nobreak\extramarks{}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
}

\newcommand{\exitProblemHeader}[1]{
    \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \stepcounter{#1}
    \nobreak\extramarks{Problem \arabic{#1}}{}\nobreak{}
}

\setcounter{secnumdepth}{0}
\newcounter{partCount}
\newcounter{partCountAlpha}
\newcounter{problem-count}
\setcounter{problem-count}{1}
\nobreak\extramarks{Problem \arabic{problem-count}}{}\nobreak{}

%
% Homework Problem Environment
%
% This environment takes an optional argument. When given, it will adjust the
% problem counter. This is useful for when the problems given for your
% assignment aren't sequential. See the last 3 problems of this template for an
% example.
%
\newenvironment{hwproblem}[1][-1]{
    \ifnum#1>0
        \setcounter{problem-count}{#1}
    \fi
    \section{Problem \arabic{problem-count}}
    \setcounter{partCount}{1}
    \setcounter{partCountAlpha}{1}
    \enterProblemHeader{problem-count}
}{
    \exitProblemHeader{problem-count}
}

%
% Homework Details
%   - Title
%   - Due date
%   - Class
%   - Section/Time
%   - Instructor
%   - Author
%

\author{\printhwauthor}
\date{}

\renewcommand{\partalpha}[1]{\textbf{\large Part \Alph{partCountAlpha}}\stepcounter{partCountAlpha}\\}
\renewcommand{\part}[1]{\textbf{\large Part \thepartCount}\stepcounter{partCount}\\}

%
% Various Helper Commands
%

% Useful for algorithms
\newcommand{\alg}[1]{\textsc{\bfseries \footnotesize #1}}

% For derivatives
\newcommand{\deriv}[1]{\frac{\mathrm{d}}{\mathrm{d}x} (#1)}

% For partial derivatives
\newcommand{\pderiv}[2]{\frac{\partial}{\partial #1} (#2)}

% Integral dx
\newcommand{\dx}{\mathrm{d}x}

% Alias for the Solution section header
\newcommand{\solution}{\textbf{\large Solution}}

% Probability commands: Expectation, Variance, Covariance, Bias
\newcommand{\E}{\mathrm{E}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\Bias}{\mathrm{Bias}}

