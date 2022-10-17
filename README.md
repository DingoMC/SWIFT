### System wspomagania funkcjonowania małej firmy transportowej

## 1. Model biznesowy
Obecnie firma transportowa nie posiada elektronicznego systemu planowania 
swojej pracy. Wszystkie rezerwacje terminów zleceń, grafików pracowników, księgowości oraz dostępności pojazdów prowadzone są w formie papierowej. Dlatego głównym  zadaniem jest wdrożenie nowego elektronicznego systemu realizującego wszystkie powyższe zadania.

## 2. Określenie celu, zakresu i kontekstu
Celem jest utworzenie zintegrowanego systemu wspierającego:
- Rezerwację terminów przez klienta za pomocą aplikacji mobilnej bądź strony internetowej oraz możliwość zmiany lub anulowania wcześniej ustalonego terminu.
- Pracę osoby odpowiedzialnej za koordynację zleceń przy pomocy przejrzystego interfejsu.
- Planowanie pracy poszczególnych pracowników firmy transportowej
- Wystawianie faktur dla klienta oraz prowadzenia księgowości firmy
- Rezerwację pojazdów do konkretnych zleceń, a także optymalizację trasy przejazdu
- Prowadzenie ewidencji stanu technicznego pojazdów firmowych
	
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
- Zarządzanie finansami firmy - funkcjonalność wspomagająca obliczanie kosztu zamówień oraz bilansu firmy

## 5. Wymagania niefunkcjonalne
- Aplikacja mobilna oraz internetowa ma być dostępna w systemie 24/7/365
- System powinien być skalowalny jednocześnie zapewniając wydajność przetwarzania zamówień 1000 dziennie
- System powinien pracować na środowisku Microsoft .NET oraz dokonywać analizy danych przy pomocy języka - Python
- System powinien działać pod kontrolą systemu operacyjnego Ubuntu Server działającego w chmurze na platformie Microsoft Azure
- System powinien odpowiadać na żądanie użytkownika w czasie nie dłuższym niż 5 sekund
- Zużycie pamięci RAM przez system nie powinno przekraczać 4GB
- System powinien składować dane w najnowszej wersji bazy danych PostgreSQL
- Użytkownicy systemu powinni uzyskać dostęp do jego funkcjonalności przy pomocy dowolnej współczesnej przeglądarki stron internetowych
