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
  - Svantaggi parzialmente risolti con carrellata di software: lastpass, dashlane, onepassword + keepassxc
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

Un password manager è un tipo di sofwtare che, come dice il nome, aiuta a gestire le proprie password: essi salvano il connubio (eheh) nome utente e password cosicché tu, utente, non debba ricordarsi ogni cosa. Solitamente salvano anche il sito web associato per poter autocompletare la password; tradotto, al posto di scrivere ogni dannatissima volta la `nome.cognome@mail.com` e la password associata _viene fatto tutto automaticamente in un colpo solo_. E non sono software così moderni: esistono da almeno una decina d'anni.

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

A ognuno il suo e quindi, in base al livello di sicurezza necessario, è utile impiegare misure più o meno efficaci: per l'accesso al computer portatile che si ha solo a casa sicuramente la password `1234` non è il massimo ma va bene comunque; con l'account al volo del quotidiano di turno magari un qualcosa di semplice pure è accettabile. Ma per servizi più importanti come la banca?

_Nessuna banca_ permette ai propri utenti di avere una password semplice con solo numeri o solo lettere; lo stesso dicasi per lo SPID. O meglio ancora: nessun banca permette ai propri di usare di accedere _soltanto usando delle credenziali_. Questi prodotti richiedono un elevato livello di sicurezza -- oserei dire il più alto livello di sicurezza per la persona comune -- perché, come già ampiamente scritto prima, sono coinvolti **dati sensibili** -- e il "Eh ma io non ho niente da nascondere!" **non esiste**. Ed è proprio questo il fondamento dell'autenticazione a due fattori (2FA, _Two Factor Authentication_).

Come si può intuire dalla nomenclatura, essa si affida ad almeno due fattori, che altro non sono che delle misure di sicurezza per dimostrare la propria identità: uno di essi è proprio la canonica password. Nel caso dello SPID invece, a seconda delle proprie preferenze, ce ne sono di due tipi: o il codice numerico di sei cifre, ossia OTP (_One Time Password_) oppure la notifica sul telefono. Ma i fattori sono parecchi: una mail, un SMS, una chiamata...

Per questo motivo la generalizzazione dell'autenticazione a due fattori è quella a multi fattori (MFA, _Multi Factor Authentication_). Per lo SPID si possono impiegare tre fattori, cioè la password, l'OTP e la CIE (Carta d'Identità Elettronica). Per la banca solitamente sono la password e l'OTP (oppure una notifica). Per il resto della sezione scriverò comunque 2FA, dato che MFA è un po' troppo per servizi ad uso personale e "civile".

Di base un ragionamento simile lo applica anche Google: quando si effettua l'accesso su nuovo dispositivo (o browser) spesso viene richiesto di approvarlo dal proprio dispositivo premendo "Sì" su una notifica o un numero. Stesso ragionamento per Amazon.

Come scritto prima la 2FA è buona regola quando il servizio richiede una certa dose di sicurezza. Chiaramente sarebbe meglio attivarla ovunque, dove possibile, ma giustamente, come per le password: chi ne ha voglia?! Si torna sempre qua. In ogni caso, analogamente ai password manager, esistono parecchi software che si occupano del 2FA.

Molto probabilmente ci sarà chi ha presente Google Authenticator, che è quello "di base" in moltissimi casi. Altri invece, magari a causa del lavoro, avranno presente Microsoft Authenticator, che è quello base per questioni lavorative. Non mi dilungherò: essi soffrono delle stesse problematiche dei password manager delle grandi aziende -- perché sono software delle grandi aziende, mica per niente. E la soluzione è sempre usare alternative.

Il grande problema di Google Authenticator, ed è per questo che è un software di bassissima lega, è che non permette di effettuare un qualsiasi tipo di backup: se io ho venti account con il 2FA e il telefono esplode, allora a quei venti account non accederò **mai più** (si leggano le recensioni e se ne avrà la conferma). Per sistemare questo problema una sua molto comune alternativa è Twilio Authy, che permette di sincronizzare i propri codici 2FA su diversi dispositivi: se ne esplode uno ce n'è un altro.

Anche Authy comunque è di un'azienda relativamente grande e quindi, di nuovo, i problemi sono sempre i medesimi. Pertanto quello che consiglio di usare è, su Android perlomeno, Stratum. È esattamente come Bitwarden[^1]: è liberissimo, permette di importare ed esportare tutti i contenuti ed è gratuito.

[^1]: Anche Bitwarden permette di utilizzare i codici 2FA ma è necessario il premium al misero costo di €11/anno. Si ha il beneficio aggiuntivo di avere l'autocompletamento anche per quelli però.

### La terza via

> [!NOTE]
> Questo è più un approfondimento che un argomento di cui parlare.

Quanto è comodo e semplice accedere al telefono o al computer usando l'impronta o il viso? e se fosse così _per tutti gli accessi_? ebbene questo è già realtà e la risposta si chiama passkey. Essa altro non è che una specie di chiave che permette di effettuare i propri accessi, senza dover inserire alcuna password. Spesso infatti si dice che il futuro sarà _password-less_, cioè senza password, proprio grazie alle passkey.

Esse possono essere di tipo puramente digitale -- ad esempio salvandole, indovina un po', proprio in Bitwarden -- oppure di tipo fisico. Queste ultime sono chiavette USB che si inseriscono nel computer e da lì vengono pescate le informazioni necessarie all'autenticazione. La più famosa e utilizzata in questo campo si chiama Yubikey.

In conclusione, in alternativa alle password, esistono anche le passphrase: dal nome si può intuire che sono "frasi d'ordine" (come le password sono "parole d'ordine") -- infatti esse sono sequenze di parole, separate da trattini. In genere sono più lunghe delle password ma non contengono numeri o caratteri speciali (cioè quelli degli insulti nei fumetti: !@#$%§, che in inglese si chiamano _grawlix_ da _growl_, ringhio).
