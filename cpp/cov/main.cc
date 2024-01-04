#include <iostream>
#include <string>
using namespace std;

int main () {
    string n;
    cin >> n;

    if (n.find ("COV") != string::npos) {
        cout << "Veikur!\n";
    } else {
        cout << "Ekki veikur!\n";
    }
}
/*
The std::string::find function returns the position of the first occurrence of the substring in the string. If the substring is not found, it returns std::string::npos.

n.find("COV") by itself will return a position if "COV" is found, or std::string::npos if it's not found. But we can't use this value directly in an if statement, because if expects a boolean condition.

In C++, any non-zero value is considered true and zero is considered false. std::string::npos is a non-zero value (actually, it's the maximum value that can be held by size_t), so if "COV" is not found and n.find("COV") returns std::string::npos, the if statement would consider it true, which is not what we want.

we need to compare the result of n.find("COV") to std::string::npos. If "COV" is found, n.find("COV") will return its position (which is not equal to std::string::npos), and the if statement will be true. If "COV" is not found, n.find("COV") will return std::string::npos (which is equal to std::string::npos), and the if statement will be false.
*/

//tldr: checking size_t of the string

//use the find to locate "COV"

//if not we return npos which hits the else statement
