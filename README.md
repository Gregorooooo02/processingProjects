# processingProjects

## Zadanie 1
Narysować i zanimować układ planetarny zawierający:
- gwiazdę,
- co najmniej 4 planety,
- co najmniej 7 księżyców krążących wokół co najmniej 3 z planet.
Każde z ciał niebieskich powinno mieć inną wielkość, kolor, orbitę i szybkość. Niektóre księżyce nie muszą być okrągłe.

Do rysowania kół można użyć funkcji rysującej wielokąty foremne o zadanej liczbie boków:
<div class="box">
  <pre>
    <code class="language-java">
void drawCircle(int steps)
{
  beginShape();
  for (int i = 0; i < steps; ++i)
    vertex(cos(TWO_PI * (float)i / float(steps)), sin(TWO_PI * (float)i / float(steps)));
  endShape();
}
<br/>
void draw()
{
  background(0);
  translate(width *.5f, height *.5f);
  scale(100);
  drawCircle(16);
}
    </code>
  </pre>
</div>

### Zadanie wykonane
Program przedstawia 5 planet oraz 10 księzycy, z czego dodano również orbity po których się poruszają oraz tło jako kosmos z gwiazdami.
<img width="1762" alt="Zrzut ekranu 2023-04-27 o 01 07 48" src="https://user-images.githubusercontent.com/106348157/234721450-9f23c27e-d159-4f3b-87ca-a1334c4c38e3.png">
## Zadanie 2
Narysować i zanimować w 3D układ planetarny zawierający:
- Gwiazdę
- Co najmniej 4 planety
- Co najmniej 7 księżyców krążących wokół co najmniej 3 z planet
- Każde z ciał niebieskich powinno być sferą, boksem lub wczytaną bryłą (każda z trzech możliwości powinna wystąpić)
- Powinno mieć inny kolor (w tym rozbłysk) lub być teksturowane (obie wersje powinny wystąpić)
- orbitę
- kąt nachylenia osi obrotu
- szybkość

Powinny wystąpić dwa światła:
- Punktowe od gwiazdy
- Reflektorowe z jednej z planet, której mieszkańscy postawili sobie na planecie - reflektor z ich perspektywy pionowo w górę

Gwiazda powinna wyglądać jakby świeciła.

### Zadanie wykonane
Program przedstawia na środku gwiazdę, 5 planet okrążających ją oraz 10 księżycy, które krążą wokół wybranych planet.
Światło w programie jest wykonane jak w treści zadania: jest główne światło punktowe, które pochodzi od gwiazdy oraz reflektorowe światło, które jest rzutowane do góry - widać je głównie na następnej planecie, kiedy obie się mijają.
Jako dodatkową funkcjonalność dodano możliwość obracania układem planetarnym, aby dokładniej zobaczyć jak wszystko wygląda.
<img width="1762" alt="Zrzut ekranu 2023-04-29 o 16 17 35" src="https://user-images.githubusercontent.com/106348157/235307750-e7e4f3f6-b72c-418a-a8b6-b4bcd046e45d.png">
## Zadanie 3
Rozbudować aplikację przedstawiającą planety w 3D o możliwości eksploracji. Do sceny należy wprowadzić statek kosmiczny złożony z prymitywów lub zaimportowany jako gotowa siatka.

Nawigacja statkiem po scenie powinna być zrealizowana za pomocą klawiatury i myszki w wybrany sposób.

Interakcja za pomocą klawiatury powinna pozwalać na kierowanie co najmniej ruchem jednego ciała niebieskiego lub sterowanie działaniem broni umieszczonej na statku.
### Zadanie wykonane
Program bazuje na układzie planetarnym z poprzedniego zadania. Statek porusza się w wszystkich 3 płaszczyznach przy użyciu przycisków W, S, A, D (ruch do przodu, do tyłu, w lewo, w prawo) oraz ',' i '.' (góra i dół). Jako dodatkową możliwość kontroli statku dodano sterowanie myszką, gdzie przy wciśnięciu lewego przycisku myszy statek porusza się w górę, a przy wciśnięciu prawego przycisku - w dół.
Jako dodatkową możliwość programu dodano również kontrolowanie zachowania dwóch ciał niebieskich - drugiej planety (imbryk) oraz czwartej planety ("Jowisz") od gwiazdy. Wciskając przyciski H i J możemy kontrolować prędkość planety_2, a przyciskami K i L - prędkość planety_4.
<img width="1762" alt="Zrzut ekranu 2023-04-30 o 18 06 20" src="https://user-images.githubusercontent.com/106348157/235363952-d5ea46a3-6d0d-4505-b0ae-8deae9954a3a.png">
