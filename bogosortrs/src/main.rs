use rand::{thread_rng, Rng};
use std::io::Write;

fn main() {
    let mut elements: Vec<i32> = vec![];

    let mut stdout = std::io::stdout();
    let stdin = std::io::stdin();

    loop {
        let mut input = String::new();

        loop {
            print!("Enter a number: ");
            stdout.flush().unwrap();

            stdin.read_line(&mut input).unwrap();
            input = input.trim().into();

            let ele = input.parse::<i32>();

            if let Ok(ele) = ele {
                elements.push(ele);
                break
            } else {
                eprintln!("Invalid number {}", input)
            }
        } 


        print!("Do you want to exit? (y/n): ");
        stdout.flush().unwrap();
        input = "".into();
        stdin.read_line(&mut input).unwrap();
        input = input.trim().into();

        if input == "y" {
            break
        }
    }

    println!("{:?}", elements);
    println!("Bogosorting...");
    stdout.flush().unwrap();
    bogosort(&mut elements);

    println!("Sorted.");
    println!("{:?}", elements);

}

fn bogosort(arr: &mut Vec<i32>) {
    while !is_sorted(arr) {
        shuffle(arr)
    }
}

fn is_sorted(arr: &mut Vec<i32>) -> bool {
    for i in 0..(arr.len() - 1) {
        if arr[i] > arr[i + 1] {
            return false
        }
    }

    true
}

fn shuffle(arr: &mut Vec<i32>) {
    let mut rng = thread_rng();
    let len = arr.len();

    for i in 0..len {
        let j = rng.gen_range(0..len);
        swap(arr, i, j)
    }
}

fn swap(arr: &mut Vec<i32>, i: usize, j: usize) {
    let temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}
