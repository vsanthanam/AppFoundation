// AppFoundation
// Globs.swift
//
// Copyright (c) 2021 Varun Santhanam

import Foundation

/// Asynchronously excute code on the main thread
/// - Parameter closure: The code to exeucute on the main thread
public func asyncMain(_ closure: @MainActor @Sendable @escaping () -> Void) {
    Task.detached { await MainActor.run(body: closure) }
}
