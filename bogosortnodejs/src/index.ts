import promptSync from "prompt-sync";
const prompt = promptSync();

function main() {
  let numbers = [];
  let input = "";

  while (input != "y") {
    while (true) {
      input = prompt("Enter a number: ") ?? "";

      try {
        numbers.push(parseFloat(input));
        break;
      } catch {
        console.log("Invalid number: " + input);
      }
    }

    input = prompt("Do you want to exit? (y/n): ") ?? "";
  }

  console.log(numbers);
  console.log("Sorting. . .");
  bogosort(numbers);
  console.log("Sorted");
  console.log(numbers);
}

function bogosort(arr: number[]) {
  while (!isSorted(arr)) {
    shuffle(arr);
  }
}

function isSorted(arr: number[]): boolean {
    for (let i = 0; i < arr.length - 1; i++) {
        if (arr[i] > arr[i + 1]) return false;
    }
    return true;
}

function shuffle(arr: number[]) {
  for (let i = 0; i < arr.length; i++)
  {
    swap(arr, i, Math.floor(Math.random() * arr.length));
  }
}

function swap(arr: number[], i: number, j: number) {
  const temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

main();
