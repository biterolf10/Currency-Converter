/*
i just made it on c++ cuz its much easier on it lmao
now i need to find how to make it update automaticly
*/
#include <iostream>
#include <string>
#include <map>
using namespace std;

float cValue(string c) {
    map<string, float> data{
        {"usd", 1.0f},
        {"rub", 91.82f},
        {"kzt", 480.09f},
        {"eur", .92f},
        {"byn", 3.27f},
        {"uah", 39.59f},
        {"brl", 5.14f},
        {"cad", 1.37f}
    };
 
    for (const auto& [n, v] : data) {
        if(c == n) return v;
    }
 
    return 1.0f;
}

float cGet(string c, string oc, float ca) {
    float v = cValue(c);

    float res = ((1/v) * ca) * cValue(oc);
    return res;
}

int main() {
    string c;
    string oc;
    float ca;
    cin >> c >> oc >> ca;
   
    cout << cGet(c, oc, ca);
    return 0;
}
