#import "@preview/cetz:0.3.2"
#import "@preview/touying:0.6.1": *
#import themes.simple: *

#let colors = (
  primary: rgb("#FFEB3B"),
  light-primary: rgb("#FFF9C4"),
  dark-primary: rgb("#FBC02D"),
  primary-text: rgb("#212121"),
  secondary-text: rgb("#757575"),
  divider: rgb("#BDBDBD"),
  accent: rgb("#FF9800")
)

#show: simple-theme.with(
  aspect-ratio: "16-9",
  footer-right: [],
  header: box(
    height: 87%,
    outset: (6%),
    radius: 30%,
    fill: colors.primary,
    [
      #set align(center + horizon)
      #set text(weight: "black", size: 30pt, fill: white) 
      #context(utils.display-current-heading()) 
      #h(1fr)
      #context(utils.slide-counter.display()) / 
      #context(utils.last-slide-number)
    ]
  )
)

#slide[
  = Palette
  #grid(
    columns: 4,
    rows: 2,
    [#rect(fill: colors.primary)],
    [#rect(fill: colors.light-primary)],
    [#rect(fill: colors.dark-primary)],
    [#rect(fill: colors.divider)],
    [#rect(fill: colors.secondary-text)],
    [#rect(fill: colors.primary-text)],
    [#rect(fill: colors.accent)],
  )
]



// Slide separatrice tra un argomento e il successivo
// #slide(background: colors.primary, foreground: white)[

#let title(title: "") = {
  title-slide[
    #rect(
      height: 130%,
      width: 130%,
      fill: colors.primary,
    )[
    #set text(weight: "black", size: 40pt, fill: white) 
    = #title
    ]
  ]
}

#let definition(body, word: "Definizione", definition: "") = {
  // Slide per le definizioni
  slide[
    #grid(
      columns: (2fr, 1fr),
      rows: (1fr, 4fr),
      [
        #set text(weight: "black", size: 60pt) 
        #word
      ],
      grid.cell(rowspan: 2, rect(width: 100%, height: 100%, stroke: none)[
        #set align(center)
        #set text(fill: colors.accent)
        #body
      ]),
      [
        #box(
          height: 100%,
          width: 100%,
          inset: 8%,
          radius: 4%,
          fill: colors.light-primary,
          // fill: colors.light-primary,
          [
          #set align(center + horizon)
          #set par(justify: true)
          #set text(weight: "semibold", fill: colors.primary-text, size: 25pt)
          #definition
          ]
        )
      ],
    )
  ]
}

#title(title: "COME È FATTO")

// Slide per il quiz
#let quiz(body, found: array) = {
  slide[
    #grid(
      columns: (2fr, 1fr),
      rows: 1fr,
      rect(
        width: 100%,
        height: 100%,
        stroke: none,
        body
      ),
      box(
        height: 95%,
        width: 95%,
        fill: colors.light-primary,
        outset: (6%),
        radius: 4%,
        [
          #set align(horizon)
          #{
            let items = (
              "Fotocamere",
              "Tasti volume",
              "Tasto accensione",
              "Lettore impronte",
              "Ricarica wireless",
              "Porte d'ingresso",
              "Sportello sim e sd",
              "Switch suoneria",
            )
            for (index, item) in items.enumerate() {
              if found.contains(index) {
                set text(fill: colors.accent, weight: "black")
                [- #item]
              }
              else {
                [- #item]
              }
            }
          }
        ]
      )
    )
  ]
}

#let quiz-smarphone(found: array) = {
  quiz(found: found)[
    #set align(horizon)
    #rect(
      stroke: none,
      width: 97%,
      grid(
        column-gutter: 0.3em,
        columns: (2fr, 1fr, 2fr, 1fr),
        image("img/cmf_front.png"),
        image("img/cmf_left.png"),
        image("img/cmf_back.png"),
        image("img/cmf_right.png"),
      )
    )
  ]
}

#quiz-smarphone(found: ())
#quiz-smarphone(found: (0,))
#quiz-smarphone(found: (0,1))
#quiz-smarphone(found: (0,1,2))

#slide[
  #set align(center + horizon)
  #box(
    // stroke: (5pt + black),
    radius: 10%,
    height: 89%,
    clip: true,
    image("img/fingerprint.jpg")
  )
]

