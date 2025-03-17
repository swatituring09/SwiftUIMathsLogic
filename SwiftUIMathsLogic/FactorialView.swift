import SwiftUI
import Foundation

class FactorialViewModel {
    func generateFactorial(n: Int) -> [Int] {
        guard n > 0 else { return [] }
        
        var sequence: [Int] = []
        var fact = 1
        for i in 1...n {
            fact *= i
            sequence.append(fact)
        }
        return sequence
    }
}

struct FactorialView: View {
    @State private var inputNumber: String = ""
    @State private var factorialSequence: [Int] = []
    
    var body: some View {
        VStack {
            Text("Factorial Series Generator")
                .font(.title)
                .padding()
            
            TextField("Enter a new number", text: $inputNumber)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: generateFactorial) {
                Text("Generate Factorial")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            List(factorialSequence, id: \.self) { number in
                Text("\(number)")
            }
            .padding()
        }
        .padding()
    }
    
    /// Function to generate Factorial series up to the given number
    func generateFactorial() {
        guard let n = Int(inputNumber), n > 0 else {
            factorialSequence = []
            return
        }
        
        var sequence: [Int] = []
        var fact = 1
        for i in 1...n {
            fact *= i
            sequence.append(fact)
        }
        
        factorialSequence = sequence
    }
}
