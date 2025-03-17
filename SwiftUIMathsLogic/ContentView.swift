import SwiftUI
import Foundation

class FibonacciViewModel {
    func generateFibonacci(n: Int) -> [Int] {
        guard n > 0 else { return [] }
        
        var sequence = [0, 1]
        while sequence.count < n {
            let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
            sequence.append(nextNumber)
        }
        return Array(sequence.prefix(n))
    }
}

struct FibonacciView: View {
    @State private var inputNumber: String = ""
    @State private var fibonacciSequence: [Int] = []
    
    var body: some View {
        VStack {
            Text("Fibonacci Series Generator")
                .font(.title)
                .padding()
            
            TextField("Enter a number", text: $inputNumber)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: generateFibonacci) {
                Text("Generate")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            List(fibonacciSequence, id: \.self) { number in
                Text("\(number)")
            }
            .padding()
        }
        .padding()
    }
    
    /// Function to generate Fibonacci series up to the given number
    func generateFibonacci() {
        guard let n = Int(inputNumber), n > 0 else {
            fibonacciSequence = []
            return
        }
        
        var sequence = [0, 1]
        while sequence.count < n {
            let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
            sequence.append(nextNumber)
        }
        
        fibonacciSequence = Array(sequence.prefix(n))
    }
}


