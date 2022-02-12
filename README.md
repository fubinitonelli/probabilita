# Appunti di Probabilità

Il libro di probabilità da studenti per studenti, ora in versione open source.

## Quali sono i file importanti

Il file principale è `Appunti.tex`. `DispensaMarkov.tex` contiene solo la sezione sulle catene di Markov.
`Errata.tex` e `ErrataL2.tex` contengono gli _errata corrige_.
Infine, `foglio.tex` nella sottocartella `foglio` genera lo "schemino".

Gli altri file sono importati con `\input{nomefile}` e non vanno compilati direttamente.

## Come si compila

Bisogna utilizzare il motore di compilazione XeLaTeX, che funziona meglio con le lingue che non sono l'inglese.
Se utilizzate un editor come TeXstudio, cercate nelle impostazioni la voce apposita.

Se siete veri pro di LaTeX, c'è anche il comando da terminale: `xelatex Appunti.tex`.
E se siete ancora più pro, vi basta fare `make` per avere tutto compilato, persino con l'ID del commit di git.
(Siamo sicuri che con Linux funziona, con Mac probabile, con Windows forse no).

## Ma non avete dei PDF compilati?

L'ultima versione già compilata in PDF la trovate su https://fubinitonelli.it/probabilita/

## *And now for something completely different*

Un sentito ringraziamento a tutte le persone che hanno contribuito, in tanti modi diversi, a questo libro.
Aprendo il codice sorgente del nostro lavoro, speriamo che sempre più persone possano trovarlo utile.
Se effettuate modifiche, vi invitiamo calorosamente a inviarcele (come pull request o altro) per poterle integrare.

In particolare, ringraziamo Teo Bucci per la revisione generale del foglio.

## Legalese

Questa opera è rilasciata sotto licenza [Creative Commons BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

In sintesi: potete condividere i contenuti del libro, in tutto o in parte, e apportare le vostre modifiche,
a patto di citare la fonte, di condividere le modifiche con la stessa licenza, e di non usare il materiale per scopi commerciali
(non è permesso stampare il libro per rivenderlo).

<small>Questo riassunto della licenza è parziale e non la sostituisce, ma serve a darvi l'idea.</small>
