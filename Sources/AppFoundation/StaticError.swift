// AppFoundation
// StaticError.swift
//
// MIT License
//
// Copyright (c) 2021 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

/// A reusable swift error struct
public struct StaticError: LocalizedError, Equatable, Hashable {

    /// Create a `StaticError`
    /// - Parameters:
    ///   - errorDescription: A localized message describing what error occurred.
    ///   - failureReason: A localized message describing the reason for the failure.
    ///   - recoverySuggestion: A localized message describing how one might recover from the failure.
    ///   - helpAnchor: A localized message providing "help" text if the user requests help.
    public init(errorDescription: String? = nil,
                failureReason: String? = nil,
                recoverySuggestion: String? = nil,
                helpAnchor: String? = nil) {
        internalErrorDescription = errorDescription
        internalFailureReason = failureReason
        internalRecoverySuggestion = recoverySuggestion
        internalHelpAnchor = helpAnchor
    }

    // MARK: - LocalizedError

    /// A localized message describing what error occurred.
    public var errorDescription: String? {
        internalErrorDescription ?? dummy.errorDescription
    }

    /// A localized message describing the reason for the failure.
    public var failureReason: String? {
        internalFailureReason ?? dummy.failureReason
    }

    /// A localized message describing how one might recover from the failure.
    public var recoverySuggestion: String? {
        internalRecoverySuggestion ?? dummy.recoverySuggestion
    }

    /// A localized message providing "help" text if the user requests help.
    public var helpAnchor: String? {
        internalHelpAnchor ?? dummy.helpAnchor
    }

    // MARK: - Equatable

    public static func == (lhs: StaticError, rhs: StaticError) -> Bool {
        lhs.internalErrorDescription == rhs.internalErrorDescription && lhs.internalFailureReason == rhs.internalFailureReason && lhs.internalRecoverySuggestion == rhs.internalRecoverySuggestion && lhs.internalHelpAnchor == rhs.internalHelpAnchor
    }

    // MARK: - Hashable

    public func hash(into hasher: inout Hasher) {
        hasher.combine(internalErrorDescription)
        hasher.combine(internalFailureReason)
        hasher.combine(internalRecoverySuggestion)
        hasher.combine(internalHelpAnchor)
    }

    // MARK: - Private

    private let dummy = DummyError()

    private var internalErrorDescription: String?
    private var internalFailureReason: String?
    private var internalRecoverySuggestion: String?
    private var internalHelpAnchor: String?

    private struct DummyError: LocalizedError {}
}
