class Rectangle(var length: Double, var width: Double) {
    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }

    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    println("Enter the length of the rectangle:")
    val length = readLine()!!.toDouble()

    println("Enter the width of the rectangle:")
    val width = readLine()!!.toDouble()

    val rectangle = Rectangle(length, width)
    println("Perimeter of the rectangle: ${rectangle.calculatePerimeter()}")
    println("Area of the rectangle: ${rectangle.calculateArea()}")
}

class Triangle(var side1: Double, var side2: Double, var side3: Double) {
    fun getType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun main() {
    println("Enter the length of the first side of the triangle:")
    val side1 = readLine()!!.toDouble()

    println("Enter the length of the second side of the triangle:")
    val side2 = readLine()!!.toDouble()

    println("Enter the length of the third side of the triangle:")
    val side3 = readLine()!!.toDouble()

    val triangle = Triangle(side1, side2, side3)
    println("Type of the triangle: ${triangle.getType()}")
}


class ShoppingCart {
    private val items = mutableMapOf<String, Double>()

    fun addItem(item: String, price: Double) {
        items[item] = price
    }

    fun removeItem(item: String) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        return items.values.sum()
    }
}

fun main() {
    val shoppingCart = ShoppingCart()

    // Adding items to the cart
    while (true) {
        println("Enter the name of the item (or type 'done' to finish adding items):")
        val itemName = readLine()!!

        if (itemName == "done") break
        println("Enter the price of $itemName:")
        val itemPrice = readLine()!!.toDouble()

        shoppingCart.addItem(itemName, itemPrice)
    }

    // Removing items from the cart
    while (true) {
        println("Enter the name of the item to remove (or type 'done' if no more items to remove):")
        val itemNameToRemove = readLine()!!
        
        if (itemNameToRemove == "done") break
        shoppingCart.removeItem(itemNameToRemove)
    }

    // Calculating total price
    val totalPrice = shoppingCart.calculateTotalPrice()
    println("Total price of items in the shopping cart: $totalPrice")
}

