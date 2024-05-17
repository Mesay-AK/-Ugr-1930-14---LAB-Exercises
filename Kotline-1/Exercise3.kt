fun main() {

    println("Enter month (1-12):")
    val month = readLine()?.toIntOrNull()

    println("Enter day (1-31):")
    val day = readLine()?.toIntOrNull()

    if (month == null || day == null || month !in 1..12 || day !in 1..31) {
        println("Invalid input")
        return
    }

    val season = when {
        (month == 12 && day >= 21) || (month in 1..2) || (month == 3 && day < 20) -> "Winter"
        (month == 3 && day >= 20) || (month in 4..5) || (month == 6 && day < 21) -> "Spring"
        (month == 6 && day >= 21) || (month in 7..8) || (month == 9 && day < 23) -> "Summer"
        (month == 9 && day >= 23) || (month in 10..11) || (month == 12 && day < 21) -> "Fall"
        else -> "Invalid date"
    }

    println("The season is $season")
}


fun main() {
    println("Enter first number:")
    val number1 = readLine()?.toIntOrNull()

    println("Enter second number:")
    val number2 = readLine()?.toIntOrNull()

    println("Enter third number:")
    val number3 = readLine()?.toIntOrNull()

    if (number1 == null || number2 == null || number3 == null) {
        println("Invalid input")
        return
    }

    val largest = if (number1 > number2) {
        if (number1 > number3) {
            number1
        } else {
            number3
        }
    } else {
        if (number2 > number3) {
            number2
        } else {
            number3
        }
    }

    println("The largest number is $largest")
}
