      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESCABARTE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT OUTPUT-FILE
           ASSIGN TO "C:\Users\Edison\Desktop\MP6\MASTER-FILE.DAT"
           ORGANISATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL
           FILE STATUS IS WS-FILE-STATUS.
       DATA DIVISION.
       FILE SECTION.


       FD OUTPUT-FILE
           DATA RECORD IS OUTPUT-REC.

       01 OUTPUT-REC.
           05 LOT_NUMBER_OUT PIC 999999999.
           05 SPACE-01 PIC X(3).
           05 OWNER_NAME_OUT PIC A(26).
           05 SPACE-02 PIC X(3).
           05 ASSESSED_VAL_OUT PIC 999999V99.
           05 SPACE-03 PIC X(4).


       WORKING-STORAGE SECTION.
       01 INFORMATION.
           05 LOT_NUMBER PIC 999999999.
           05 OWNER_NAME PIC A(26).
           05 ASSESSED_VAL PIC 999999V99.

       01 OPTION PIC 9.
       01 OPTION_CREATE PIC A.
       01 WS-FILE-STATUS PIC X(2).
       01 WS-EOF PIC X(1) VALUE "N".

       SCREEN SECTION.
       01 DATA_SCREEN.
           05 MENU.
               10 VALUE "DATA SCREEN" BLANK SCREEN LINE 1 COL 30.
               10 VALUE "[1] CREATE MASTER FILE" LINE 3 COL 12.
               10 VALUE "[2] UPDATE MASTER FILE" LINE 5 COL 12.
               10 VALUE "[3] PRINT MASTER FILE" LINE 7 COL 12.
               10 VALUE "[4] QUIT" LINE 9 COL 12.
               10 VALUE "ENTER OPTION: " LINE 11 COL 12.

           05 INFORMATION-SCREEN.
               10 VALUE "DATA SCREEN" BLANK SCREEN LINE 1 COL 30.
               10 VALUE "LOT NUMBER: " LINE 3 COL 12.
               10 VALUE "OWNER NAME: " LINE 5 COL 12.
               10 VALUE "ASSESSED VALUATION: " LINE 7 COL 12.
           05 RESPOND.
               10 VALUE "C - TO CONTINUE" LINE 16 COL 30.
               10 VALUE "B - TO BACK" LINE 18 COL 30.
               10 VALUE "ENTER CHOICE : " LINE 20 COL 30.


       PROCEDURE DIVISION.
       MAINLINE.

       OPEN OUTPUT OUTPUT-FILE.






       A-50-INITIALIZE.
           DISPLAY MENU.

           ACCEPT OPTION LINE 11 COL 27.





           IF OPTION = 1 THEN
               PERFORM A-100-OPTION3-CREATE
           ELSE IF OPTION = 2 THEN
               PERFORM B-200-OPTION3-UPDATE
           ELSE IF  OPTION = 3 THEN
               PERFORM C-300-OPTION4-DISPLAY
           ELSE IF OPTION = 4 THEN
               PERFORM D-400-OPTION5-QUIT
           END-IF.









           A-100-OPTION3-CREATE.


           PERFORM INNER-A100 UNTIL OPTION_CREATE = "B".

           INNER-A100.
           DISPLAY INFORMATION-SCREEN.

           ACCEPT LOT_NUMBER LINE 3 COL 40.
           ACCEPT OWNER_NAME LINE 5 COL 40.
           ACCEPT ASSESSED_VAL LINE 7 COL 40.

           MOVE LOT_NUMBER TO LOT_NUMBER_OUT.
           MOVE "   " TO SPACE-01.
           MOVE OWNER_NAME TO OWNER_NAME_OUT.
           MOVE "   " TO SPACE-02.
           MOVE ASSESSED_VAL TO ASSESSED_VAL_OUT.
           MOVE "    " TO SPACE-03.

           WRITE OUTPUT-REC.
           DISPLAY RESPOND.
           ACCEPT OPTION_CREATE LINE 20 COL 45.




           IF OPTION_CREATE = "B" THEN
               PERFORM A-50-INITIALIZE.

       B-200-OPTION3-UPDATE.

           PERFORM INNER-A100 UNTIL OPTION_CREATE = "B".



       C-300-OPTION4-DISPLAY.
           OPEN INPUT OUTPUT-FILE.
           *>PERFORM DISPLAY-INTEL.
           PERFORM DISPLAY-INTEL THRU READ-PARA-EXIT UNTIL WS-EOF = "Y".
           CLOSE OUTPUT-FILE.



       D-400-OPTION5-QUIT.
           CLOSE OUTPUT-FILE.

           STOP RUN.

       DISPLAY-INTEL.
           MOVE ZERO TO LOT_NUMBER_OUT.
           READ OUTPUT-FILE
           AT END
           MOVE 'Y' TO WS-EOF
           NOT AT END

           DISPLAY '---- ', OUTPUT-REC
           END-READ.

       READ-PARA-EXIT.
           EXIT.
       END PROGRAM ESCABARTE.
