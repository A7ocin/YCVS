\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{YCVS}[2017/06/21 My custom YCVS class, https://github.com/A7ocin/YCVS]

\RequirePackage{titlesec}
\RequirePackage{xparse}
\RequirePackage[document]{ragged2e}

\titleformat{\section}         
  {\Large\scshape\raggedright} 
  {}{0em}                      
  {}                           
  [\titlerule]                 
  

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}


\DeclareDocumentCommand{\YCVSsection}{m o}{%
	\begin{flushleft}
    \section[#1]{#1 \hfill \IfValueT{#2}{#2}}%
    \end{flushleft}
}

\DeclareDocumentCommand{\YCVSsubsection}{m o}{%
	\begin{flushleft}	
    \subsection[#1]{#1 \hfill \IfValueT{#2}{#2}}%
    \end{flushleft}
}

\DeclareDocumentCommand{\YCVSparagraphL}{m}{%
	\begin{flushleft}
    {#1}%
    \end{flushleft}
}

\DeclareDocumentCommand{\YCVSparagraphR}{m}{%
	\begin{flushright}
    {#1}%
    \end{flushright}
}

\DeclareDocumentCommand{\YCVSparagraphC}{m}{%
	\begin{center}
    {#1}%
    \end{center}
}

\DeclareDocumentCommand{\YCVSname}{m}{%
    \centerline{\Huge{#1}}%
}

\DeclareDocumentCommand{\YCVScontact}{o o o o o o o o o}{%
    \center{
    	\IfValueT{#1}
    	{
    		#1 
    	}
    	\IfValueT{#2}
    	{
    		\hfill {\large\textperiodcentered} 
    		\hfill
    		#2
    	}
    	\IfValueT{#3}
    	{
    		\hfill {\large\textperiodcentered} 
    		\hfill
    		#3
    	}
    }
    \center{
    	\IfValueT{#4}
    	{
    		#4
    	}
    	\IfValueT{#5}
    	{
    		\hfill {\large\textperiodcentered} 
    		\hfill
    		#5
    	}
    	\IfValueT{#6}
    	{
    		\hfill {\large\textperiodcentered} 
    		\hfill
    		#6
    	}
    }
    \center{
    	\IfValueT{#7}
    	{
    		#7
    	}
    	\IfValueT{#8}
    	{
    		\hfill {\large\textperiodcentered} 
    		\hfill
    		#8
    	}
    	\IfValueT{#9}
    	{
    		\hfill {\large\textperiodcentered} 
    		\hfill
    		#9
    	}
    }
}

\DeclareDocumentCommand{\YCVSitems}{o o o o o o o o o}{%
    \begin{itemize}
    \IfValueT{#1}{\item #1}
	\IfValueT{#2}{\item #2}
    \IfValueT{#3}{\item #3}
    \IfValueT{#4}{\item #4}
    \IfValueT{#5}{\item #5}
    \IfValueT{#6}{\item #6}
    \IfValueT{#7}{\item #7}
    \IfValueT{#8}{\item #8}
    \IfValueT{#9}{\item #9}
    \end{itemize}
}

\DeclareDocumentCommand{\YCVStab}{o o o o o o o o o}{%
	\begin{tabular}{\IfValueT{#1}{l} \IfValueT{#2}{l} \IfValueT{#3}{l} \IfValueT{#4}{l} \IfValueT{#5}{l} \IfValueT{#6}{l} \IfValueT{#7}{l} \IfValueT{#8}{l} \IfValueT{#9}{l}}
	 
	 \IfValueT{#1}{#1} & \IfValueT{#2}{#2} & \IfValueT{#3}{#3} \\
	 \IfValueT{#4}{#4} & \IfValueT{#5}{#5} & \IfValueT{#6}{#6} \\
	 \IfValueT{#7}{#7} & \IfValueT{#8}{#8} & \IfValueT{#9}{#9}\end{tabular}
}
