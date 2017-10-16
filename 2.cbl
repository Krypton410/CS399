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
       01 WS-STUDENT-NAME PIC X(25).

       01 WS-DATE PIC X(10).
       PROCEDURE DIVISION.
       ACCEPT WS-STUDENT-NAME.
       ACCEPT WS-DATE.
       DISPLAY "NAME ", WS-STUDENT-NAME.
       DISPLAY "DATE ", WS-DATE.
       STOP RUN.

       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
