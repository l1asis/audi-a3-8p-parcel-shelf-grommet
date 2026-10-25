// ============================================================================
// Audi A3 8P (Bj. 2003) - Führungstülle / Rosette für Halteband der Hutablage
// ============================================================================
// Alle Maße in Millimetern (mm) - bei Bedarf frei anpassbar:

d_kordel_innen   = 5.2;   // Innendurchmesser (5.2 mm für 4.0 mm Kordel -> leichtes Gleiten)
d_bohrloch       = 8.0;   // Außendurchmesser des Schafts (für 8.0 mm Loch in der Hutablage)
d_kragen_oben    = 20.0;  // Durchmesser des oberen Tellers (wie Originalteil)
h_kragen         = 2.0;   // Höhe des oberen Tellers
h_schaft         = 4.2;   // Länge des Schafts in der Hutablage
schlitz_breite   = 3.2;   // Seitlicher Schlitz zum Eindrücken der 4-mm-Kordel
mit_rastwulst    = true;  // Kleiner Schnapprand unten am Schaft (wie Original)
rastwulst_ueber  = 0.3;   // 0.3 mm Überstand pro Seite (= 8.6 mm am Schnapprand)

$fn = 150; // Hohe Auflösung für glatte Rundungen

difference() {
    union() {
        // 1. Oberer gewölbter Kragen (20 mm)
        translate([0, 0, h_schaft])
        hull() {
            cylinder(h = 0.4, d = d_kragen_oben);
            translate([0, 0, h_kragen - 0.6])
                cylinder(h = 0.6, d = d_kragen_oben - 3.0);
        }
        
        // 2. Schaft (8 mm)
        cylinder(h = h_schaft + 0.2, d = d_bohrloch);
        
        // 3. Optionaler kleiner Rastwulst unten
        if (mit_rastwulst) {
            translate([0, 0, 0.2])
                cylinder(h = 0.6, d1 = d_bohrloch - 0.4, d2 = d_bohrloch + 2*rastwulst_ueber);
            translate([0, 0, 0.8])
                cylinder(h = 0.7, d1 = d_bohrloch + 2*rastwulst_ueber, d2 = d_bohrloch);
        }
    }
    
    // Durchgangsloch für Kordel
    translate([0, 0, -1])
        cylinder(h = h_schaft + h_kragen + 2, d = d_kordel_innen);
        
    // Obere Einlaufschräge / Trompetenform (verhindert Scheuern beim Öffnen der Heckklappe)
    translate([0, 0, h_schaft + h_kragen - 1.4])
        cylinder(h = 1.5, d1 = d_kordel_innen, d2 = d_kordel_innen + 2.8);
        
    // Untere Einlaufschräge
    translate([0, 0, -0.1])
        cylinder(h = 1.0, d1 = d_kordel_innen + 1.6, d2 = d_kordel_innen);
        
    // Seitlicher Einfädelschlitz für das 4-mm-Band
    translate([0, -schlitz_breite/2, -1])
        cube([d_kragen_oben, schlitz_breite, h_schaft + h_kragen + 2]);
}
