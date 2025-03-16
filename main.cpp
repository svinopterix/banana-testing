#include "main.hpp"
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

void printWordsFromLine(const std::string &line) {
    std::istringstream stream(line);
    std::string word;

    while (stream >> word) {
        std::cout << word << std::endl;
    }
}

int main() {
    std::ifstream file("message");
    if (!file) {
        std::cerr << "Error opening file 'message'." << std::endl;
        return 1;
    }

    std::string line;
    std::getline(file, line);
    file.close();

    if (line.empty()) {
        std::cerr << "The file is empty or cannot be read." << std::endl;
        return 1;
    }

    std::cout << "Processing the following line from the file:" << std::endl;
    printWordsFromLine(line);

    return 0;
}
