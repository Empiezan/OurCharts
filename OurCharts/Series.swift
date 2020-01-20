import Foundation
import UIKit

class DataPoint<Comparable, T> {
    var x: Comparable
    var y: Comparable
    var otherData: T?
    
    init(x: Comparable, y: Comparable, otherData: T? = nil) {
        self.x = x
        self.y = y
        self.otherData = otherData
    }
}

class Series<Comparable, T> {
    
    var title: String
    var marker: UIImage?
    var data: [DataPoint<Comparable, T>] = []
    var pattern: UIImage?
    var color: UIColor?
    
    init(title: String) {
        self.title = title
    }    
}
