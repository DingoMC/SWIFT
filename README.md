### System wspomagania funkcjonowania małej firmy transportowej

## 1. Model biznesowy
Firma transportowa prowadzi usługi przeprowadzkowe na terenie województwa. Klientami mogą być osoby prywatne, ale również niewielkie firmy, które chciałyby przykładowo przenieść swoją siedzibę. Obecnie, firma  nie posiada elektronicznego systemu planowania swojej pracy. Wszystkie rezerwacje terminów zleceń, grafików pracowników, księgowości oraz dostępności pojazdów prowadzone są w formie papierowej. Dlatego głównym zadaniem jest wdrożenie nowego elektronicznego systemu realizującego wszystkie powyższe zadania.

## 2. Określenie celu, zakresu i kontekstu
Celem systemu jest pełna automatyzacja oraz wsparcie czynności związanych ze świadczenie usług firmy przeprowadzkowej oraz wspomaganie czynności wewnątrz firmy.

Zakres systemu:
- Ewidencja zleceń składanych przez klienta wraz z możliwością zmiany lub anulowania zleceń
- Wsparcie osoby odpowiedzialnej za koordynację zleceń przy pomocy przejrzystego interfejsu
- Planowanie pracy poszczególnych pracowników firmy transportowej z możliwością edycji harmonogramu
- Wystawianie faktur dla klienta oraz wspomaganie pracy księgowości
- Rezerwacja pojazdów do konkretnych zleceń oraz optymalizacja trasy przejazdu
- Wspomaganie prowadzenia ewidencji stanu technicznego pojazdów firmowych

Kontekst systemu
Aktualnie firma nie posiada żadnego dedykowanego zautomatyzowanego systemu obsługującego procesy świadczenia usług oraz zdarzenia wewnątrz firmy.
Z tego powodu projektowany system będzie podzielony na kilka funkcjonalności, a każda z nich będzie wykonywać odrębne zadania tj. obsługa i ewidencja zleceń, system finansowo-księgowy, system planowania pracy oraz ewidencja pojazdów.
	
## 3. Specyfikacja zdarzeń biznesowych
- Przyjęcie zlecenia od klienta
- Realizacja zlecenia (Przygotowanie trasy przejazdu, przypisanie pojazdu(-ów) do zlecenia)
- Aktualizacja cennika usług
- Przygotowanie podsumowania okresowego
- Przygotowanie rozliczenia dla Urzędu Skarbowego
- Zmiany w składzie osobowym pracowników
- Zmiany we flocie pojazdów firmowych

## 4. Wymagania funkcjonalne
- „Klient” ustala odpowiadający mu termin przeprowadzki
- „Klient” określa miejsce odbioru oraz dostarczenia ładunku
- „Klient” wybiera metodę płatności za zamówienie
- „Koordynator zamówień” przypisuje dostępny pojazd do nowo otrzymanej rezerwacji
- „Koordynator zamówień” tworzy zespół pracowników i przypisuje ich do nowego zlecenia
- „Kierowca” otrzymuje informację o miejscu odbioru i dostarczenia ładunku
- „Księgowy” otrzymuje wykonane zlecenie i na tej podstawie wystawia fakturę
- „Księgowy” prowadzi rozliczenie finansowe firmy
- „Szef firmy” aktualizuje listę pracowników
- „Szef firmy” aktualizuje flotę pojazdów
- „Konserwator” aktualizuje stan techniczny pojazdów
- Zarządzanie zamówieniami - funkcjonalność związana z określaniem wolnych terminów, śledzenia edycji oraz anulowania zamówień
- Zarządzanie harmonogramem pracy - funkcjonalność pozwalająca ustalić godziny pracy pracowników oraz ich edycję
- Zarządzanie trasami przejazdu - funkcjonalność pozwalająca określić najkrótszą trasę przejazdu transportu
- Zarządzanie finansami firmy - funkcjonalność wspomagająca obliczanie kosztu zamówień, bilansu firmy oraz wystawianie faktur dla klientów
- Zarządzanie flotą pojazdów - funkcjonalność wspomagająca ewidencjonowanie pojazdów oraz aktualizowanie ich stanu technicznego

## 5. Wymagania niefunkcjonalne
- Aplikacja mobilna oraz internetowa ma być dostępna w systemie 24/7/365
- System powinien być skalowalny jednocześnie zapewniając wydajność przetwarzania zamówień 1000 dziennie
- System powinien pracować na środowisku Microsoft .NET oraz dokonywać analizy danych przy pomocy języka - Python
- System powinien działać pod kontrolą systemu operacyjnego Ubuntu Server działającego w chmurze na platformie Microsoft Azure
- System powinien odpowiadać na żądanie użytkownika w czasie nie dłuższym niż 5 sekund
- Zużycie pamięci RAM przez system nie powinno przekraczać 4GB
- System powinien składować dane w najnowszej wersji bazy danych PostgreSQL
- Użytkownicy systemu powinni uzyskać dostęp do jego funkcjonalności przy pomocy dowolnej współczesnej przeglądarki stron internetowych
- Czas uruchomienia po awarii nie powinien przekraczać 1-2 minut

