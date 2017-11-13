      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MIDTERM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FRAME.
           05 COLORING PIC 99.
           05 INCH-HEIGHT PIC 99.
           05 INCH-WIDTH PIC 99.
           05 FRAME-TYPE PIC A(2).
           05 COLOR-CHOSED PIC A(10).
           05 CARDBOARD PIC 99.
           05 GLASS PIC 99.
           05 CROWN PIC 99.
           05 COST PIC 99999.
           05 F-COST PIC 99999.

       01 CHOICE PIC X.

       LINKAGE SECTION.
       01 PARAMETRES.
           02 PA-RETURN-CODE PIC 99 VALUE 0.
       SCREEN SECTION.
       01 FRAME-SCREEN.
           10 VALUE "MIDTERM EXAM CS 399" BLANK SCREEN LINE 1 COL 30.
           10 VALUE "FRAME HEIGHT: " LINE 3 COL 12.
           10 VALUE "FRAME WIDTH: " LINE 5 COL 12.
           10 VALUE "TYPE OF FRAME: " LINE 7 COL 12.
           10 VALUE "A.) REGULAR FRAME" LINE 9 COL 12.
           10 VALUE "B.) FANCY FRAME" LINE 11 COL 12.
           10 VALUE "COLOR:" LINE 13 COL 12.
           10 VALUE "# OF CROWNS ():" LINE 15 COL 12.
           10 VALUE "COST : P " LINE 18 COL 12.
       01 RESPOND.
           10 VALUE "C - TO CONTINUE" LINE 21 COL 30.
           10 VALUE "Q - TO QUIT" LINE 23 COL 30.
           10 VALUE "ENTER CHOICE : " LINE 25 COL 30.
           10 RESPONSE PIC X TO CHOICE.
       PROCEDURE DIVISION.
       MAINLINE.
           PERFORM DETAILS UNTIL CHOICE = "Q".
           PERFORM C-TERMINATE.
       DETAILS.
           DISPLAY FRAME-SCREEN.
           DISPLAY RESPOND.
           ACCEPT INCH-HEIGHT LINE 3 COL 40.
           ACCEPT INCH-WIDTH LINE 5 COL 40.
           ACCEPT FRAME-TYPE LINE 7 COL 40.
           ACCEPT COLOR-CHOSED LINE 13 COL 40.
           ACCEPT CROWN LINE 15 COL 40.
           IF FRAME-TYPE = "A"
               THEN
               COMPUTE COST = INCH-HEIGHT + INCH-WIDTH * 34 + CROWN * 35
               DISPLAY COST LINE 18 COL 21
           ELSE IF FRAME-TYPE = "B"
               THEN
               COMPUTE COST = INCH-HEIGHT + INCH-WIDTH * 44 + CROWN * 35
               DISPLAY COST LINE 18 COL 21
           ELSE
               DISPLAY "ERROR" LINE 18 COL 21.
           ACCEPT RESPOND.
       C-TERMINATE.
           STOP RUN.
           *>COLOR IS P10/INCH
           *>REGULAR FRAME P15/INCH
           *>FANCY FRAME P25/INCH
           *>CARDBOARD PAPER P2.INCH
           *>GLASS P7/INCH
           *>CROWN P35/CROWN
       END PROGRAM MIDTERM.
