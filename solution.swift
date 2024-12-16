import Foundation
import Glibc

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
   
    let n = A.count

    // Function to check if a specific rotation satisfies the condition
    func isSatisfied(for rotation: Int) -> Bool {
        
        for i in 0 ..< n {
            // Calculate the shifted index using modular arithmetic
            let shiftedIndex = (i - rotation + n) % n
            if A[i] == B[shiftedIndex] {
                return false
            }
        }
        return true
    }

    // Iterate through all possible rotations
    for rotation in 0 ..< n {
        if isSatisfied(for: rotation) {
            return rotation
        }
    }

    // If no rotation satisfies the condition
    return -1
}
