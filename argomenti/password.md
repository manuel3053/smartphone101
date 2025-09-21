# Accessi e password

Panoramica degli argomenti:

- Perché avere password diverse
  - Login come azione super quotidiana
  - Simpatia su stessa password ovunque/$n$ password a rotazione
  - Anticipazione su SPID per 2FA
  - Password manager come soluzione alla pigrizia
- Password manager
  - Salva nome utente, password e sito cosicché l'utente non debba ricordare + Autocompletamento
  - "Primo incontro" a questi software coi gestori di samsung, google, apple + svantaggi
  - Svantaggi parzialmente risolti con carrellata di sofware: lastpass, dashlane, onepassword + keepassxc
  - Bitwarden, software che risolve i problem (come Wolf) + config
- Autenticazione a 2 fattori
  - Perché la password può non essere è sufficiente => Banca, SPID
  - Elaborare sullo SPID (+ CIE) spiegando da manuale cosa significa 2FA, 3FA etc
  - Esempi con SMS, notifica sul cell (mail, chiamata...)
  - Software vari: Stratum (ex AuthenticatorPro), Authy, Google Authenticator, Microsoft Authenticator
  - Approfondimento su passkey, passphrase

# Script

## Perché avere password diverse

Tutti i giorni, nel momento che avviamo un browser, quasi sicuramente faremo l'accesso a uno o più siti: può semplicemente essere il login su Google per guardare le mail su Gmail, un video su YouTube; un login su Amazon per comprare qualcosa; oppure ancora un giretto su Facebook per scrivere con quella distante amicizia.

Sicuramente la combinazione di nome utente e password, cioè le credenziali di accesso, sono decisamente comuni nella vita di tutti i giorni.

Ma giustamente, quando c'è da inventarsi una password, può essere... come dire... noioso creare, tutte le volte da zero, una diversa -- e soprattutto ricordarsela. Quindi perché non usare sempre quella, ovunque? così non devo pensare ogni volta e non posso scordarmela. Oppure! oppure la furbizia aumenta e posso inventarmi un certo numero di password che, all'occorrenza, uso: se non va una dev'essere l'altra, no?

Ebbene... questi sono _grandi classici_ che piacciono parecchio ai cracker. Si semplifica molto il lavoro di furto dell'account. Ecco perché è importante avere tante password diverse e impegnarsi nel proteggere i propri account: non è quello che già facciamo con la banca? con lo SPID? nessuno usa una password semplice con la banca, o comunque nessuno _semplicemente_ entra nel proprio conto con semplice nome utente e password.

Giustamente ci si domanda: "Ma io non né ne voglia né tempo di pensare password diverse per ogni cosa: ho decine di account! impazzirei. Non voglio usare un quaderno, né niente" (che sicuramente è una buona idea ma è umanamente limitato). Ebbene, c'è una soluzione migliore: i _password manager_, o gestore di parole d'ordine (non che suoni bene...).

## Che cos'è un password manager

Un password manager è un tipo di softare che, come dice il nome, aiuta a gestire le proprie password: essi salvano il connubio (eheh) nome utente e password cosicché tu, utente, non debba ricordarsi ogni cosa. Solitamente salvano anche il sito web associato per poter autocompletare la password; tradotto, al posto di scrivere ogni dannatissima volta la `nome.cognome@mail.com` e la password associata _viene fatto tutto automaticamente in un colpo solo_. E non sono software così moderni: esistono da almeno una decina d'anni.

Molti probabilmente avranno presenti le versioni integrate delle grandi aziende come Google, Samsung ed Apple -- rispettivamente Google Keep, Samsung Pass e Apple Keychain. Magari il nome non dice nulla, ma se sul proprio cellulare si digita una password -- in qualsiasi luogo: nel browser, in un'app... -- può apparire una notifica che provenga da questi tre. E magari chi li ha usati si non ha avuto problemi: d'altronde sono integrati e semplici. Per carità, per cose super basilari possono andare bene -- ma _non sono consigliabili_. E questo per parecchi motivi.

In primis, tutti e tre obbligano l'utente ad essere schiavo dei prodotti di quella azienda: per vedere e utilizzare i propri login al di fuori del cellulare bisogna usare un altro loro servizio. Questo aspetto riguarda Apple in particolar modo -- dato che tutta la sua identità di basa sul cosidetto ecosistema che viene spesso definito _walled garden_, cioè un paradiso da cui non si può uscire -- che _bisogna_ per forza possedere un dispositivo Apple; Samsung stesso discorso per i telefoni; infine per Google si deve usare Google Chrome.

In secondo luogo, sono **informazioni sensibili** date in pasto ad aziende multinazionali che non hanno alcuna cura dell'utente: basti pensare alle invasioni di privacy di cui sono state tutte accusate molteplici volte nel corso della loro esistenza. Questo non è per dire che è probabile che i login scompaiano, bensì che è l'ennesima forma di completa dipendenza nei confronti di un gigante tecnologico.

In terzo luogo, è difficile scappare: se anche fosse possibile esportare tutti i propri dati, sarebbe immensamente difficoltoso. Queste aziende NON hanno interesse che l'utente abbia possibilità di scelta: ognuno vuole che si usi il proprio perché è il proprio, non perché è il migliore.

Infine offrono pochissime funzioni, se non praticamente nulla. Oltre un rudimentale login e password, è finita lì: non c'è la generazione automatica di per sé, non si possono salvare altre informazioni spesso ricompilate (carte di credito, proprio dati personali...) e nemmeno l'autenticazione a due fattori -- di questo se ne parlerà dopo.

La soluzione è chiaramente semplice: cambiare software. Fortunamente ne esistono miriadi -- per citarne alcuni: LastPass, Dashlane, OnePassword... se da un lato questi superano tutti i problemi degli altri tre password manageer, dall'altro se ne aggiungono di natura commerciale: per andare oltre le banali funzionalità di login e password è sempre necessario pagare. E rimane comunque il problema che sono informazioni sensibili in mano ad aziende a scopo di lucro: fidarsi è bene, non fidarsi è meglio.

Il miglior password manager in assoluto si chiama Bitwarden: è multipiattaforma (su qualsiasi sistema operativo, in qualsiasi browser, in qualsiasi telefono), è completamente aperto ed è un'azienda indipendente che fa solo quello, è facilissimo importare ed esportare tutti i dati (casomai si volesse passare a Bitwarden o, al contrario, andarsene) ed è pienissimo di funzioni -- dalla generazione delle password, alle passphrase, alle passkeys... È incomparabilmente meglio di tutta la competizione e non c'è motivo di non usarlo, o di usare qualsiasi altro password manager.

Certo, solitamente si tende a dire "Otteni quello che paghi" e in questo caso pagando nulla si dovrebbe ottenere nulla: ma con i software open source non è _mai_ così, anzi, generalmente se sono adottati a larga scala vuol dire che sono oggettivamente i migliori (ovvero sia sotto l'aspetto puramente funzionale ma anche economico, dato che è assente qualsiasi costo). Senza considerare la piena libertà di uso, senza dover sottostare ad una grande azienda.

<!-- configurazione di bitwarden -->

## Autenticazione a due fattori
