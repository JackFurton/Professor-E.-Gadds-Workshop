#include <iostream>
#include <string>
using namespace std;

int main () {
    int n;
    cin >> n;

    int counter = 0;

    for (int i = 0; i < n; i++) {
        int input;
        cin >> input;

        if (input < 0) {
            counter++;
        }
    }

    cout << counter << endl;
}
