% Dokumentklasse für FHNW Projektarbeiten
% Authoren: Mathias Graf, Jean-Paul John

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{profhnw}

\ProcessOptions\relax

\LoadClass[a4paper]{article}


\RequirePackage[margin=2.5cm]{geometry}				% Seitenformat
\RequirePackage[utf8]{inputenc}						% Umlaute im Quelltext
\RequirePackage{graphicx}							% Bilder einfügen
\RequirePackage[backend=bibtex]{biblatex}			% Bibliographie
\RequirePackage{fancyhdr}							% Kopf- und Fusszeile
\RequirePackage[ngerman]{babel}						% Sprache auf 'Deutsch' einstellen
\RequirePackage[ngerman]{cleveref}					% Packet für bessere Referenzen (besser als hyperref)
\RequirePackage{textcomp}							% Symbole
\RequirePackage{placeins}							% Floatbarriere
\RequirePackage{capt-of}							% Beschriftung ohne Float-Umgebung
\RequirePackage{longtable}
\RequirePackage{lscape}
\RequirePackage{pdfpages}


\pagestyle{fancy}

\endinput
