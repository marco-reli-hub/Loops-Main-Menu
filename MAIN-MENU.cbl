      *    Write a main menu for all loop COBOL codes

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-MENU-PROGRAM.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *    Main Menu Variables:
       01  CHOOSE                      PIC 9(2) VALUE 11.

      *    Print One to Five Variable:
       01  OF-NUMBER                   PIC 9(1) VALUE 1.

      *    Print Even Number One to N Variables:
       01  ON-NUMBER                   PIC 9(9) VALUE 1.
       01  ON-INPUT                    PIC 9(9).
       01  DISPLAY-ON-NUMBER           PIC ZZ9.

      *    Print Even Number N to M Variables:
       01  NM-MIN-INPUT                PIC 9(9).
       01  NM-MAX-INPUT                PIC 9(9).
       01  DISPLAY-NM-INPUT            PIC ZZ9.

      *    N to M Odds Sum Variables:
       01  OS-SUMS                     PIC 9(9) VALUE 0.
       01  OS-MIN-INPUT                PIC 9(9).
       01  OS-MAX-INPUT                PIC 9(9).
       01  DISPLAY-OS-SUM              PIC ZZZ,ZZ9.

      *    Factorial Variables:
       01  FACTORIAL                   PIC 9(9) VALUE 1.
       01  COUNTER                     PIC 9(9) VALUE 1.
       01  FACTORIAL-INPUT             PIC 9(9).
       01  DISPLAY-FACTORIAL           PIC ZZZ,ZZZ,ZZ9.

      *    Digits Sum Variables:
       01  DIGIT-SUM                   PIC 9(9) VALUE 0.
       01  DIGIT-INPUT                 PIC 9(9).
       01  DIGIT                       PIC 9(9).
       01  DISPLAY-DIGIT-SUM           PIC ZZ9.

      *    Fibonacci Variables:
       01  FIRST-NUM                   PIC 9(9) VALUE 0.
       01  SECOND-NUM                  PIC 9(9) VALUE 1.
       01  NEXT-NUM                    PIC 9(9).
       01  COUNT-N                     PIC 9(9).
       01  N                           PIC 9(9).
       01  DISPLAY-FIRST-NUM           PIC ZZZ,ZZ9.

      *    Prime Number Variables:
       01  IS-PRIME                    PIC 9 VALUE 1.
       01  NUM                         PIC 9(3).
       01  DIVISOR                     PIC 9(9).
       01  REMAINDERS                  PIC 9(9).
       01  DISPLAY-NUM                 PIC ZZ9.

      *    Decimal to Binary Variables:
       01  BINARY-NUM                  PIC X(32) VALUE SPACES.
       01  POSITIONS                   PIC 9(9) VALUE 25.
       01  DECIMAL-NUM                 PIC 9(9).
       01  TEMP-NUM                    PIC 9(9).
       01  REMAINDER-N                 PIC 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "[-------------------------------------------------]"
           DISPLAY "[                 LOOP MAIN MENU                  ]"
           DISPLAY "[-------------------------------------------------]"
           DISPLAY "[ 0 : Exit Main Menu.                             ]"
           DISPLAY "[ 1 : Print Name Five Times.                      ]"
           DISPLAY "[ 2 : Print One to Five.                          ]"
           DISPLAY "[ 3 : Print Even Numbers from One to N.           ]"
           DISPLAY "[ 4 : Print Even Numbers from N to M.             ]"
           DISPLAY "[ 5 : N to M Odd Numbers Sum.                     ]"
           DISPLAY "[ 6 : Number Factorial.                           ]"
           DISPLAY "[ 7 : Number Digit Sum.                           ]"
           DISPLAY "[ 8 : Number Fibonacci.                           ]"
           DISPLAY "[ 9 : Prime Number or Not.                        ]"
           DISPLAY "[ 10: Decimal to Binary Number.                   ]"
           DISPLAY "[-------------------------------------------------]"
           DISPLAY " "

           PERFORM UNTIL CHOOSE = 0
               DISPLAY "_______________________________________________"
               DISPLAY "Choose a Program to Run: "
               ACCEPT CHOOSE
               DISPLAY " "

               EVALUATE CHOOSE
               WHEN 1
                   DISPLAY "Print Name Five Times Program"
                   PERFORM 5 TIMES
                       DISPLAY "Marco D. Reli"
                   END-PERFORM
                   DISPLAY " "

               WHEN 2
                   DISPLAY "Print One to Five Program"
                   PERFORM 5 TIMES
                       DISPLAY OF-NUMBER
                       COMPUTE OF-NUMBER = OF-NUMBER + 1
                   END-PERFORM
                   DISPLAY " "

               WHEN 3
                   DISPLAY "Print Evens One to N Program"
                   DISPLAY "Enter the maximum number: "
                   ACCEPT ON-INPUT

                   PERFORM UNTIL ON-NUMBER > ON-INPUT
                       IF FUNCTION MOD(ON-NUMBER, 2) = 0
                           MOVE ON-NUMBER TO DISPLAY-ON-NUMBER
                           DISPLAY DISPLAY-ON-NUMBER
                       END-IF

                       COMPUTE ON-NUMBER = ON-NUMBER + 1
                   END-PERFORM
                   DISPLAY " "

               WHEN 4
                   DISPLAY "Print Evens N to M Program"
                   DISPLAY "Enter the minimum number: "
                   ACCEPT NM-MIN-INPUT

                   DISPLAY "Enter the maximum number: "
                   ACCEPT NM-MAX-INPUT

                   PERFORM UNTIL NM-MIN-INPUT > NM-MAX-INPUT
                       IF FUNCTION MOD(NM-MIN-INPUT, 2) = 0
                           MOVE NM-MIN-INPUT TO DISPLAY-NM-INPUT
                           DISPLAY DISPLAY-NM-INPUT
                       END-IF

                       COMPUTE NM-MIN-INPUT = NM-MIN-INPUT + 1
                   END-PERFORM
                   DISPLAY " "

               WHEN 5
                   DISPLAY "N to M Odds Sum Program"
                   DISPLAY "Enter the minimum number: "
                   ACCEPT OS-MIN-INPUT

                   DISPLAY "Enter the maximum number: "
                   ACCEPT OS-MAX-INPUT

                   PERFORM UNTIL OS-MIN-INPUT > OS-MAX-INPUT
                       IF FUNCTION MOD(OS-MIN-INPUT, 2) = 1
                           COMPUTE OS-SUMS = OS-SUMS + OS-MIN-INPUT
                       END-IF

                       COMPUTE OS-MIN-INPUT = OS-MIN-INPUT + 1
                   END-PERFORM

                   MOVE OS-SUMS TO DISPLAY-OS-SUM
                   DISPLAY "Sum of all odd numbers: " DISPLAY-OS-SUM
                   DISPLAY " "

               WHEN 6
                   DISPLAY "Factorial Program"
                   DISPLAY "Enter a number: "
                   ACCEPT FACTORIAL-INPUT

                   PERFORM UNTIL COUNTER > FACTORIAL-INPUT
                       COMPUTE FACTORIAL = FACTORIAL * COUNTER
                       ADD 1 TO COUNTER
                   END-PERFORM

                   MOVE FACTORIAL TO DISPLAY-FACTORIAL
                   DISPLAY "Factorial: " DISPLAY-FACTORIAL
                   DISPLAY " "

               WHEN 7
                   DISPLAY "Digits Sum Program"
                   DISPLAY "Enter a number: "
                   ACCEPT DIGIT-INPUT

                   PERFORM UNTIL DIGIT-INPUT = 0
                       COMPUTE DIGIT = FUNCTION MOD(DIGIT-INPUT, 10)
                       ADD DIGIT TO DIGIT-SUM
                       COMPUTE DIGIT-INPUT = DIGIT-INPUT / 10
                   END-PERFORM

                   MOVE DIGIT-SUM TO DISPLAY-DIGIT-SUM
                   DISPLAY "Sum: " DISPLAY-DIGIT-SUM
                   DISPLAY " "

               WHEN 8
                   DISPLAY "Fibonacci Program"
                   DISPLAY "Enter number of terms: "
                   ACCEPT N

                   DISPLAY "Fibonacci Series:"
                   PERFORM VARYING COUNT-N
                       FROM 1 BY 1 UNTIL COUNT-N > N

                       MOVE FIRST-NUM TO DISPLAY-FIRST-NUM
                       DISPLAY DISPLAY-FIRST-NUM

                       COMPUTE NEXT-NUM = FIRST-NUM + SECOND-NUM
                       MOVE SECOND-NUM TO FIRST-NUM
                       MOVE NEXT-NUM TO SECOND-NUM
                   END-PERFORM
                   DISPLAY " "

               WHEN 9
                   DISPLAY "Prime Number Program"
                   DISPLAY "Enter a number: "
                   ACCEPT NUM

                   IF NUM < 2
                       MOVE 0 TO IS-PRIME
                   ELSE
                       PERFORM VARYING DIVISOR FROM 2 BY 1
                           UNTIL DIVISOR >= NUM OR IS-PRIME = 0

                           DIVIDE NUM BY DIVISOR
                               GIVING REMAINDERS
                               REMAINDER REMAINDERS

                           IF REMAINDERS = 0
                               MOVE 0 TO IS-PRIME
                           END-IF

                       END-PERFORM
                   END-IF

                   MOVE NUM TO DISPLAY-NUM

                   IF IS-PRIME = 1
                       DISPLAY DISPLAY-NUM " is a prime number."
                   ELSE
                       DISPLAY DISPLAY-NUM " is not a prime number."
                   END-IF
                   DISPLAY " "

               WHEN 10
                   DISPLAY "Decimal to Binary Program"
                   DISPLAY "Enter a decimal number: "
                   ACCEPT DECIMAL-NUM

                   MOVE DECIMAL-NUM TO TEMP-NUM

                   IF TEMP-NUM = 0
                       DISPLAY "Binary: 0"
                   ELSE
                       PERFORM UNTIL TEMP-NUM = 0

                           DIVIDE TEMP-NUM BY 2
                               GIVING TEMP-NUM
                               REMAINDER REMAINDER-N

                           MOVE REMAINDER-N TO BINARY-NUM(POSITIONS:1)

                           SUBTRACT 1 FROM POSITIONS

                       END-PERFORM

                       DISPLAY "Binary: " BINARY-NUM
                   END-IF
                   DISPLAY " "

               WHEN 0
                   DISPLAY " -- You Exited the Program. -- "
                   DISPLAY " "

               WHEN OTHER
                   DISPLAY " -- Invalid Input. -- "
                   DISPLAY " "

               END-EVALUATE
           END-PERFORM.

           STOP RUN.
       END PROGRAM MAIN-MENU-PROGRAM.
