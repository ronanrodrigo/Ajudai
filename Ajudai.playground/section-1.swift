import UIKit

protocol Situation {
    var title: String { get }
    var info: String { get }
    var alerts: [Alert] { get }
    var location: Location { get }
}

typealias Coordinate = (x: Float, y: Float)

protocol Location {
    var city: String { get }
    var state: String { get }
    var address: String? { get }
    var coordinate: Coordinate? { get }
}

enum SupplyCategory {
    case Water, Food, ConstructionMaterial
}

protocol Place {
    var title: String { get }
    var supplies: [Supply] { get }
    var voluntaries: [Voluntary] { get }
    var location: Location { get }
}

protocol Supply {
    var title: String { get }
    var category: SupplyCategory { get }
    var place: Place { get }
}

protocol Money {
    var account: String { get }
    var branch: String { get }
    var bank: String { get }
    var document: String { get }
    var info: String { get }
}

protocol Voluntary {
    var title: String { get }
    var place: Place { get }
}

protocol Alert {
    var title: String { get }
    var situation: Situation { get }
}