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
       01 o PIC 999.
       01 a PIC 999.
       01 c PIC 999.
       01 d PIC 999.
       01 result PIC 999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            ACCEPT o
            ACCEPT a
            ACCEPT d
            ADD o a
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
