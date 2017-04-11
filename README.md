# Marcin Lis

## MoviesExplorer
Serwis służący do przeglądania filmów.
<br/><br/>

## Działanie
Admin dodaje filmy wraz z opisem i gatunkiem. Użytkownicy mogą te filmy przeglądać oraz pobierać plik .pdf z ich opisem.
<br/><br/>

## Użyte gemy
### Clearance
Gem użyty do stworzenia systemu rejestracji oraz logowania. Po instalacji gem generuje model User oraz plik konfiguracyjny. Następnie aby użyć gemu, należy przejść do odpowiedniego kontrolera i dodać linijkę **before_action :require_login**. Możliwe są również bardziej rozbudowane wymagania. Dodatkowo do Usera dodałem rekord **Role**, aby odróżniać admina od zwykłego użytkownika. Dzięki temu w widokach mogłem wyświetlać odpowiednie opcje dla użytkowników w zależności od ich roli.

### wkhtmltopdf-binary, pdfkit
Gem służący do generowania plików PDF za pomocą HTML i CSS. Przykład użycia:
```
kit = PDFKit.new('<h2><center>' + @movie.title + '</center></h2><br/><p>' +
                     @movie.description + '</p><br/><a href="' +
                     request.original_url + '">' +
                     request.original_url + '</a>')

kit.to_file('public/pdf/' + @movie.title + '.pdf')
```
Aby pobrać plik PDF, należy przejść w zakładkę **Movies**, nastepnie wybrać konkretny film i kliknąć **Download PDF**.

### sqlite3 (lokalnie), pg (serwer)
Bazy danych wykorzystane w serwisie. 
* Sqlite3 wykorzystane na serwerze lokalnym podczas tworzenia strony,
* PostgreSQL wykorzystany na serwerze.

### bootstrap-sass
Gem do zaimportowania bootstrapa.

-----------------

Logowanie do panelu admina:
* login: admin@test.pl
* hasło: admin
