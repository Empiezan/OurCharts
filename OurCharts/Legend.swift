import Foundation
import UIKit

enum LegendPosition {
    case top
    case bottom
    case left
    case right
}

class Legend: UIView {
    
    var position: LegendPosition = .right
    
}
