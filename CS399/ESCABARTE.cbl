      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 RECORD_INPUT.
           05 ACCOUNT_NUMBER PIC 99999.
           05 ACCOUNT_NAME PIC X(21).
           05 PRINCIPAL_AMOUNT PIC 999V99.
           05 YEARS_OF_DEPOSIT PIC 99.
       01 CHOICE.
           05 THE_CHOICE PIC X VALUE SPACES.
       01 INTEREST PIC 999V99.

       SCREEN SECTION.
       01 DATA-SCREEN.
           05 DEPOSIT.
               10 VALUE "DATA SCREEN" BLANK SCREEN LINE 1 COL 30.
               10 VALUE "ACCOUNT NUMBER : " LINE 3 COL 12.
               10 VALUE "ACCOUNT NAME : " LINE 5 COL 12.
               10 VALUE "PRINCIPAL AMOUNT : " LINE 7 COL 12.
               10 VALUE "YEARS OF DEPOSIT : " LINE 9 COL 12.
           05 RESPOND.
               10 VALUE "C - TO CONTINUE" LINE 16 COL 30.
               10 VALUE "Q - TO QUIT" LINE 18 COL 30.
               10 VALUE "ENTER CHOICE : " LINE 20 COL 30.
               10 RESPONSE PIC X TO THE_CHOICE.

       PROCEDURE DIVISION.
       MAINLINE.

           PERFORM B-200-LOOP UNTIL THE_CHOICE = "Q".
           PERFORM C-100-TERMINATE.

       B-200-LOOP.
           DISPLAY DEPOSIT.
           DISPLAY RESPOND.
           ACCEPT ACCOUNT_NUMBER LINE 3 COL 40.
           ACCEPT ACCOUNT_NAME LINE 5 COL 40.
           ACCEPT PRINCIPAL_AMOUNT LINE 7 COL 40.
           ACCEPT YEARS_OF_DEPOSIT LINE 9 COL 40.
           IF PRINCIPAL_AMOUNT >= 5000 AND YEARS_OF_DEPOSIT >= 3 THEN

               DISPLAY "INTEREST RATE = 10%" LINE 12 COL 16

           ELSE IF PRINCIPAL_AMOUNT >= 5000 AND YEARS_OF_DEPOSIT < 3
               THEN
               DISPLAY "INTEREST RATE = 8 %"  LINE 12 COL 16

           ELSE IF PRINCIPAL_AMOUNT < 5000
               THEN
               DISPLAY "INTEREST RATE = 7%"  LINE 12 COL 16


           END-IF.


           ACCEPT RESPOND.



       C-100-TERMINATE.
           STOP RUN.





       END PROGRAM YOUR-PROGRAM-NAME.
