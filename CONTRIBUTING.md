# Contribuire al Repository Testing

Grazie per il tuo interesse nel contribuire a questo progetto! Diamo il benvenuto ai contributi di tutti e apprezziamo il tuo impegno nel migliorare questo repository.

## Indice

- [Codice di Condotta](#codice-di-condotta)
- [Per Iniziare](#per-iniziare)
- [Configurazione dello Sviluppo](#configurazione-dello-sviluppo)
- [Come Contribuire](#come-contribuire)
- [Standard di Codifica](#standard-di-codifica)
- [Linee Guida per i Test](#linee-guida-per-i-test)
- [Linee Guida per i Messaggi di Commit](#linee-guida-per-i-messaggi-di-commit)
- [Processo di Pull Request](#processo-di-pull-request)
- [Segnalazione di Problemi](#segnalazione-di-problemi)
- [Domande e Supporto](#domande-e-supporto)

## Codice di Condotta

Partecipando a questo progetto, ci si aspetta che tu rispetti il nostro impegno a fornire un ambiente accogliente e inclusivo per tutti. Si prega di essere rispettosi, premurosi e professionali in tutte le interazioni.

## Per Iniziare

1. **Fai un fork del repository** sul tuo account GitHub
2. **Clona il tuo fork** localmente:
   ```bash
   git clone https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git
   cd REPOSITORY-NAME
   ```
3. **Crea un nuovo branch** per le tue modifiche:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Configurazione dello Sviluppo

Questo è un progetto Ruby. Per configurare il tuo ambiente di sviluppo:

### Prerequisiti

- Ruby (versione 3.0 o superiore raccomandata)
- Git

### Installazione

1. Installa le dipendenze (se presenti):
   ```bash
   bundle install
   ```
   Se non hai ancora un Gemfile, puoi saltare questo passaggio.

2. Verifica la tua configurazione eseguendo i test:
   ```bash
   ruby alpaca_test.rb
   ```

## Come Contribuire

Diamo il benvenuto a vari tipi di contributi:

- **Correzioni di bug**: Aiutaci a risolvere i problemi nel codice
- **Nuove funzionalità**: Aggiungi nuove funzionalità per migliorare il progetto
- **Documentazione**: Migliora o aggiungi documentazione
- **Test**: Aggiungi o migliora la copertura dei test
- **Refactoring del codice**: Migliora la qualità e la manutenibilità del codice

### Prima di Iniziare

- Controlla la pagina dei Problemi per vedere se qualcuno sta già lavorando su una funzionalità simile o correzione di bug
- Per modifiche importanti, apri prima un problema per discutere cosa vorresti cambiare
- Assicurati che le tue modifiche siano in linea con gli obiettivi e l'ambito del progetto

## Standard di Codifica

Si prega di seguire questi standard di codifica per mantenere la coerenza:

### Guida allo Stile Ruby

- Segui la [Guida allo Stile Ruby](https://rubystyle.guide/)
- Usa 2 spazi per l'indentazione (non tab)
- Mantieni le righe a una lunghezza ragionevole (80-120 caratteri)
- Usa nomi descrittivi per variabili e metodi
- Scrivi commenti chiari e concisi quando necessario

### Qualità del Codice

- **Nessuna istruzione di debug**: Rimuovi tutte le istruzioni `puts` e le chiamate `binding.pry` prima di inviare la tua PR
  - La nostra suite di test controlla questi e fallirà se sono presenti
- **Mantienilo semplice**: Scrivi codice pulito e leggibile
- **Principio DRY**: Non Ripeterti - riutilizza il codice quando appropriato
- **Responsabilità Singola**: Ogni metodo dovrebbe fare una cosa bene

### Documentazione

- Aggiungi commenti per la logica complessa
- Aggiorna la documentazione se modifichi la funzionalità
- Includi esempi dove utile

## Linee Guida per i Test

Tutte le modifiche al codice dovrebbero includere i test appropriati:

### Esecuzione dei Test

Esegui la suite di test per verificare le tue modifiche:

```bash
ruby alpaca_test.rb
```

### Scrittura dei Test

- Scrivi test per nuove funzionalità e correzioni di bug
- Segui la struttura dei test esistente e le convenzioni di denominazione
- Assicurati che tutti i test passino prima di inviare la tua PR
- Testa i casi limite e le condizioni di errore

### Requisiti dei Test

- I test dovrebbero essere chiari e descrittivi
- Ogni test dovrebbe testare un comportamento specifico
- Usa messaggi di asserzione significativi
- Pulisci eventuali dati di test o stato dopo l'esecuzione dei test

## Linee Guida per i Messaggi di Commit

Scrivi messaggi di commit chiari e significativi:

### Formato

```
<tipo>: <breve riepilogo>

<descrizione dettagliata opzionale>
```

### Tipi

- `feat`: Una nuova funzionalità
- `fix`: Una correzione di bug
- `docs`: Modifiche alla documentazione
- `style`: Modifiche allo stile del codice (formattazione, ecc.)
- `refactor`: Refactoring del codice
- `test`: Aggiunta o aggiornamento dei test
- `chore`: Attività di manutenzione

### Esempi

```
feat: aggiungi metodo per calcolare il tasso di crescita della pelliccia

fix: correggi la validazione dell'età nel costruttore Alpaca

docs: aggiorna README con esempi di utilizzo

test: aggiungi test per il metodo feed
```

### Migliori Pratiche

- Usa il modo imperativo ("aggiungi funzionalità" non "aggiunta funzionalità")
- Mantieni la prima riga sotto i 50 caratteri
- Inizia con la lettera maiuscola
- Nessun punto alla fine del riepilogo
- Fornisci contesto aggiuntivo nel corpo se necessario

## Processo di Pull Request

1. **Aggiorna il tuo branch** con le ultime modifiche da main:
   ```bash
   git fetch origin
   git rebase origin/main
   ```

2. **Esegui tutti i test** per assicurarti che nulla sia rotto:
   ```bash
   ruby alpaca_test.rb
   ```

3. **Verifica la qualità del codice**:
   - Rimuovi eventuali istruzioni di debug (`puts`, `binding.pry`)
   - Controlla la formattazione e lo stile corretti
   - Assicurati che tutti i commenti siano chiari e necessari

4. **Pusha le tue modifiche** sul tuo fork:
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Crea una Pull Request**:
   - Vai al repository originale su GitHub
   - Clicca su "New Pull Request"
   - Seleziona il tuo fork e branch
   - Compila il template della PR con:
     - Descrizione chiara delle modifiche
     - Perché le modifiche sono necessarie
     - Come testare le modifiche
     - Eventuali problemi correlati

6. **Rispondi ai feedback**:
   - Affronta i commenti della revisione prontamente
   - Apporta le modifiche richieste in nuovi commit
   - Aggiorna la tua PR con contesto aggiuntivo se necessario

7. **Attendi l'approvazione**:
   - È richiesta almeno una revisione del maintainer
   - Tutti i controlli CI devono passare
   - Una volta approvato, un maintainer unirà la tua PR

## Segnalazione di Problemi

Se trovi un bug o hai un suggerimento:

### Prima di Creare un Problema

- Cerca i problemi esistenti per evitare duplicati
- Raccogli informazioni rilevanti sul problema

### Creazione di un Problema

Includi le seguenti informazioni:

- **Titolo chiaro**: Descrivi brevemente il problema
- **Descrizione**: Spiegazione dettagliata del problema o suggerimento
- **Passaggi per riprodurre** (per i bug):
  1. Cosa hai fatto
  2. Cosa ti aspettavi che accadesse
  3. Cosa è successo effettivamente
- **Dettagli dell'ambiente**:
  - Versione di Ruby
  - Sistema operativo
  - Qualsiasi configurazione rilevante
- **Esempi di codice**: Includi codice minimo per riprodurre il problema
- **Messaggi di errore**: Includi messaggi di errore completi e stack trace

### Etichette dei Problemi

Utilizziamo etichette per categorizzare i problemi:

- `bug`: Qualcosa non funziona
- `enhancement`: Nuova funzionalità o richiesta
- `documentation`: Miglioramenti alla documentazione
- `good first issue`: Buono per i principianti
- `help wanted`: È necessaria attenzione extra

## Domande e Supporto

Se hai domande o hai bisogno di aiuto:

- **Controlla i problemi esistenti**: La tua domanda potrebbe già avere risposta
- **Apri un nuovo problema**: Usa il tracker dei problemi per le domande
- **Sii paziente**: I maintainer risponderanno il prima possibile
- **Sii rispettoso**: Ricorda che i maintainer sono spesso volontari

## Riconoscimenti

Tutti i contributori saranno riconosciuti per i loro contributi. Grazie per aver reso questo progetto migliore!

---

**Buon Contributo!** 🎉

Apprezziamo il tuo tempo e impegno nel contribuire a questo progetto. Ogni contributo, non importa quanto piccolo, fa la differenza!
