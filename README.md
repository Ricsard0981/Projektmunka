# Könyvek - 12.C/D projektfeladat

**Csoport tagjai:** *Németh Richárd, Istenes Bernadett, Váczy Bence, Bretka Krisztián*

Asztali alkalmazások, Adatbázis-kezelés és IKT projekt munka

## A projektről
Egy konzolos C# alkalmazás, ami a `konyvek.txt` fájlból beolvassa 20 könyv adatait
(10 magyar és 10 külföldi könyv), és kiírja őket, kiszámolja az átlagos oldalszámot,
és megkeresi a leghosszabb könyvet. Ugyan ezek az adatok egy MySQL (XAMPP) táblában is megvannak.

## Fájlok
- `Program.cs`, `PROJEKT.csproj`, `PROJEKT.sln` - a Visual Studio 2022 konzolos projekt (C#)
- `konyvek.txt` - az adatok (id;cím;szerző;ország;műfaj;kiadási év;oldalszám)
- `adatbazis.sql` - a `konyvek` tábla létrehozása
- `dokumentacio/` - UML diagram, algoritmus
- `kepernyokepek/` - a tábla szerkezeti és tartalmi képernyőképe
