// AppFoundation
// AppInfo.swift
//
// Copyright (c) 2021 Varun Santhanam

import Foundation

public enum AppInfo {

    /// The app version number from info.plist
    public static var version: String {
        Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    }

    /// The app build number from info.plist
    public static var build: String {
        Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "Unknown"
    }

}
