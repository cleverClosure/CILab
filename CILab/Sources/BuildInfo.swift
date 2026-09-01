// Автор: Tim Isaev

import Foundation
import OrderedCollections

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
    static var summary: String {
        let info: OrderedDictionary<String, String> =
            ["v": version, "b": build]
        return "v\(info["v"]!) (\(info["b"]!))"
    }
}
