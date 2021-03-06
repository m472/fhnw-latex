\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentfhnw}

\ProcessOptions\relax

\LoadClass[a4paper]{beamer}

\RequirePackage[utf8]{inputenc} 						% UTF-8 Encoding für Umlaute im Quelltext
\RequirePackage[T1]{fontenc}							% für Umlaute im PDF
\RequirePackage[babel,german=quotes]{csquotes} 			% Deutsche Anführungszeichen
\RequirePackage{babel}									% Spracheinstellungen
\RequirePackage[backend=bibtex]{biblatex}				% Bibliographie
\RequirePackage{textcomp}								% Symbole


\beamertemplatenavigationsymbolsempty					% Navigationssymbole ausblenden

\useoutertheme[height=4ex, 
%hideothersubsections
]{sidebar}

\setlength{\beamer@sidebarwidth}{10ex}					% Breite Sidebar (Textbreite)
\setbeamersize{sidebar width left=\beamer@sidebarwidth}	% Breite der Sidebar (Balkenbreite)
\setbeamertemplate{sidebar \beamer@sidebarside}			% Sidebar ohne Author und Titel
{
	\vspace{2ex}
	\insertverticalnavigation{\beamer@sidebarwidth}
}

% Footline
\setbeamertemplate{footline}{
	\begin{beamercolorbox}[wd=\paperwidth,ht=3ex,left]{palette secondary}
		\raisebox{0.75ex}{\hspace{1ex}\insertshortauthor}
	\end{beamercolorbox}
	\begin{beamercolorbox}[wd=\paperwidth,ht=0ex,right]{palette secondary}
		\raisebox{0.75ex}{\insertshortinstitute\hspace{1ex}}
	\end{beamercolorbox}
	\begin{beamercolorbox}[wd=\paperwidth,ht=3ex,left]{palette secondary}
		\raisebox{0.75ex}{\hspace{1ex}\insertshorttitle}
	\end{beamercolorbox}
	\begin{beamercolorbox}[wd=\paperwidth,ht=0ex,right]{palette secondary}
		\raisebox{0.75ex}{\insertframenumber /\inserttotalframenumber\hspace{1ex}}
	\end{beamercolorbox}
}


\definecolor{fhnwgelb}{RGB}{240,240,40}					% Corporate Farbe FHNW
\definecolor{fhnwsek}{RGB}{181, 186, 5}					% Corporate Sekundär

\definecolor{lgray}{gray}{0.90}							% Hellgrau
\definecolor{mgray}{gray}{0.5}							% Mittelgrau
\definecolor{dgray}{gray}{0.15}							% Dunkelgrau


\setbeamercolor{structure}{fg=fhnwsek, bg=mgray}		% Farben der Grundstruktur
\setbeamercolor{frametitle}{fg=black, bg=fhnwgelb}		% Slide Titelfarben
\setbeamercolor{palette primary}{fg=black, bg=lgray}	% Titelfarben Präsentation
\setbeamercolor{title}{fg=black, bg=lgray}				% Titelfarben Präsentation
\setbeamercolor{palette secondary}{fg=white, bg=black}	% Footline oben
\setbeamercolor{palette tertiary}{fg=white, bg=black}	% Footline unten
\setbeamercolor{author in sidebar}{fg=mgray}			% Farbe Authoren in Sidebar
\setbeamercolor{sidebar}{bg=dgray}						% Farben der Sidebar
\setbeamercolor{section in toc}{fg=black}				% Farben der Sections im Inhaltsverzeichnis
\setbeamercolor{subsection in toc}{fg=mgray}			% Farbe der Subsections im Inhaltsverzeichnis
\setbeamercolor{section in sidebar}{fg=fhnwgelb}		% Farbe der Sections in der Sidebar
\setbeamercolor{section in sidebar shaded}{fg=mgray}	% inaktive Sections
\setbeamercolor{subsection in sidebar}{fg=fhnwgelb}		% Farbe der Subsections in der Sidebar
\setbeamercolor{subsection in sidebar shaded}{fg=mgray} % inaktive Subsections


%\setbeamertemplate{frametitle continuation}{}			% Keine Titelnummerierung bei mehrseitigen Slides

% Bibliographie Schriftgrösse einstellen
\renewcommand*{\bibfont}{\tiny}

% Stildefinition der Beschriftungen
\setbeamertemplate{caption}{\scriptsize \usebeamercolor[fg]{structure}{ \insertcaptionname~\insertcaptionnumber:} \usebeamercolor[fg]{normal text}{\insertcaption}}

% Standardgrösse für Bilder
\setkeys{Gin}{width=\textwidth, height=0.8\textheight, keepaspectratio}


\endinput
