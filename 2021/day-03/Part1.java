import java.io.*;

class Part1 {  
  public static void main(String args[]) throws IOException {
    System.out.println("2021 - Day 03 - Part 1: " + Part1.result("input", 12));
  }

  public static long result(String filename, int cols) throws IOException {
    FileReader input = new FileReader(new File(filename));
    int col = 1;
    int rows = 0;
    int tot = 0;
    int bit;
    int[] freq = new int[cols];
    while ((bit = input.read()) != -1) {
      if (col % (cols+1) == 0) {
        rows++;
        col = 1;
      } else {
        if ((char)bit == '1') {
          freq[col - 1]++;
        }
        col++;
      }
    }
    long gamma = 0;
    long epsilon = 0;
    for(int i=0; i<cols; i++) {
      gamma += (freq[i] > (rows / 2) ? 1<<(cols-1-i) : 0);
      epsilon += (freq[i] > (rows / 2) ? 0 : 1<<(cols-1-i));
    }
    return gamma * epsilon;
  }
}
