#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int main()
{
    time_t t;
    srand((unsigned)time(&t));

    int length = 0;
    printf("How many elements do you have?: ");
    scanf("%d", &length);

    int* arr = (int*)calloc(length * sizeof(int), 0);

    for (int i = 0; i < length; i++)
    {
        printf("Enter a number: ");

        int num;
        scanf("%d", &num);

        arr[i] = num;
    }

    printArray(arr, &length);
    bogosort(arr, &length);
    printArray(arr, &length);

    free(arr);
}

void printArray(int* arr, int* length)
{
    printf("[");
    for (int i = 0; i < *length; i++)
    {
        printf("%d, ", arr[i]);
    }
    printf("]\n");
}

void bogosort(int* arr, int* length)
{
    while (isSorted(arr, length) != 1)
    {
        printf("shuffle");
        shuffle(arr, length);
    }
}

int isSorted(int* arr, int* length)
{
    for (int i = 0; i < length - 1; i++)
    {
        // printf("arr[%d]", i);
         if (arr[i] > arr[i + 1])
         {
             return 0;
         }
    }

    return 1;
}

void shuffle(int* arr, int* length)
{
    for (int i = 0; i < length; i++)
    {
        int j = rand_range(0, length);
        swap(arr, i, j);
    }
}

void swap(int* arr, int i, int j)
{
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

int rand_range(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}
