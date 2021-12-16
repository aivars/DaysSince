import SwiftUI

extension Date {
    func daysSinceDate(_ date: Date) -> Int {
        let time = self.timeIntervalSince(date)
        return Int(time) / TimeInterval.day
    }
}

extension Date: RawRepresentable {
    private static let formatter = ISO8601DateFormatter()
    
    public var rawValue: String {
        Date.formatter.string(from: self)
    }
    
    public init?(rawValue: String) {
        self = Date.formatter.date(from: rawValue) ?? Date()
    }
}
