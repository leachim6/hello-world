#include <iostream>
using namespace std;

// Function to find maximum of two numbers
int findMax(int a, int b) {
    return (a > b) ? a : b;
}

int main() {
    int num1, num2;
    cout << "Enter two numbers: ";
    cin >> num1 >> num2;

    cout << "Maximum is: " << findMax(num1, num2) << endl;

    return 0;
}