## 6. Historyjki użytkownika
- Jako „szef firmy” chcę sprawnie zarządzać aktami osobowymi pracowników przy użyciu systemu, aby móc zrezygnować z papierowej dokumentacji pracowniczej. Zakładając, że lista pracowników często się zmienia, prowadzenie elektronicznej dokumentacji oraz jej przechowywanie jest lepsze ze względu na brak konieczności prowadzenia fizycznego archiwum danych oraz szybszego dostępu.
- Jako „szef firmy” chcę mieć łatwy dostęp do przeglądu floty dostępnych pojazdów przy użyciu systemu, aby znacząco usprawnić logistykę. Zakładając, że flota pojazdów firmy jest ciągle aktualizowana, zarządzanie pojazdami i ich dostępnością poprzez system znacząco polepszy działanie i wydajność firmy.
- Jako „Księgowy” otrzymuję zlecenie i chcę wystawić fakturę klientowi w formie elektronicznej za pomocą systemu, aby móc usprawnić swoją pracę i ograniczyć do minimum papierową księgowość. Zakładając, że faktur do wystawienia z każdym dniem będzie coraz więcej, wystawianie ich będzie dużo szybsze, a każda nowa faktura będzie widoczna w systemie.
- Jako „koordynator zamówień” chciałbym przypisywać wybrany pojazd z firmowej floty do nowo otrzymanej rezerwacji za pomocą systemu, aby maksymalnie przyśpieszyć proces obsługi klienta. Zakładając, że system posiada zaktualizowaną flotę pojazdów, przydział auta przez system usprawni spedycję. Każdy zajęty lub będący w serwisie pojazd będzie widoczny w systemie.
- Jako „koordynator zamówień” chciałbym tworzyć zespoły pracownicze dopasowując liczbę pracowników do konkretnego zlecenia przy użyciu systemu, aby zoptymalizować wykorzystanie czasu pracowników. Zakładając, że wszystkie utworzone zespoły są w systemie, mam dostęp do listy pracowników nieprzypisanych do żadnego zlecenia oraz listy pracowników „zajętych”. Prosty podział na listy ułatwi dalsze planowanie i podział zadań.
Jako „kierowca” chciałbym mieć szybki dostęp do czasu oraz miejsca załadunku oraz rozładunku oraz dokładnej trasy przejazdu, aby przyśpieszyć proces dotarcia do klienta. Zakładając, że posiadam połączenie z internetem, system na bieżąco aktualizuje trasę dojazdu do klienta na podstawie mojej lokalizacji oraz przypomina o czasie rozpoczęcia załadunku/rozładunku.
- Jako „konserwator” chciałbym mieć możliwość edycji stanu technicznego floty pojazdów w systemie tzn. zaplanowanych wizyt serwisowych, przeglądów stanu technicznego oraz czasu trwania polisy ubezpieczeniowej, aby każdego dnia być pewnym, że samochody są gotowe do wykonania przydzielonych zadań. Jeśli któryś z ww. warunków jest niespełniony, system zabrania przydzielenia auta do zlecenia.
- Jako „księgowy” chcę mieć możliwość prowadzenia rozliczenia finansowego firmy przez system, aby znacząco poprawić dokładność rozliczenia, a także usprawnić sam proces rozliczania.

## 6. Lista przypadków użycia
Dla „Klienta”:
- Złóż rezerwację
- Edytuj szczegóły rezerwacji
- Anuluj rezerwację
- Opłać rezerwację
- Wyślij wiadomość do firmy

Dla „Koordynatora zamówień”:
- Zaloguj się do systemu
- Zatwierdź zamówienie
- Przypisz zamówienie do pojazdu
- Edytuj przypisanie pojazdu
- Anuluj przypisanie pojazdu

Dla „Księgowego”:
- Zaloguj się do systemu
- Wyświetl ukończone zlecenia
- Wypisz nową fakturę
- Wyświetl bilans finansowy firmy
- Opłać koszta konserwacji pojazdów

Dla „Kierowcy”:
- Zaloguj się do systemu
- Wyświetl przypisane zlecenie
- Wyświetl adres i trasę przejazdu
- Oznacz zadanie jako zrealizowane
- Oznacz pojazd jako uszkodzony
- Wyświetl listę pojazdów oddanych na przegląd
- Oznacz pojazd jako „po przeglądzie”

Dla „Konserwatora”:
- Zaloguj się do systemu
- Oznacz stan pojazdu jako uszkodzony
- Oznacz stan pojazdu jako sprawny
- Dodaj termin przeglądu pojazdu
- Dodaj termin końca obowiązywania ubezpieczenia pojazdu

Dla „Szefa firmy”:
- Zaloguj się do systemu
- Zwolnij pracownika
- Dodaj pracownika
- Dodaj samochód do floty
- Usuń samochód z floty
- Edytuj grafik pracownika

## 8. Scenariusze przypadków użycia
Scenariusz 01 - Logowanie do systemu

Opis: Scenariusz opisujący procedurę logowania do systemu.

Aktorzy:
- Koordynator zamówień
- Kierowca
- Księgowy
- Konserwator
- Szef firmy

Warunki początkowe: Użytkownik systemu musi być zarejestrowany w systemie.

Warunki końcowe: Po poprawnym wpisaniu danych logowania użytkownikowi ukazuje się interfejs graficzny systemu z dostępnymi dla niego odpowiednimi funkcjonalnościami.

Przebieg główny:
- Użytkownik podaje dane logowania
- Użytkownik wysyła żądanie logowania do systemu
- System sprawdza poprawność otrzymanych danych
- System 
