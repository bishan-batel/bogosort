using System.Collections;

void main()
{
  var numbers = new List<int>();

  while (true)
  {
    Console.Write("Do you want to exit? (y/n)");
    if (Console.ReadLine()?.StartsWith("y") ?? true) break;

    Console.Write("Enter a number:");
    int parsed = int.Parse(Console.ReadLine() ?? "69");
    numbers.Add(parsed);
  }

  Console.WriteLine(string.Join(",", numbers));
  Console.WriteLine("Bogosorting ...");
  Bogosort(numbers);
  Console.WriteLine("Sort Done");
  Console.WriteLine(string.Join(",", numbers));
}

void Bogosort(IList<int> arr)
{
  while (!IsSorted(arr))
  {
    Shuffle(arr);
  }
}

void Shuffle(IList<int> arr)
{
  for (var i = 0; i < arr.Count; i++)
  {
    var rand = (int)(arr.Count * Random.Shared.NextDouble());
    Swap(arr, i, rand);
  }
}

void Swap(IList<int> arr, int i, int j)
{
  (arr[i], arr[j]) = (arr[j], arr[i]);
}

bool IsSorted(IList<int> arr)
{
  for (var i = 0; i < arr.Count - 1; i++)
  {
    if (arr[i] > arr[i + 1]) return false;
  }

  return true;
}

main();