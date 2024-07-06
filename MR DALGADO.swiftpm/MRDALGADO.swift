import SwiftUI

@main
struct MRDALGADO: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(NavigationManager())

        }
    }
}
