% Dokumentklasse für FHNW Projektarbeiten
% Authoren: Mathias Graf, Jean-Paul John, Marc Leisi

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{profhnw}

\ProcessOptions\relax

\LoadClass[a4paper]{article}

\RequirePackage[utf8]{inputenc}					% Umlaute im Quelltext
\RequirePackage[margin=2.5cm]{geometry}			% Seitenformat
\RequirePackage[T1]{fontenc}					% für Umlaute im PDF
\RequirePackage[babel,german=quotes]{csquotes} 	% Deutsche Anführungszeichen
\RequirePackage[ngerman]{babel}					% Übersetzen von Standardtexten und sonstige sprachspezifischen Anpassungen
\RequirePackage[hidelinks]{hyperref} 			% Hyperlinks (Hidelinks macht keine farbigen Boxen)
\RequirePackage{graphicx} 	 					% Grafiken
\RequirePackage{amsmath} 						% Mathematische Formeln
\RequirePackage{mathtools}						% Funktionserweiterung für amsmath
\RequirePackage[ngerman]{cleveref}				% Packet für bessere Referenzen (besser als hyperref)
\RequirePackage{setspace} 						% Zeilenabstand Einstellen
\RequirePackage[nottoc,numbib]{tocbibind}		% Literaturverzeichnis im Inhaltsverzeichnis
\RequirePackage{pdfpages}						% PDFs anhängen
\RequirePackage[backend=bibtex, 
				style=authoryear]
			   {biblatex}						% Bibliographie
\RequirePackage{titlesec}						% Titelbefehle neu definieren
\RequirePackage{microtype}						% Bessere Typographie (Optischer Randausgleich etc.)
\RequirePackage{float}							% Bilder zentrieren
\RequirePackage{fancyhdr} 						% Header
\RequirePackage{placeins}						% Floatbariere
\RequirePackage{tikz}							% Grafiken erstellen
\RequirePackage{setspace}						% Zeilenabstand verändern
\RequirePackage[toc,page]{appendix}				% Anhang erstellen
\RequirePackage{pdflscape}						% Einzelne Seiten in Querformat
\RequirePackage{longtable}						% Mehrseitige Tabellen
\RequirePackage{xr}								% Referenzen auf externe Dokumente
\RequirePackage{tikz}							% Zeichnen
\RequirePackage{capt-of}						% Beschriftungen ausserhalb von Float-Umgebungen
\RequirePackage{verbatim}						% Kommentarblöcke
\RequirePackage[bottom]{footmisc}               % Fussnoten am Ende der Seite

% TikZ Bibliotheken
\usetikzlibrary{shapes, arrows, calc, intersections, through}


\pagestyle{fancy}								% Seitenstil 'fancy' (mit Header)
\setlength{\headheight}{26pt}					% Header so hoch machen, dass das FHNW-Logo reinpasst
\setstretch{1.2}								% 1.2fache Zeilenabstände
\setlength\bibnamesep{1.5\itemsep}				% Grösserer Abstand zwischen Bibliographie-Einträgen

% Konfiguration Biblatex gemäss Vorgaben im Leitfaden
\DeclareNameAlias{sortname}{last-first}
\DeclareNameAlias{default}{last-first}
\DeclareFieldFormat[article]{volume}{~(#1)}
\DeclareFieldFormat[online]{url}{\newline \textsc{Url:} \url{#1}}

% o.J. für Einträge mit fehlendem Datum
\newcommand{\mkbibnodate}{o\adddot J\adddot}
\AtEveryCitekey{\iffieldundef{labelyear}{\restorefield{labelyear}{\mkbibnodate}}{}}
\AtEveryBibitem{\iffieldundef{labelyear}{\restorefield{year}{\mkbibnodate}}{}}

% URLs nur bei @Online
\AtEveryBibitem{%
  \ifentrytype{online}{%
  }{%
    \clearfield{url}%
    \clearfield{urldate}%
  }%
}

% Übersetzung von "Appendices"
\addto\captionsngerman{\let\appendixtocname\appendixname%
\let\appendixpagename\appendixname}

% Neue Seite für jede Section
\newcommand{\sectionbreak}{\clearpage}

% Paragraph Format anpassen
\titleformat{\paragraph}[hang]{\normalfont\normalsize\bfseries}{\theparagraph}{1em}{}
\titlespacing*{\paragraph}{0pt}{3.25ex plus 1ex minus .2ex}{0.5em}

% Kopf- und Fusszeile
\lhead{\includegraphics[width=0.3\linewidth]{FHNW_HT}}		% Kopfzeile links
\chead{}													% Kopfzeile mittig
\rhead{\rightmark}											% Kopfzeile rechts
\lfoot{\today}												% Fusszeile links											
\cfoot{\@author}											% Fusszeile mittig
\rfoot{\thepage}											% Fusszeile rechts

\endinput
