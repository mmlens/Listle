import SwiftUI

struct ClockView: View {
    @State private var nombre: String = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.1, blue: 0.15).ignoresSafeArea()
            
            Text("Hola")
                .foregroundColor(Color(red: 0.60, green: 0.90, blue: 0.80))
        }
    }
}

#Preview {
    ContentView()
}
