// Créez un protocol Shape contenant deux méthodes area et perimeter
protocol Shape {
    func area() -> Double
    func perimeter() -> Double
    var description: String { get }
}

// Définition de la classe Circle qui implémente le protocole Shape
class Circle: Shape {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }

    func perimeter() -> Double {
        return 2 * Double.pi * radius
    }

    var description: String {
        return "Je suis un cercle, mon rayon est \(radius), ma surface est \(area()), et mon périmètre est \(perimeter())"
    }
}

// Modifiez la classe Rectange de la partie 1 pour implémenter le protocol Shape
class Rectangle: Shape {
    var length: Double
    var width: Double

    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }

    func area() -> Double {
        return length * width
    }

    func perimeter() -> Double {
        return 2 * (length + width)
    }

    var description: String {
        return "Je suis un rectangle, ma longueur est \(length), ma largeur est \(width), ma surface est \(area()), et mon périmètre est \(perimeter())"
    }
}

// Définition de la classe Square qui est une sous-classe de Rectangle
class Square: Rectangle {
    init(side: Double) {
        super.init(length: side, width: side)
    }
}

// Création des formes
let cercle1: Shape = Circle(radius: 2.0)
let cercle2: Shape = Circle(radius: 3.0)
let cercle3: Shape = Circle(radius: 4.0)

let rectangle1: Shape = Rectangle(length: 5.0, width: 3.0)
let rectangle2: Shape = Rectangle(length: 4.0, width: 2.0)

let carre: Shape = Square(side: 2.0)

// Création de la liste contenant les formes
var shapes: [Shape] = []

shapes.append(contentsOf: [cercle1, cercle2, cercle3, rectangle1, rectangle2, carre])

// Parcours de la liste et affichage des informations pour chaque forme
for shape in shapes {
    print("\n")
    print(shape.description)
}
