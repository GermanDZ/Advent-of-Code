import java.io.*;
import java.util.Arrays;

class Part2 {  
  public static void main(String args[]) throws IOException {
    // System.out.println(Part2.result("test", 5));
    System.out.println(Part2.result("input", 12));
  }

  public static long result(String filename, int cols) throws IOException {
    File file = new File(filename);
    FileReader input = new FileReader(file);
    int col = 1;
    int rows = ((int)file.length()) / (cols+1);
    int row = 0;
    int bit;
    int[] o2 = new int[rows];
    int[] co2 = new int[rows];
    int value = 0;
    while ((bit = input.read()) != -1) {
      if (col % (cols+1) == 0) {
        o2[row] = value;
        co2[row] = value;
        value = 0;
        row++;
        col = 1;
      } else {
        value += (char)bit == '1' ? 1<<(cols-col) : 0;
        col++;
      }
    }
    long o2Value = -1;
    long co2Value = -1;
    int freqO2 = 0;
    int freqCO2 = 0;
    int prevFreqO2 = 0;
    int prevFreqCO2 = 0;
    int nonDiscardedO2 = 0;
    int nonDiscardedCO2 = 0;
    int prevNonDiscardedO2 = rows;
    int prevNonDiscardedCO2 = rows;
    int selectedRowO2 = -1;
    int selectedRowCO2 = -1;
    row = 0;
    col = 1;
    while (o2Value < 1 || co2Value < 1) {
      if (col > 1) {
        if (o2[row] > 0) {
          if ((prevFreqO2*2 >= prevNonDiscardedO2) == ((o2[row] & 1<<(cols-col+1)) > 0)) {
            nonDiscardedO2++;
            selectedRowO2 = row;
          } else {
            o2[row] = -1;
          }
        }
        if (co2[row] > 0) {
          if ((prevFreqCO2*2 < prevNonDiscardedCO2) == ((co2[row] & 1<<(cols-col+1)) > 0)) {
            nonDiscardedCO2++;
            selectedRowCO2 = row;
          } else {
            co2[row] = -1;
          }
        }
      }
      if (col == 1) {
        nonDiscardedO2++;
        nonDiscardedCO2++;
      }
      if (o2[row] >= 0 && (o2[row] & 1<<(cols-col)) > 0) {
        freqO2 += 1;
      }
      if (co2[row] >= 0 && (co2[row] & 1<<(cols-col)) > 0) {
        freqCO2 += 1;
      }
      row++;
      if (row == rows) {
        if (nonDiscardedO2 == 1) {
          o2Value = o2[selectedRowO2];
        }
        if (nonDiscardedCO2 == 1) {
          co2Value = co2[selectedRowCO2];
        }
        row = 0;
        prevFreqO2 = freqO2;
        prevFreqCO2 = freqCO2;
        freqO2 = 0;
        freqCO2 = 0;
        col++;
        prevNonDiscardedO2 = nonDiscardedO2;
        prevNonDiscardedCO2 = nonDiscardedCO2;
        nonDiscardedO2 = 0;
        nonDiscardedCO2 = 0;
      }
    }
    return o2Value * co2Value;
  }
}