#quiz-smarphone(found: (0,1,2,3))

#slide[
  #set align(center + horizon)
  #box(
    height: 89%,
    clip: true,
    image("img/wireless.jpg")
  )
]

#quiz(found: (0,1,2,3,4))[
  #set align(horizon)
  #box(
    width: 95%,
    image("img/ports.jpg")
  )
]

#quiz(found: (0,1,2,3,4,5))[
  #set align(horizon)
  #box(
    clip: true,
    height: 81%,
    radius: 10%,
    image("img/sd_sim.jpg", width: 93%)
  )
]

#quiz(found: (0,1,2,3,4,5,6))[
  #set align(horizon)
  #rotate(
    -0.7rad,
    box(
      clip: true,
      image("img/iphone_switch.jpg", width: 100%)
    )
  )
]

#quiz(found: (0,1,2,3,4,5,6,7))[
  #set align(center)
  #set text(size: 350pt, fill: colors.accent)
  󱁖
]

#title(title: "UN PO' DI TEORIA")

#definition(
  word: "Account", 
  definition: "L’insieme delle informazioni (email, password, ecc.), depositate presso il provider, che identificano l’utente",)[
  #set text(size: 146pt)
  󰀉 \ 
]

#definition(
  word: "Provider",
  definition: "Un provider è, ad esempio, un’azienda che fornisce l’accesso a dei servizi come Internet (Linkem, Iliad, ...), alla posta elettronica (Gmail, OutLook, ...), al cloud (Drive, ...) alla telefonia (Wind, Vodafone, ...)
")[
  #set text(size: 146pt)
  󰊫 \ 
]

#definition(
  word: "Email",
  definition: "La posta elettronica è un sistema di trasmissione di messaggi in formato digitale attraverso internet.")[
  #set text(size: 146pt)
  󰇮 \ 
]

// TODO: metti immagine con con "circa uguale" in mezzo, dove da un lato ci sta carta identità + stato e dall'altro account + app

// TODO: Immagine di una pizza per via dell'esemprio

l'account è il modo con cui siti e app ci riconoscono, fornendoci e conservando i dati che riguardano solo noi:
- Prendo il telefono e chiamo la pizzeria
- Dico che voglio 2 margherite per le 20:00
- Il pizzaiolo mi chiede "a che nome?"
- Io faccio silenzio e metto giù
- Quando andrò alle 20:00 a prendere le mie pizze, il pizzaiolo non saprà mai che sono quello che ha ordinato quelle pizze, anzi, probabilmente
  non le ha nemmento fatte visto che non ha saputo per chi fossero
Al contrario, se avessi detto il mio nome, in questo momento avrei ritirato le mie pizze

Nel mondo dell'informatica vale la stessa cosa: 
- Scaricate l'app della banca 
- volete sapere quanti soldi avete sul conto:
- Quindi aprite l'app e indovinate cosa vi chiederà? I dati del vostro account
- Se voi non li metterete non potrete mai sapere dall'app quanti soldi avete sul conto, al contrario, inserendoli avrete accesso ai dati del vostro conto

Quindi come con il pizzaiolo, se non date un modo per farvi riconoscere non potete ottenere quello che volete o cercate perché le vostre pizze, come i vostri
dati devono essere riservati solo per voi

Quindi l'account è come una carta d'identità

Ora riflettete su questo: 
- voi avete una carta d'identità italiana perché vivete in Italia, così lo stato italiano può riconoscervi
- andate poi in germani e avrete anche una carta d'identità tedesca
- andate poi in Canada e avrete anche una carta d'identità canadese
- ecc.

La stessa cosa vale per app e siti:
- usate netflix allora avete un account netflix
- usate youtube allora avete un account youtube
- usate facebook allora avete un account facebook

Quindi fin qua sembra che le app siano gli "stati" e gli account le carte d'identità

// TODO: metti immagine con account google da cui vanno delle frecce verso youtube, drive, gmail ecc...
Ricordiamoci che nel mondo digitale è possibile facilitarci la vita: molte app e siti vi permetteno di riciclare account che già avete
- youtube vi permette di usare un account google
- TROVA_APP vi permette di usare un account google o facebook
- ecc.
Quindi c'è anche questo aiuto

L'importante è ricordarsi che:
- un'app o sito deve riconoscerci tramite un account
- a volte si può evitare di creare l'ennesimo nuovo account e utilizzarne uno già esistente

