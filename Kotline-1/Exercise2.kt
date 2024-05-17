fun main() {
    println("Enter the length of the first side of the triangle:")
    val side1 = readLine()!!.toDouble()

    println("Enter the length of the second side of the triangle:")
    val side2 = readLine()!!.toDouble()

    println("Enter the length of the third side of the triangle:")
    val side3 = readLine()!!.toDouble()

    val type = when {
        side1 == side2 && side2 == side3 -> "Equilateral"
        side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
        else -> "Scalene"
    }

    println("Type of the triangle: $type")
}

fun main() {
    println("Enter the number of hours worked:")
    val hoursWorkedInput = readLine()
    val hoursWorked = hoursWorkedInput?.toDoubleOrNull()

    if (hoursWorked == null || hoursWorked < 0) {
        println("Invalid input for hours worked.")
        return
    }

    println("Enter the hourly rate:")
    val hourlyRateInput = readLine()
    val hourlyRate = hourlyRateInput?.toDoubleOrNull()

    if (hourlyRate == null || hourlyRate < 0) {
        println("Invalid input for hourly rate.")
        return
    }

    val regularHours = if (hoursWorked <= 40) hoursWorked else 40.0
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0.0
    val regularPay = regularHours * hourlyRate
    val overtimePay = overtimeHours * hourlyRate * 1.5
    val totalSalary = regularPay + overtimePay

    println("Total salary: $totalSalary")
}
