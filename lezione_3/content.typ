#import "../template-alfianellux/alfianellux.typ" : *
#import "../template-alfianellux/colors.typ" : colors
#import "../template-alfianellux/slides.typ" : *

#title(title: "SICUREZZA")

#horizontal-slide(title: "Smartphone")[
  Va protetto tramite una o più delle seguenti misure di sicurezza:
  - PIN
  - Segno
  - Password
  - Impronta digitale
  - Riconoscimento facciale
]

#horizontal-slide(title: "Account")[
  Applichiamo le seguenti precauzioni per rendere il nostro account più sicuro:
  - 2FA
  - Mail di recupero
  - Telefono di recupero
]

#definition(
  word: "OTP", 
  definition: "Codice numerico monouso usato per verificare l'identità in una transazione o login (es. ricevuto via SMS o app autenticatore)."
)[
  #set align(center)
  #set text(size: 350pt, fill: colors.accent)
  󰬺
]

#definition(
  word: "2FA", 
  definition: "Autenticazione a due fattori; metodo di sicurezza che richiede due prove d'identità indipendenti (es. password + OTP, oppure password + dispositivo)."
)[
  #set align(center)
  #set text(size: 145pt, fill: colors.accent)
  󰟵 \
  
]

#horizontal-slide(title: "Password")[
  #set align(horizon + center)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    row-gutter: 16pt,
    [Salvare password nei browser],
    [Usare un gestore di password],
    image("img/close.svg", width: 60%),
    image("img/accept.svg", width: 53%),
  )
]

#definition(
  word: "Gestore password", 
  definition: "Applicazione che memorizza e genera password sicure, sincronizzandole su dispositivi e compilando i form di login automaticamente."
)[
  #set align(center + horizon)
  #set text(size: 195pt, fill: colors.accent)
  
]

#horizontal-slide(title: "Password: compromesso")[
  #set align(horizon + center)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    row-gutter: 16pt,
    [Salvare su carta (al sicuro)],
    grid.cell(rowspan: 2, box(
      clip: true,
      // height: 81%,
      radius: 10%,
      image("img/writer.jpg", width: 50%)
    )),
  
    rotate(45deg, image("img/forbid.svg", width: 60%)),
  )
]

#horizontal-slide(title: [La sicurezza vien prestando attenzione])[
  #set align(horizon + center)
  #box(
      clip: true,
      height: 89%,
      radius: 10%,
      image("img/incrocio.jpg", width: 100%)
    )
]

#title(title: "I X COMANDAMENTI")

#show image: set align(center + horizon)
#commandment(number: "I")[Non premerai a caso lo schermo]

#commandment(number: "II")[Non cederai al panico di fronte a schermate complesse]
#image("img/screen1.jpeg", height: 89%)
#image("img/screen2.jpeg", height: 99%)

#commandment(number: "III")[Cercherai la soluzione al tuo problema online, prima di arrenderti]

#commandment(number: "IV")[Non darai i tuoi dati con leggerezza]
// parla del fatto che i dati molte volte sono una cosa di alto valore
// se qualcosa è gratis allora il prodotto sei tu
// mostrare messaggi scam in cui viene chiesto di inserire dati

#commandment(number: "V")[Non ti spaventerai di fronte a messaggi e email sospetti]
#image("img/sms.jpeg", width: 70%)
#image("img/mail.jpeg", height: 100%)
// mostrare immagini di esempio

#commandment(number: "VI")[Verificherai sempre le fonti]
// numeri telefono, indirizzi email, mittente messaggio, ecc...

#commandment(number: "VII")[Non darai la colpa alla tecnologia quando non sai fare qualcosa]

#commandment(number: "VIII")[Non aprirai pubblicità in siti e app]
#image("img/ads.jpeg", width: 65%)
#definition(
  word: "Deepfake", 
  definition: "Contenuto multimediale (video, audio, immagine) falsificato tramite intelligenza artificiale per far sembrare reali persone o eventi non autentici."
)[
  #set align(center + horizon)
  #set text(size: 218pt, fill: colors.accent)
  󱡄
]
#image("img/deepfake.jpg", width: 80%)
#image("img/ai_person.jpg", width: 65%)

#commandment(number: "IX")[Rifiuterai tutti i cookies possibili]
#image("img/cookies.png", width: 89%)
// riprende un po' IV

// #definition(
//   word: "Newsletter", 
//   definition: "Comunicazione periodica inviata via email a iscritti contenente aggiornamenti, notizie o promozioni."
// )[]

#commandment(number: "X")[Ti rivolgerai alle autorità se sarai in guai seri]
