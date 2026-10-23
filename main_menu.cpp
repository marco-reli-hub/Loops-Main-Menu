// Make a main menu for all the selection codes.

#include <iostream>
using namespace std;

int main()
{
    // Variables Initialization and declaration
    int choice;

    string name = "Marco D. Reli";

    int even_limit_no_3;

    int min_limit_no_4;
    int max_limit_no_4;

    int min_limit_no_5;
    int max_limit_no_5;
    int sum_no_5 = 0;

    int limit_no_6;
    int factorial = 1;

    int number_no_7;
    int sum_no_7 = 0;

    int fibonacci;
    int fib_0;
    int fib_1 = -1;
    int fib_2 = 1;

    int number_no_9;
    int prime = 1;

    int number_no_10;
    int bit;
    int binary = 0;

    cout << "This is the Main Menu for all the Sequnence Flowchart Projects!" << endl;
    cout << "[ Main Menu:                                                   ]" << endl;
    cout << "[ 0 - Exit!                                                    ]" << endl;
    cout << "[ 1 - Print Names.                                             ]" << endl;
    cout << "[ 2 - Print Number 1 to 5.                                     ]" << endl;
    cout << "[ 3 - Print Even Number 1 to N.                                ]" << endl;
    cout << "[ 4 - Print Even Number N to M.                                ]" << endl;
    cout << "[ 5 - Print N and M Odd Number Sum.                            ]" << endl;
    cout << "[ 6 - Number Factorial.                                        ]" << endl;
    cout << "[ 7 - Number Digits Sum.                                       ]" << endl;
    cout << "[ 8 - Fibonacci Series.                                        ]" << endl;
    cout << "[ 9 - Prime Numbers.                                           ]" << endl;
    cout << "[10 - Decimal to Binary.                                       ]" << endl << endl;

    do {
        cout << "Enter a number: ";
        cin >> choice;

        switch (choice) {
        case 1:
            for (int i = 0; i < 5; i++) {
                cout << name << endl;
            }
            cout << endl;
            break;

        case 2:
            for (int i = 1; i <= 5; i++) {
                cout << i << endl;
            }
            cout << endl;
            break;

        case 3:
            cout << "Enter a number: ";
            cin >> even_limit_no_3;

            cout << endl << "Even numbers from 1 to " << even_limit_no_3 << ":" << endl;
            for (int i = 1; i <= even_limit_no_3; i++) {
                if (i % 2 == 0) {
                    cout << i << "  ";
                }
            }
            cout << endl << endl;
            break;

        case 4:
            cout << "Enter the smallest number: ";
            cin >> min_limit_no_4;
            cout << "Enter the largest number: ";
            cin >> max_limit_no_4;

            cout << endl << "Even numbers from " << min_limit_no_4 << " to " << max_limit_no_4 << ":" << endl;
            for (int i = min_limit_no_4; i <= max_limit_no_4; i++) {
                if (i % 2 == 0) {
                    cout << i << "  ";
                }
            }
            cout << endl << endl;
            break;

        case 5:
            cout << "Enter the smallest number: ";
            cin >> min_limit_no_5;
            cout << "Enter the largest number: ";
            cin >> max_limit_no_5;

            cout << endl << "Odd numbers from " << min_limit_no_5 << " to " << max_limit_no_5 << ":" << endl;
            for (int minimum = min_limit_no_5; minimum <= max_limit_no_5; minimum++) {
                if (minimum % 2 != 0) {
                    cout << minimum << "  ";
                    sum_no_5 = sum_no_5 + minimum;
                }
            }
            cout << endl << "Sum: " << sum_no_5 << endl;
            cout << endl;
            break;

        case 6:
            cout << "Enter a number: ";
            cin >> limit_no_6;

            for (int i = 1; i <= limit_no_6; i++) {
                factorial = factorial * i;
            }
            cout << "Factorial: " << factorial << endl;
            cout << endl;
            break;

        case 7:
            cout << "Enter a number: ";
            cin >> number_no_7;

            for (int digit; number_no_7 != 0; digit = digit + sum_no_7) {
                digit = number_no_7 % 10;
                number_no_7 = number_no_7 / 10;
                sum_no_7 = sum_no_7 + digit;
            }
            cout << "Sum: " << sum_no_7 << endl;
            cout << endl;
            break;

        case 8:
            cout << "Enter a number: ";
            cin >> fibonacci;

            cout << "The Fibonacci Series: ";
            do {
                fib_0 = fib_1 + fib_2;
                fib_1 = fib_2;
                fib_2 = fib_0;
                cout << fib_0 << "  ";
                fibonacci--;
            } while (fibonacci > 0);
            cout << endl << endl;
            break;

        case 9:
            cout << "Enter a number: ";
            cin >> number_no_9;

            if (number_no_9 < 2) {
                prime = 0;
            }
            else {
                for (int flag = 2; flag * flag <= number_no_9; flag++) {
                    if (number_no_9 % flag == 0) {
                        prime = 0;
                        break;
                    }
                }
            }

            if (prime) {
                cout << number_no_9 << " is a prime number!" << endl;
            }
            else {
                cout << number_no_9 << " is not a prime number!" << endl;
            }
            cout << endl;
            break;

        case 10:
            cout << "Enter a number: ";
            cin >> number_no_10;

            for (int place = 1; number_no_10 > 0; place = place * 10) {
                bit = number_no_10 % 2;
                binary = bit * place + binary;
                number_no_10 = number_no_10 / 2;
            }
            cout << "Binary : " << binary << endl;
            cout << endl;
            break;

        case 0:
            cout << "Exited!" << endl << endl;
            break;

        default:
            cout << "Invalid Input!" << endl << endl;
            break;
        }
    } while (choice != 0);

    return 0;
}
