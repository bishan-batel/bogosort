fun main() {
  val arr = ArrayList<Int>()

  while (true) {
    print("Enter a number: ")
    val ln = readLine()?.toInt()
    if (ln != null) {
      arr.add(ln)
    }

    print("Do you want to quit (y/n)")
    val response = readLine()

    if (response == "y") break
  }

  println(arr.toString())
  bogosort(arr)
  println(arr.toString())
}

fun bogosort(arr: ArrayList<Int>) {
  while (!isSorted(arr)) {
    shuffle(arr)
  }
}

fun swap(arr: ArrayList<Int>, i: Int, j: Int) {
  val temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
}

fun shuffle(arr: ArrayList<Int>) {
  for (i in 0..(arr.size - 1)) {
    val r = Math.random() * arr.size
    swap(arr, i, r.toInt())
  }
}

fun isSorted(arr: ArrayList<Int>): Boolean {
  for (i in 0..(arr.size - 2)) {
    if (arr[i] > arr[i + 1]) return false
  }
  return true
}
