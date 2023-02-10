# C++ Hello World

The first part:
```C++
#include <iostream>
```
indicates that the "iostream" library needs to be included. This library is required to perform input/output operations.

The following
```C++
int main()
{

}
```
creates the main function which is where the program starts.

Within the main function we can now execute code that prints out "Hello World":
```C++
std::cout << "Hello World" << std::endl;
```
the <em>cout</em> is used to print to the console and the <em>endl</em> indicates the line will be ended after the printed message.

alternatively, we could add
```C++
using namespace std;
```
under the <em>#include</em> statement and then we can write:
```C++
cout << "Hello World" << endl;
```
essentially, we no longer need to indicate that we are using the standard namespace in each command since we already set it as the standard.
