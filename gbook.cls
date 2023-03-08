%# -*- coding: utf-8-unix -*-
%======================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gbook}[2022/11/21 gbook]
\LoadClass[a4paper,twoside,openany,UTF8]{ctexbook}
%======================================================================
% 导入 LaTeX 宏包
\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{color}
\RequirePackage{ulem}
\RequirePackage{siunitx}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage[dvipsnames]{xcolor}
%\RequirePackage{pdfpages}
\RequirePackage{amsmath,mathtools,amsthm,amsfonts,amssymb,bm}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\RequirePackage[centering,a4paper,body={16cm,25cm}]{geometry} 
\RequirePackage{subfig}
\RequirePackage{threeparttable}
%======================================================================
\RequirePackage{tikz}

\usetikzlibrary{shapes.geometric, arrows}
\usetikzlibrary{shapes,decorations}
\usetikzlibrary{intersections,decorations.text}
\usetikzlibrary{backgrounds}
\usetikzlibrary{arrows,shapes,positioning,shadows,trees,mindmap}
\usetikzlibrary{tikzmark}
\usetikzlibrary{calc}
\usetikzlibrary{arrows.meta}

\RequirePackage{mathtools, nccmath}

% for custom commands
\RequirePackage{xspace}

% table alignment
\RequirePackage{array}
\RequirePackage{ragged2e}

% \RequirePackage{forest}
\RequirePackage[edges]{forest}
\RequirePackage{xkcdcolors} % xkcd colors
%======================================================================
% 导入tikz库

%======================================================================

\RequirePackage{tcolorbox}
\tcbuselibrary{skins, breakable, theorems}

% 自定义颜色
\definecolor{ocre}{RGB}{243,102,25} 
\definecolor{LightGoldenrod}{RGB}{238,221,130}
\definecolor{sthlmGreen}{RGB}{0,134,127}
\definecolor{Gold}{RGB}{255,215,0}
\definecolor{C1}{RGB}{32,88,153}
\definecolor{C2}{RGB}{218,222,238}
\definecolor{tssteelblue}{RGB}{0,40,220}
\definecolor{tsorange}{RGB}{255,138,88}
\definecolor{tsblue}{RGB}{23,74,117}
\definecolor{tsforestgreen}{RGB}{21,122,81}
\definecolor{tsyellow}{RGB}{255,185,88}
\definecolor{tsgrey}{RGB}{200,200,200}
\definecolor{main}{RGB}{0,120,2}
\definecolor{seco}{RGB}{230,90,7}%
\definecolor{thid}{RGB}{0,160,152}%
\definecolor{bule}{RGB}{18,29,57}
\definecolor{bablue}{RGB}{248,248,248}
\definecolor{c1}{RGB}{62, 97, 127}
\definecolor{c2}{RGB}{104, 182, 182}
\definecolor{c3}{RGB}{107, 190, 190}
\definecolor{c4}{RGB}{100, 172, 174}
\definecolor{c5}{RGB}{95, 162, 162}
%======================================================================


%======================================================================

% 设置花体字母
\newcommand\ms[1]{\mathscr{#1}}
%======================================================================
% 设置日期显示格式为yyyy-mm-dd
\def\twodigits#1{\ifnum#1<10 0\fi\the#1}
\renewcommand{\today}{\number\year-\twodigits\month-\number\day}
%======================================================================
% 中文定理环境
% \indent 为了段前空两格
\newtheorem{theorem}{\indent 定理}[section]
\newtheorem{lemma}[theorem]{\indent 引理}
\newtheorem{proposition}[theorem]{\indent 命题}
\newtheorem{corollary}[theorem]{\indent 推论}
\newtheorem{definition}{\indent 定义}[section]
\newtheorem{example}{\indent 例}[section]
\newtheorem{remark}{\indent 注}[section]
\newenvironment{solution}{\begin{proof}[\indent\bf 解]}{\end{proof}}
\renewcommand{\proofname}{\indent\bf 证明}
%======================================================================
\iffalse
% 定制章节样式
\makeatletter
\def\@makechapterhead#1{%
  %%%%\vspace*{50\p@}% %%% removed!
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \color{tssteelblue} \large \bfseries Chapter \thechapter
    \fi
    \interlinepenalty\@M
    \par\color{black} \Luge \bfseries #1
    \vskip 5\p@
    \par\color{tssteelblue}\hrule height 2pt
    \par\nobreak
    \vskip 20\p@
  }}

\def\@makeschapterhead#1{%
  %%%%%\vspace*{50\p@}% %%% removed!
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \color{tssteelblue} \large \bfseries  #1
    \vskip 5\p@
    \par\color{tssteelblue}\hrule height 2pt
    \par\nobreak
    \vskip 20\p@
  }}
\makeatother
\fi

%======================================================================
\ctexset{chapter={
    format={\raggedright},
    number={\arabic{chapter}},
	nameformat={\color{tssteelblue}\Large\bfseries},
	name={Chapter \space,  },
	aftername={\par},
	titleformat={\huge\bfseries},
	aftertitle={\par\vskip 5\color{tssteelblue}\hrule height 1pt},
	beforeskip={-10pt},
	afterskip={20pt},
	}
}

% section级样式设置
\ctexset{section={
	format={\centering\color{tssteelblue}\large\bfseries},
	name={§, },
	afterskip={1.0ex \@plus .2ex},
	}
}
%======================================================================
% subection级样式设置
\ctexset{subsection={
	format={\color{tssteelblue}\bfseries},
	indent={0\ccwd},
	afterskip={1.0ex \@plus .2ex},
	}
}
%======================================================================
% subsubection级样式设置
\ctexset{subsubsection={
	format={\normalfont\normalsize},
	indent={0\ccwd},
	afterskip={1.0ex \@plus .2ex},
	}
}

\linespread{1.3}

\newtcbtheorem[number within=section]{qu}{题}%
  {enhanced, breakable,
    colback = white, colframe = cyan, colbacktitle = cyan,
    fonttitle = \sffamily\bfseries}{qst}

\newtcbtheorem[number within=section]{theo}{定理}%
  {enhanced, breakable,
    colback = white, colframe = Salmon, colbacktitle = Salmon,
    fonttitle = \sffamily\bfseries}{qst}
    
\newtcbtheorem[number within=section]{ep}{例}%
  {enhanced, breakable,
    colback = white, colframe = Green, colbacktitle = Green,
    fonttitle = \sffamily\bfseries}{qst}

\newtcbtheorem[number within=section]{defi}{定义}%
  {enhanced, breakable,
    colback = white, colframe = RoyalPurple, colbacktitle = RoyalPurple,
    fonttitle = \sffamily\bfseries}{qst}

\newtcbtheorem[number within=section]{mk}{注}%
  {enhanced, breakable,
    colback = white, colframe = Thistle, colbacktitle = Thistle,
    fonttitle = \sffamily\bfseries}{qst}

% 浮动参数
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

%超链接参数
%\hypersetup{	colorlinks=true,
%	linkcolor=cyan,
%	filecolor=red,      
%	urlcolor=blue,
%	citecolor=green,
%}

%二维码生成
\input{qrcode}