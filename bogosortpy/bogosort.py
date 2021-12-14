import random, math

def main():
    values = []
    response = ""

    while response != "y":
        num = -1

        while True:
            response = input("Enter a number:")

            try:
                values.append(int(response))
                break;
            except:
                print("%s is not a valid number" % response)


        response = input("Do you want to quit? (y/n)")

    print(values)
    print("Sorting. . .")
    bogosort(values)
    print("Complete")
    print(values)

def bogosort(arr):
    while not is_sorted(arr):
        shuffle(arr)    

def is_sorted(arr):
    for i in range(len(arr) - 1):
        if arr[i] > arr[i + 1]:
            return False
    
    return True

def shuffle(arr):
    for i in range(len(arr)):
        j = random.randrange(0, len(arr))
        swap(arr, i, j)

def swap(arr, i, j):
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp


if __name__ == "__main__":
    main()