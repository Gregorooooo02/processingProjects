# Processing_1
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

# Zadanie wykonane
Program przedstawia 5 planet oraz 10 księzycy, z czego dodano również orbity po których się poruszają oraz tło jako kosmos z gwiazdami.
<img width="1762" alt="Zrzut ekranu 2023-04-27 o 01 07 48" src="https://user-images.githubusercontent.com/106348157/234721450-9f23c27e-d159-4f3b-87ca-a1334c4c38e3.png">
