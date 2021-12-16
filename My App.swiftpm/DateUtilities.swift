import SwiftUI

extension Date {
    func daysSinceDate(_ date: Date) -> Int {
        let time = self.timeIntervalSince(date)
        return Int(time) / TimeInterval.day
    }
}
