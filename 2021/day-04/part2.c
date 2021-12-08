// part2.c
// Includes
#include <stdio.h>


// Constants
int MAX_NUMBERS = 500;
int MAX_BOARDS = 100;
int BOARD_COLS = 5;
int BOARD_ROWS = 5;
int HIT = -1;
int DISCARDED = -2;


// Functions
// Mark a board
void mark_board(int board[BOARD_ROWS][BOARD_COLS], int number) {
  for(int row = 0; row < BOARD_ROWS; row++) {
    for(int col = 0; col < BOARD_COLS; col++) {
      if (board[row][col] == number) {
        board[row][col] = HIT;
      }
    }
  }
}

// Check a board
int check_board(int board[BOARD_ROWS][BOARD_COLS]) {
  if (board[0][0] == DISCARDED) {
    return DISCARDED;
  }
  int sum;
  for(int row = 0; row < BOARD_ROWS; row++) {
    sum = 0;
    for(int col = 0; col < BOARD_COLS; col++) {
      sum += board[row][col];
    }
    if (sum == HIT * BOARD_COLS) {
      return HIT;
    }
  }
  for(int col = 0; col < BOARD_COLS; col++) {
    sum = 0;
    for(int row = 0; row < BOARD_ROWS; row++) {
      sum += board[row][col];
    }
    if (sum == HIT * BOARD_ROWS) {
      return HIT;
    }
  }
  return 0;
}

// Discard a board
void discard_board(int board[BOARD_ROWS][BOARD_COLS]) {
  board[0][0] = DISCARDED;
}

// Points in board
int points_board(int board[BOARD_ROWS][BOARD_COLS]) {
  int points = 0;
  for(int row = 0; row < BOARD_ROWS; row++) {
    for(int col = 0; col < BOARD_COLS; col++) {
      if (board[row][col] != HIT) {
        points += board[row][col];
      }
    }
  }
  return points;
}



int main() {
  char* filename = "input";
  // Open file
  FILE *file;
  file = fopen(filename, "r");

  // Read numbers
  int num[MAX_NUMBERS];
  char sep;
  int numbers = 0;
  int finished = 0;
  while(!finished && fscanf(file,"%d", &num[numbers]) == 1) {
    fscanf(file, "%c", &sep);
    numbers++;
    finished = sep != ',';
  }

  // Read boards
  int boards_numbers[MAX_BOARDS][BOARD_ROWS][BOARD_COLS];
  int boards = 0;
  int col = 0;
  int row = 0;
  int value;
  while(fscanf(file,"%d", &value) == 1) {
    boards_numbers[boards][row][col] = value;
    col++;
    if (col == BOARD_COLS) {
      col = 0;
      row++;
      if (row == BOARD_ROWS) {
        row = 0;
        boards++;
      }
    }
  }

  // Close file
  fclose(file);

  // Check the boards
  int position = 0;
  int points = 0;
  int number;
  int discarded = 0;
  while (!points) {
    number = num[position++];
    for(int board = 0; board < boards; board++) {
      mark_board(boards_numbers[board], number);
    }
    for(int board = 0; !points && board < boards; board++) {
      int board_status = check_board(boards_numbers[board]);
      if (board_status == HIT) {
        if (discarded < (boards - 1)) {
          discarded++;
          discard_board(boards_numbers[board]);
        } else {
          points = points_board(boards_numbers[board]);
        }
      }
    }
  }

  // Calculate the result
  int result = points * number;

  // Print the result
  printf("Result Part 2:\n");
  printf("%i\n", result);

  return result;
}

