import Foundation

enum SAPDateEncoder {
    static func strategy(date: Date, encoder: Encoder) throws {
        let stringData = date.sapPattern
        var container = encoder.singleValueContainer()
        try container.encode(stringData)
    }
}

