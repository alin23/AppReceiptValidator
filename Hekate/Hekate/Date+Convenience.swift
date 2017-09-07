//
//  Date+Convenience.swift
//  Hekate iOS
//
//  Created by Hannes Oud on 07.09.17.
//  Copyright © 2017 IdeasOnCanvas GmbH. All rights reserved.
//

import Foundation

extension Date {
    /// Returns a demo date which is independent of the current date.
    /// - Parameter string: Example "2018-07-12T10:57:42Z", defaults to "2017-01-01T12:00:00Z"
    /// - Returns: The date
    public static func demoDate(string: String = "2017-01-01T12:00:00Z") -> Date {
        guard let date = ReceiptValidator.asn1DateFormatter.date(from: string) else {
            fatalError("Failed to deserialize expected date \(string), use format like '2017-01-01T12:00:00Z'")
        }
        return date
    }
}
