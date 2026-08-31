// Автор: Tim Isaev

import Foundation

enum BuildInfo {
    static var version: String {
        Bundle.main.object(
            forInfoDictionaryKey: "CFBundleShortVersionString"
        ) as? String ?? "?"
    }
    static var build: String {
        Bundle.main.object(
            forInfoDictionaryKey: "CFBundleVersion"
        ) as? String ?? "?"
    }
    static var summary: String { "v\(version) (\(build))" }
}
