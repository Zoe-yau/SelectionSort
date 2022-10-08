
var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}

var tmpArray = words

var numOfPasses = 0
var numOfSwaps = 0
var totalSwaps = 0


func Swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let firstWord = words[firstIndex]
    let secondWord = words[secondIndex]

    words[firstIndex] = secondWord
    words[secondIndex] = firstWord
    
    numOfSwaps += 1
     
}


print("Pass: \(numOfPasses), Swaps: \(numOfSwaps)/\(totalSwaps), Array: \(words)")


func sort(words: inout [String]) {

    for index in 0..<words.count - 1 {
        
        numOfSwaps = 0

        var minimumIndex = index

        for swapIndex in index + 1..<words.count {

            if words[swapIndex] < words[minimumIndex] {
                minimumIndex = swapIndex
            }

        }


        Swap(words: &words, firstIndex: index, secondIndex: minimumIndex)

        totalSwaps += 1
        numOfPasses += 1
        
        print("Pass: \(numOfPasses), Swaps: \(numOfSwaps)/\(totalSwaps), Array: \(words)")

    }

}

sort(words: &tmpArray)



