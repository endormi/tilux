#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <chrono>
using namespace std;


// checks how long it takes to run a script
// this will be updated to something actually useful later
int main()
{
    auto s = chrono::high_resolution_clock::now();
    // this will be updated
    // later I will probably add other languages as well
    system("./proc_script.rb");

    auto e = chrono::high_resolution_clock::now();
    auto d = chrono::duration_cast<chrono::microseconds>( s - e ).count();

    cout << "\nScript took: " << d << " microseconds to run.\n\n";
    return 0;
}
