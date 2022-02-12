#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

void printArr(int *arr, int length) {
    printf("[");
    for (int i = 0; i < length; i++) {
        printf("%d, ", arr[i]);
    }
    printf("]\n");
}

void swap(int *arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

void shuffle(int *arr, int length) {
    for (int i = 0; i < length; i++) {
        int randomIndex = rand() % length;
        swap(arr, i, randomIndex);
    }
}

int isSorted(const int *arr, int length) {
    for (int i = 0; i < length - 1; i++) {
        if (arr[i] > arr[i + 1])
            return 0;
    }
    return 1;
}

void bogosort(int *arr, int length) {
    while (!isSorted(arr, length)) {
        shuffle(arr, length);
    }
}

int main() {
    srand(time(0));

    int length = 0;
    char response = 'n';

    int *arr = calloc(0, 0);

    while (response != 'y') {
        printf("Do you want to quit (y/n): ");
        scanf("%1s", &response);

        printf("Enter a number: ");

        int new = 0;
        scanf("%d", &new);

        length++;
        int *newArr = malloc(sizeof(int) * length);

        memcpy(newArr, arr, sizeof(int) * (length - 1));
        newArr[length - 1] = new;
        free(arr);
        arr = newArr;
    }

    printArr(arr, length);
    printf("Sorting . . .\n");
    bogosort(arr, length);

    printf("Sorted\n");
    printArr(arr, length);
    return 0;
}