Ora che sappiamo degli elementi fondamentali, vediamo di comprarci un telefono

= Quale scegliere?
PARLARE DI NOTHING E ONEPLUS
// TODO: immagine con da un lato Toyota con [€ - €€€] e dall'altro Audi con [€€€ - €€€]

Partiamo con una metafora:
- Toyota produce dalle auto economiche ad auto costose
- Audi produce solo auto costose

Quindi vuol dire che tutte le audi avranno interni belli, comodi, motore silenzioso e potente, e altri comfort
Al contrario Toyota avrà alcune auto con semplici interni, meno comode, rumorose e lente, mentre altre saranno belle, comode, potenti, ecc...

Questo non significa che Toyota non sappia quello che sta facendo e produca auto economiche, come audi non significa che sia un marchio dotato
di qualche incredibile capacità nel produrre sempre auto di alta qualità: è tutto una questione di costi

Se pago 40.000 € per forza mi ritrovo con un auto molto buona e ovviamente non può competervi un auto da 10.000 €

// TODO: immagine con da un lato Android con [€ - €€€] e dall'altro Apple con [€€€ - €€€]
La stessa cosa vale per i telefoni e mi riferisco alla differenza tra i smartphone android e gli iphone, quindi per evitare ripetizioni,
applicate quanto ho detto prima mettendo apple al posto di audi e android al posto di Toyota

Questo non significa che i produttori di smartphone android non sappia quello che sta facendo e produca alcuni telefoni scadenti, come apple non significa che sia un marchio dotato
di qualche incredibile capacità nel produrre sempre telefoni di alta qualità: è tutto una questione di costi

Detto questo, vi consiglio di rimanere nella seguente fascia di prezzo se non siete utenti con particolari bisogni

Inserire siti che vendono smartphone ricondizionati

ciao

#set align(center)
#cetz.canvas({
  import cetz.draw: *
  set-style(stroke: (paint: red, thickness: 50pt), content: (frame: "rect", stroke: none, fill: yellow.transparentize(100%),))
  line((0,0),(2,0), stroke: (paint: red, thickness: 50pt), name: "less")
  line((2,0),(16,0), stroke: (paint: green, thickness: 50pt), name: "right")
  line((16,0),(24,0), stroke: (paint: red, thickness: 50pt), name: "more")

  content("less.start", [\ 0€], anchor: "north")
  content("right.start", [\ 150€], anchor: "north")
  content("right.end", [\ 500€], anchor: "north")
  content("more.end", [\ ...€], anchor: "north")
  // content((name: "less", anchor: (3,3)), [100€])

})
#set align(left)

// TODO: metti immagine super carica per inculcare la bellezza dell'usato
Quindi diciamo che risulta essere quasi sottointeso che vi sconsigli di prendere un iphone ma ricordatevi che tutto questo discorso
si basa sul fatto che dia per scontato che conosciate al massimo le basi, un utente consapevole è in grado di scegliere il miglior telefono che fa al caso suo,
quindi non considerate le mie parole come un dogma ma basate sulla supposizione che vi ho detto pocanzi

// Metti screen di un telefono android da nuovo e poi da usato recente e la stessa cosa con u iPhone

= Abbiamo comprato il nostro telefono, ora dobbiamo accenderlo

/// Adesso vi faccio vedere tutto il processo di setup di un telefono ANDROID, iPhone no perché Apple non permette di creare un finto telefono nel computer e anche perché credo sia una scelta sbagliata

/// Processo di setup del dispositivo

= Ora dobbiamo capire come muoverci
/// far vedere anche i widget e cose del genere, deve essere uno showcase piuttosto completo
muoversi nella home, pannello notifiche, apertura app, pressione continua su app per ulteriori funzioni ecc.

Trasfroma in un breve quiz il dirti cosa fanno i 3 pulsanti sui telefoni android (back, home, app aperte) e come si chiama il gesto di fare swipe

Dai definizione di 
- swipe
- home
- app aperte

Pannello delle notifiche: oltre alle notifiche ci sono pulsanti che fanno "attiva/disattiva": in base al tempo vedi se approfondire cosa fanno i pulsanti più importanti


Arriva ad avere un telefono che sia connesso ad internet, iscriviti al playstore e scarica un'app

