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
       01 TES PIC 99.
       PROCEDURE DIVISION.
       100-MAIN.
           PERFORM UNTIL TES = 2
               DISPLAY "ENTER TEST"
               ACCEPT TES
               DISPLAY TES

           END-PERFORM
           STOP RUN.
