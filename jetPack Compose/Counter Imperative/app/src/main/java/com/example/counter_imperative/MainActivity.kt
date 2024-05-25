package com.example.counter_imperative

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity

class MainActivity : ComponentActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val textViewCount: TextView = findViewById(R.id.tvCount)
        val buttonIncrement: Button = findViewById(R.id.btnIncrement)
        val buttonDecrement: Button = findViewById(R.id.btnDecrement)
        val buttonReset: Button = findViewById(R.id.btnReset)

        buttonIncrement.setOnClickListener {
            count++
            textViewCount.text = count.toString()
        }

        buttonDecrement.setOnClickListener {
            count--
            textViewCount.text = count.toString()
        }

        buttonReset.setOnClickListener {
            count = 0
            textViewCount.text = count.toString()
        }
    }
}