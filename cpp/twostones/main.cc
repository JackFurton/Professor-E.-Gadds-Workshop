#include <iostream>
#include <string>
using namespace std;

int main () {
    int n;
    cin >> n;

    if (n % 2 == 0) {
        cout << "Bob" << "\n";
    } else
        cout << "Alice" << "\n";
}
