import Foundation

enum ISO8601DateEncoder {
    static func strategy(date: Date, encoder: Encoder) throws {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        let iso8601String = formatter.string(from: date)
        var container = encoder.singleValueContainer()
        try container.encode(iso8601String)
    }
}

