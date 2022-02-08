package bogosortjava;

import java.util.ArrayList;
import java.util.Scanner;

public final class Bogosort {
	private Bogosort() {
	}

	public static void bogoSort(ArrayList<Integer> arr) {
		while (!isSorted(arr)) {
			shuffle(arr);
		}
	}

	public static void shuffle(ArrayList<Integer> arr) {
		for (int i = 0; i < arr.size(); i++) {
			int rand = (int) (Math.random() * arr.size());	
			swap(arr, i, rand);
		}
	}

	public static void swap(ArrayList<Integer> arr, int i, int j) {
		int temp = arr.get(i);
		arr.set(i, arr.get(j));
		arr.set(j, temp);
	}
	
	public static boolean isSorted(ArrayList<Integer> arr) {
		for (int i = 0; i < arr.size() - 1; i++) {
			if (arr.get(i) > arr.get(i + 1)) return false;
		}
		return true;
	}

	public static void main(String[] args) {
		Scanner kb = new Scanner(System.in);	
		ArrayList<Integer> arr = new ArrayList<>();
		char response = ' ';

		while (true) {
			System.out.print("Do you want to quit (y/n): ");
			response = kb.next().charAt(0);

			if (response == 'y') break;

			System.out.print("Enter a number: ");
			arr.add(kb.nextInt());
		}

		System.out.println(arr);
		System.out.println("Bogo sorting . . .");
		bogoSort(arr);
		System.out.println("Sort Done");
		System.out.println(arr);
	}
}
