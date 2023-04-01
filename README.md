# GHe_Book

[![Build and Release LaTeX document](https://github.com/GHe0000/GHe_Book/actions/workflows/build-latex-pdf.yml/badge.svg)](https://github.com/GHe0000/GHe_Book/actions/workflows/build-latex-pdf.yml)

### 下载

你可以在以下链接下载自动编译自动发布的最新PDF

<https://ghe0000.github.io/GHe_Book/main.pdf>

此PDF包含最新的勘误，不过没有校验排版，但基本上不会出现排版上的问题。

---

你可以在以下链接中找到该书校验过排版的PDF的下载地址（不包含新的勘误）

<https://github.com/GHe0000/GHe_Book/releases>

![image](https://user-images.githubusercontent.com/30252929/204068686-2b744834-a45e-4af9-bc1c-2fb407cc8715.png)

单击该Book.pdf文件以下载

---

你可以在gh_actions_builds这个branch中找到GitHub Actions自动编译的PDF及其历史版本

<https://github.com/GHe0000/GHe_Book/tree/gh_actions_builds>

---

### 反馈与提交内容

反馈可以通过GitHub Issue发布，或发送至本人邮箱<guotao.he.0000@outlook.com>

提交内容可直接在GitHub上发布PR提交，也可发送至本人邮箱<guotao.he.0000@outlook.com>，支持Word、Markdown、LaTeX格式（通过PR提交仅限LaTeX）

---

### LaTeX编写说明

在本书中，定义了如下几个环境
mk(注)，theo(定理)，defi(定义)，ep(例)，mk（注）。
```
\begin{theo}{勾股定理}{}
若 $a,b$ 为直角三角形的两条直角边，$c$ 为斜边，那么 $a^2 + b^2 + c^2.$
\end{theo}

\begin{qu}{函数}{}
已知函数 $ f(x) = (x - 2)\mathrm{e}^{2} + a (x - 1)^{2} $ 有两个零点.
\begin{enumerate}[label=(\arabic*)]
  \item 求 $ a $ 的取值范围;
  \item 设 $ x_{1} $, $ x_{2} $ 是 $ f(x) $ 的两个零点，证明 $ x_{1} + x_{2} < 2 $.
\end{enumerate}
\end{qu}

\begin{ep}{诗句}{}
似此星辰非昨夜
\end{ep}

\begin{defi}{质心}{}
若各质点质量与坐标分别为$m_1$、$(x_1,y_1)$，$m_2$、$(x_2,y_2)$……$m_n$、$(x_n,y_n)$，则质心位置为
$$x_c = \frac{\sum m_i x_i}{\sum m_i} \quad y_c = \frac{\sum m_i y_i}{\sum m_i}$$
\end{defi}

\begin{mk}{标注}{}
这是一个标注
\end{mk}
```

对于花体字母，定义`\ms{}`命令以简便使用

