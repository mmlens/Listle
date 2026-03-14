import SwiftUI
import Observation
import Combine

struct TasksView: View {
    @State private var nuevaTareaTexto: String = ""
        @ObservedObject var gestor: GestorDeTareas
    
    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.10, blue: 0.15).ignoresSafeArea()
            
            VStack {
                Text("To-do List")
                    .foregroundColor(Color(red: 0.60, green: 0.90, blue: 0.80))
                    .font(.system(size: 45, weight: .black))
                
                HStack {
                    TextField("Add a task", text: $nuevaTareaTexto)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color(red: 0.88, green: 0.91, blue: 0.90)))
                        .font(.title3) // title3 encaja mejor en campos de texto
                        .foregroundColor(.black)
                    
                    Button("Add") {
                        gestor.agregarTarea(titulo: nuevaTareaTexto)
                        nuevaTareaTexto = ""
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 15) // Le damos aire al botón para que el fondo azul se vea
                    .background(RoundedRectangle(cornerRadius: 25).fill(Color.blue))
                    .foregroundColor(.white)
                }
                .padding()
                
                Text("Tasks")
                    .foregroundColor(Color(red: 0.60, green: 0.90, blue: 0.80))
                    .font(.system(size: 35, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                
                if gestor.tasks.isEmpty {
                    // If there are no tasks, we show a message
                    Spacer()
                    Text("No task were added")
                        .foregroundColor(.gray)
                        .font(.title2)
                    Spacer()
                } else {
                    // If there is any task, we show it
                    ScrollView {
                        VStack(spacing: 10) {
                            ForEach(gestor.tasks) { tarea in
                                Text(tarea.titulo)
                                    .foregroundColor(.white)
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.1)))
                                    .padding(.horizontal, 15)
                            }
                        }
                    }
                }
                // -------------------------------------
                
                Spacer()
                
                DownSide()
            }
        }
    }
}

// ... (El struct DownSide se queda exactamente como lo tenías) ...
struct DownSide: View {
    var body: some View {
        HStack {
            Text("Developed by Rafa")
                .foregroundColor(Color(red: 0.60, green: 0.90, blue: 0.80))
                .font(.caption)
                .padding()
            
            Text("All rights reserved")
                .foregroundColor(Color(red: 0.60, green: 0.90, blue: 0.80))
                .font(.caption)
                .padding()
        }
    }
}

// Preview corregida para que puedas verla en Xcode sin problemas
#Preview {
    TasksView(gestor: GestorDeTareas())
}
