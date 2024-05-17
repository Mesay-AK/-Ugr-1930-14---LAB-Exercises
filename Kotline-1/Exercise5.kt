fun main() {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    println("The sum of all even numbers from 1 to 50 is $sum")
}


fun isPrime(num: Int): Boolean {
    if (num <= 1) return false
    var i = 2
    while (i * i <= num) {
        if (num % i == 0) return false
        i++
    }
    return true
}

fun main() {
    
    println("Enter the start of the range:")
    val start = readLine()?.toIntOrNull() ?: return

    println("Enter the end of the range:")
    val end = readLine()?.toIntOrNull() ?: return

    var current = start
    while (current <= end) {
        if (isPrime(current)) {
            println(current)
        }
        current++
    }
}


fun isPalindrome(number: Int): Boolean {
    var original = number
    var reversed = 0
    while (original != 0) {
        val digit = original % 10
        reversed = reversed * 10 + digit
        original /= 10
    }
    return number == reversed
}

fun main() {
    println("Enter a number:")
    val number = readLine()?.toIntOrNull() ?: return
    val result = isPalindrome(number)
    if (result) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
