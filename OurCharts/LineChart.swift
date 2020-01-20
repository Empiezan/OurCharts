import Foundation
import UIKit

class LineChart<T>: Chart {
    
    var series: [Series<Double, T>] = [] {
        willSet {
            
        }
    }
    var xAxis: Axis? {
        willSet {
            
        }
    }
    var yAxis: Axis? {
        willSet {
            
        }
    }
    
    private var chartArea = UIView()
    
    override func draw(_ rect: CGRect) {
        // Draw axes
        
        
        // Draw series
        self.series.forEach { self.drawLinePath(series: $0, rect: rect) }
        
        // Draw legend
        let maxes: (maxX: Double, maxY: Double) = self.series.reduce((0, 0), { ((globalMaxX, globalMaxY), series) -> (Double, Double) in
            let localMax: Double = series.data.reduce(0) { ((currentMaxX, currentMaxY), dataPoint) -> (Double, Double) in
                return (max(currentMaxX, dataPoint.x), max(currentMaxY, dataPoint.y)
            }
            return max(localMax, globalMax)
        })
    }
    
    private func drawLinePath(series: Series<Double, T>, rect: CGRect) {
        let path = UIBezierPath()

        series.data.forEach { datum in
            let point: CGPoint = CGPoint(x: datum.x, y: datum.y)
            path.move(to: point)
        }

        path.close()
    }
    
}
