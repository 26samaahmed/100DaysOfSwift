import SwiftUI

struct ContentView: View {
    // Structs are immutable so @State allows that value to be stored seperately by SwiftUI in a place that can be modified
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry" // by default the value is Harry
    var body: some View {
        // To ensure that what I'm adding doesn't interfere with the navigation bar that includes the clock on the top right, I can add it
        NavigationStack {
            Form {
                // You can split the form into sections like the settings app does
                Section {
                    Text("Hello, World")
                }
                
                Section {
                    Text("Hello, World")
                    Text("Hello, World")
                    Text("Hello, World")
                }
            } .navigationTitle("Swift UI")
                // Add another modifier for a smaller font
                .navigationBarTitleDisplayMode(.inline)
        }
        Form {
            // a $ before a property name means we're creating a 2 way binding so the value of the property is beind red but also written
            TextField("Enter your name", text: $name)
            Text("Hello \(name)")
        }
        Form {
            ForEach (0..<10) {
                Text("Row \($0)")
            }
        }
        
        Form {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(students, id: \.self) {
                    Text($0)
                }
            }
        }
        
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }

    }
}
