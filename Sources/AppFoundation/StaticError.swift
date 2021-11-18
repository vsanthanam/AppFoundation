// AppFoundation
// StaticError.swift
//
// Copyright (c) 2021 Varun Santhanam

import Foundation

/// A Reusable swift error struct
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
        internalErrorDescription ?? (self as LocalizedError).errorDescription
    }

    /// A localized message describing the reason for the failure.
    public var failureReason: String? {
        internalFailureReason ?? (self as LocalizedError).failureReason
    }

    /// A localized message describing how one might recover from the failure.
    public var recoverySuggestion: String? {
        internalRecoverySuggestion ?? (self as LocalizedError).recoverySuggestion
    }

    /// A localized message providing "help" text if the user requests help.
    public var helpAnchor: String? {
        internalHelpAnchor ?? (self as LocalizedError).helpAnchor
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

    private var internalErrorDescription: String?
    private var internalFailureReason: String?
    private var internalRecoverySuggestion: String?
    private var internalHelpAnchor: String?

}
