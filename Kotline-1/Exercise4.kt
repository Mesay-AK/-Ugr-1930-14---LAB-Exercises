fun main() {
    println("Enter the elements of the array separated by spaces:")
    val input = readLine()
    val arr = input?.split(" ")?.map { it.toInt() }?.toIntArray()

    if (arr == null || arr.isEmpty()) {
        println("Invalid input or empty array.")
        return
    }

    for (i in arr.indices) {
        for (j in 0 until arr.size - i - 1) {
            if (arr[j] > arr[j + 1]) {
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }

    println("Sorted array: ${arr.joinToString(", ")}")
}


fun main() {
    println("Enter a number to calculate its factorial:")
    val number = readLine()?.toIntOrNull()

    if (number == null || number < 0) {
        println("Invalid input for the number.")
        return
    }

    var factorial = 1
    for (i in 1..number) {
        factorial *= i
    }

    println("Factorial of $number is $factorial")
}


fun main() {
    println("Enter a string to check if it has all unique characters:")
    val str = readLine()

    if (str.isNullOrEmpty()) {
        println("Invalid input for the string.")
        return
    }

    val charSet = mutableSetOf<Char>()
    var hasUniqueChars = true

    for (char in str) {
        if (char in charSet) {
            hasUniqueChars = false
            break
        }
        charSet.add(char)
    }

    println("String \"$str\" has all unique characters: $hasUniqueChars")
}
