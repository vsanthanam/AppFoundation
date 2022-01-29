// AppFoundation
// String+AppFoundation.swift
//
// Copyright (c) 2021 Varun Santhanam

import Foundation

public extension String {

    /// Decode a base64 encoded string
    /// - Parameter base64: The base64 encoded string
    /// - Returns: The decoded string
    static func decode(_ base64: String) throws -> String {
        guard let data = Data(base64Encoded: base64),
              let decoded = String(data: data, encoding: .utf8) else {
            throw StaticError(errorDescription: "Base 64 Decode Failed",
                              failureReason: "Decode method(s) returned nil")
        }
        return decoded
    }

    /// Encode a string with base64 encoding
    /// - Parameter string: The string
    /// - Returns: The encoded string
    static func encode(_ string: String) -> String {
        Data(string.utf8).base64EncodedString()
    }

    /// Localized string for key.
    static func localized(_ str: String) -> String {
        str.localized
    }

    /// Localized string for key.
    static func localized(_ str: String, _ arguments: CVarArg ...) -> String {
        String(format: str.localized, arguments: arguments)
    }

    /// Localized string for key.
    var localized: String {
        NSLocalizedString(self, comment: "")
    }

    var inSnakeCase: String {
        func processCamalCaseRegex(input: String, pattern: String) -> String? {
            let regex = try? NSRegularExpression(pattern: pattern, options: [])
            let range = NSRange(location: 0, length: count)
            return regex?.stringByReplacingMatches(in: input, options: [], range: range, withTemplate: "$1_$2")
        }
        
        let acronymPattern = "([A-Z]+)([A-Z][a-z]|[0-9])"
        let normalPattern = "([a-z0-9])([A-Z])"
        
        if let temp = processCamalCaseRegex(input: self, pattern: acronymPattern) {
            return processCamalCaseRegex(input: temp, pattern: normalPattern) ?? lowercased()
        }
        
        return lowercased()
    }
    
}

extension Optional {

    /// Localized string for key.
    static func localized(_ str: String) -> String where Wrapped == String {
        .localized(str)
    }

    /// Localized string for key.
    static func localized(_ str: String, _ arguments: CVarArg ...) -> String where Wrapped == String {
        .localized(str, arguments)
    }
}
