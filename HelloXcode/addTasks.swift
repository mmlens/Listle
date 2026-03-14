import SwiftUI
import Combine

struct Tarea: Identifiable {
    let id = UUID()
    let titulo: String
}

class GestorDeTareas: ObservableObject {
    @Published var tasks: [Tarea] = []
    
    func agregarTarea(titulo: String) {
        if !titulo.isEmpty {
            let nueva = Tarea(titulo: titulo)
            tasks.append(nueva)
        }
    }
    
    func eliminarTarea(titulo: String) {
        for i in tasks.indices {
            if tasks[i].titulo == titulo {
                tasks.remove(at: i)
                break
            }
        }
    }
}
