---- Abbreviations used in this article and the LuaSnip docs
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local get_visual = function(args, parent)
  if (#parent.snippet.env.SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
  else  -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end
--
--
--
--
return {


  -- begin snippet
  s({trig="env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),  -- this node repeats insert node i(1)
    }
  )
),

-- Example use of insert node placeholder text
s({trig="usep", dscr="usepackage", snippetType="autosnippet"},
  fmta(
    [[\usepackage{<>}]],
    {
      i(1, "package_name"),
    }
  )
),

s({trig="mathdoc", dscr="math_document"},
  fmta(
    [[\documentclass[2pt]{report}
\usepackage[utf8]{inputenc}
\usepackage{hyperref}
\usepackage[a4paper, total={6in, 8in}, margin={0.05in}]{geometry}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{tikz}
\setcounter{MaxMatrixCols}{20}
\newcommand\hlight[1]{\tikz[overlay, remember picture,baseline=-\the\dimexpr\fontdimen22\textfont2\relax]\node[rectangle,fill=blue!50,rounded corners,fill opacity = 0.2,draw,thick,text opacity =1] {$#1$};} 
\newcommand{\explain}[1]{&&\begin{tabular}{@{}l@{}}#1\end{tabular}}

\begin{document}
  <>
\end{document}
]],
    {
      i(1, "stuff_here"),
    }
  )
),


  -- matrix snippet
  s({trig="bmatrix", snippetType="autosnippet"},
  fmta(
    [[
      $\begin{bmatrix}
          <>
      \end{bmatrix}$
    ]],
    {
      i(1),
    }
  )
),

  -- subsection snippet
  s({trig="subsec", snippetType="autosnippet"},
  fmta(
    [[
      \subsection*{
        <>
      }
    ]],
    {
      i(0),
    }
  )
),


  -- space snippet
  s({trig="vspace", snippetType="autosnippet"},
  fmta(
    [[
      \vspace{<>}
    ]],
    {
      i(1, "0.5cm"),
    }
  )
),


  -- vec snippet
  s({trig="vec", snippetType="autosnippet"},
  fmta(
    [[
      \vec{<>}
    ]],
    {
      i(1, "u")
    }
  )
),


  -- col matrix
  s({trig="cvec", snippetType="autosnippet"},
  fmta(
    [[
      $\begin{bmatrix}
      <> \\ <> \\ <> \\ <> \\ <> \\ <>
      \end{bmatrix}$
    ]],
    {
      i(1, "x_1"),
      i(2, "x_2"),
      i(3, "x_3"),
      i(4, "x_4"),
      i(5, "x_5"),
      i(6, "x_6"),
    }
  )
),



-- in 
s({trig=";in", snippetType="autosnippet"},
  {
    t("\\in"),
  }
),

-- eqn
s({trig = "eqn", dscr = "Surround with $$"},
  fmta("$<>$",
    {
      d(1, get_visual),
    }
  )
),


}

