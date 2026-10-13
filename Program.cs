namespace PROJEKT
{
    internal class Program
    {
        class Konyv //osztály létrehozása
        {
            public int Id; //azonosító adattag
            public string Cim; //cím adattag
            public string Szerzo; //szerző adattag
            public string Orszag; //ország adattag
            public string Mufaj; //műfaj adattag
            public int Kiadasiev; //kiadási év adattag
            public int Oldalszam; //oldalszám adattag

            public Konyv(string sor)
            {
                string[] adat = sor.Split(';');

                Id = int.Parse(adat[0]);
                Cim = adat[1];
                Szerzo = adat[2];
                Orszag = adat[3];
                Mufaj = adat[4];
                Kiadasiev = int.Parse(adat[5]);
                Oldalszam = int.Parse(adat[6]);
            }
        }
        static void Main(string[] args)
        {
            List<Konyv> konyvek = new List<Konyv>();

            foreach (string sor in File.ReadAllLines("konyvek.txt"))
            {
                konyvek.Add(new Konyv(sor));
            }

            Console.WriteLine($"Beolvasott könyvek száma: {konyvek.Count}");
            Console.WriteLine();

            //összes könyv kiírása
            foreach (Konyv k in konyvek)
            {
                Console.WriteLine($"{k.Id}. {k.Cim} - {k.Szerzo} ({k.Orszag}, {k.Mufaj}, {k.Kiadasiev}, {k.Oldalszam} oldal)");
            }

            //átlagos oldalszám
            int osszeg = 0;
            foreach (Konyv k in konyvek)
            {
                osszeg += k.Oldalszam;
            }
            Console.WriteLine();
            Console.WriteLine($"Átlagos oldalszám: {osszeg / konyvek.Count}");

            //leghosszabb könyv (maximum keresés)
            Konyv leghosszabb = konyvek[0];
            foreach (Konyv k in konyvek)
            {
                if (k.Oldalszam > leghosszabb.Oldalszam)
                {
                    leghosszabb = k;
                }
            }
            Console.WriteLine($"Leghosszabb könyv: {leghosszabb.Cim} ({leghosszabb.Oldalszam} oldal)");

            Console.ReadLine();
        }
    }
}
