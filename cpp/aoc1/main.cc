#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <vector>
using namespace std;

int main() {
  ifstream ins("file2.txt");
  if (!ins) {
    cout << "File not found.\n";
    exit(1);
  }
  int total = 0;
  string s;
  while (getline(ins, s)) {
    int first_digit = 0;
    for (auto it = s.begin(); it != s.end(); it++) {
      char ch = *it;
      if (isdigit(ch)) {
        first_digit = ch - '0';
        break;
      }
    }
    int last_digit = 0;
    for (auto it = s.rbegin(); it != s.rend(); it++) {
      char ch = *it;
      if (isdigit(ch)) {
        last_digit = ch - '0';
        break;
      }
    }
    int number = first_digit * 10 + last_digit;
    total += number;
    cout << total << endl;
  }
}
