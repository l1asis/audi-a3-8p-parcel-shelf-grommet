# Ersatz-Führungshülse mit Einfädelschlitz für das Halteband der Hutablage beim Audi A3 8P

<p align="center">
  <img src="images/preview.png" width="45%" alt="Vorschaubild des 3D-Modells der Ersatz-Führungshülse" />
  <img src="images/animation.gif" width="45%" alt="Animation des 3D-Modells der Ersatz-Führungshülse" />
</p>

Hier beschreibe ich das mithilfe von Gemini erstellte 3D-Modell für die Führungshülse (Tülle), durch die das Halteband der Hutablage meines Audi A3 8P 1.6 (102 PS, Bj. 2003, HSN/TSN: 0588/828, 3-Türer) geführt wird.

> [!IMPORTANT]
> Ich habe das Teil gerade erst zum Drucken bestellt und daher noch kein Foto vom eingebauten Zustand. Sobald die Teile ankommen, folgt hier ein Update mit echten Fotos!

---

**Auch in anderen Sprachen verfügbar:**

[English](README.md) | [Deutsch](README.de.md)

---

## Vorgeschichte

Bei meinem Audi A3 fehlt auf einer Seite leider alles: sowohl das Halteband mit der Kugel unten als auch der Halter an der Hutablage sowie die kleine Hülse, durch die das Band geführt wird. Den Halter und das Band selbst findet man online problemlos als Ersatzteil – diese kleine runde Plastiktülle einzeln aber leider überhaupt nicht.

Ich habe zunächst versucht, im Netz eine passende Standard-Tülle zu finden. Leider gab es nichts, was dem Originalteil optisch nahekommt, die richtige Materialstärke hat und einzelstückweise bezahlbar ist (Gummitüllen bremsen die Schnur zu stark, und passende Nylon-Buchsen gab es nur im teuren 12er-Pack). Natürlich hätte man auf dem Schrottplatz sein Glück versuchen können, aber das wäre mir zu zeitaufwendig gewesen. Also habe ich ein wenig herumexperimentiert und das Teil zusammen mit Gemini kurzerhand selbst für den 3D-Druck modelliert.

## Wie sieht das Problem aus / Wie müsste es aussehen?

### Ansicht von oben (links fehlend, rechts Original)

<p align="center">
  <img src="images/problem_top.jpg" width="45%" alt="Fehlende Hülse von oben" />
  <img src="images/installed_original_top.jpg" width="45%" alt="Originalteil von oben" />
</p>

### Ansicht von unten (links fehlend, rechts Original)

<p align="center">
  <img src="images/problem_bottom.jpg" width="45%" alt="Fehlende Hülse von unten" />
  <img src="images/installed_original_bottom.jpg" width="45%" alt="Originalteil von unten" />
</p>

## 3D-Modell des Ersatzteils

### Enthaltene Dateien (Ordner `stl/`)

Im Repository liegen drei leicht unterschiedliche Varianten (sowie die OpenSCAD-Quelldatei unter `cad/`):

1. **`audi_a3_8p_grommet_snap_lip.stl` *(Empfehlung)*:** Originalform mit gewölbtem Kragen und einer feinen Rastlippe (8,6 mm) unten am Schaft, damit die Hülse unter der Hutablage einrastet.
2. **`audi_a3_8p_grommet_smooth.stl`:** Identisch, aber mit komplett glattem 8,0-mm-Schaft (falls das Loch sehr eng sitzt oder man das Teil lieber einkleben möchte).
3. **`audi_a3_8p_grommet_print_optimized.stl`:** Für den heimischen FDM-Drucker optimiert (flache Oberseite mit Fase, liegt bereits kopfüber auf dem Druckbett und kommt komplett ohne Stützstrukturen/Support aus).

### Technische Daten

- **Außendurchmesser (Schaft):** 8,0 mm (passt exakt in die werkseitige Bohrung)
- **Innenbohrung:** 5,2 mm mit abgerundetem Einlauf (für reibungslosen Durchgang der 4,0-mm-Schnur)
- **Oberer Kragen (Flansch):** 20,0 mm Durchmesser
- **Einfädelschlitz:** 3,2 mm (ermöglicht das seitliche Eindrücken der Schnur, ohne das Band oder die Kugel abschneiden zu müssen)

### Druckempfehlungen

- **Verfahren:** SLS oder FDM
- **Material** (vom besten zum weniger optimalen): Nylon (PA12 / PA6), ASA, ABS oder PETG
- **Fülldichte (Infill):** 100 %
- **Schichthöhe** (bei FDM): 0,12 – 0,16 mm (für möglichst glatte Gleitflächen)

> [!WARNING]
> **PLA bitte vermeiden**, da es direkt unter der Heckscheibe durch die hohen Temperaturen im Fahrzeuginnenraum im Sommer weich wird und sich verformt.

**Einbau-Tipp:** Die Hülse am besten so in das Loch drehen, dass der Schlitz von der Heckklappe wegzeigt (also in Richtung Rücksitzbank). So läuft das Seil unter Zug immer auf der geschlossenen, glatten Innenseite.

### Ergebnis (IRL)

*Folgt, sobald die bestellten Druckteile da sind...*