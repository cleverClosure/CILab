// Автор: Tim Isaev

import SwiftUI

@main
struct CILabApp: App {
    var body: some Scene {
        WindowGroup {
            VStack(spacing: 8) {
                Text("CILab").font(.largeTitle.bold())
                Text(BuildInfo.summary).font(.footnote.monospaced())
            }
        }
    }
}
