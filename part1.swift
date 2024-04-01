// Créez une classe rectangle contenant deux attributs longueur et largeur

class rectangle
{
  var longueur: Double
  var largeur: Double

  // Ajoutez un attribut qui permet de compter le nombres de rectangles créés
  static var rectanglesCrees:Int = 0

  init(longueur: Double, largeur: Double)
  {
    self.longueur = longueur
    self.largeur = largeur
    rectangle.rectanglesCrees += 1
  }

  // Définissez et implémentez deux méthodes perimeter et area

  func perimeter() -> Double {
      return 2 * (longueur + largeur)
  }
 
  func area() -> Double {
      return longueur * largeur
  }
}

// Créez une liste contenant 3 rectanges
var listeRectangles: [rectangle] = []

let rectangle1 = rectangle(longueur: 5.0, largeur: 3.0)
let rectangle2 = rectangle(longueur: 4.0, largeur: 2.0)
let rectangle3 = rectangle(longueur: 6.0, largeur: 4.0)

listeRectangles.append(rectangle1)
listeRectangles.append(rectangle2)
listeRectangles.append(rectangle3)

// Ordonner la liste en fonction de la surface
listeRectangles.sort { $0.area() < $1.area() }
print("Liste de rectangles triée par surface :")
for rectangle in listeRectangles {
    print("Surface : \(rectangle.area()), Périmètre : \(rectangle.perimeter())")
}

// Ordonner la liste en fonction du périmètre
listeRectangles.sort { $0.perimeter() < $1.perimeter() }
print("\nListe de rectangles triée par périmètre :")
for rectangle in listeRectangles {
    print("Périmètre : \(rectangle.perimeter()), Surface : \(rectangle.area())")
}

// Affichage du nombre total de rectangles créés
print("Nombre total de rectangles créés : \(rectangle.rectanglesCrees)")

