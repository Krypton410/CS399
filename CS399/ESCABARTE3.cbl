      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPFILE ASSIGN TO
           'D:\Files\Cobol\CS399\ESCABARTE2.DAT'
           ORGANISATION IS SEQUENTIAL
           ACCESS MODE IS SEQUENTIAL
           FILE STATUS IS WS-FILE-STATUS.




       DATA DIVISION.
       FILE SECTION.
       FD EMPFILE.
       01 NEW-FILE.
           05 ACCOUNT_NUMBER_OUT PIC 9999.
           05 SPACE-01-OUT PIC X(3).
           05 ACCOUNT_NAME_OUT PIC X(21).
           05 SPACE-02-OUT PIC X(3).
           05 PRINCIPAL_AMOUNT_OUT PIC 99999.
           05 SPACE-03-OUT PIC X(3).
           05 YEARS_OF_DEPOSIT_OUT PIC 99.
           05 DIVIDER PIC X(8).
           05 INTEREST-OUT   PIC 999.99.
           05 DIVIDER-02 PIC X(8).
           05 PERCENT-OUT PIC X(3).


       WORKING-STORAGE SECTION.
       01 WS-EOF PIC A(1) VALUE 'N'.
       01 WS-FILE-STATUS PIC X(2).

       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN INPUT EMPFILE.
           PERFORM READ-PARA THRU READ-PARA-EXIT UNTIL WS-EOF = 'Y'.
           CLOSE EMPFILE.
           STOP RUN.
       MAIN-PARA-EXIT.
       EXIT.

       READ-PARA.
           MOVE ZERO TO ACCOUNT_NUMBER_OUT.
           READ EMPFILE
           AT END
               MOVE 'Y' TO WS-EOF
           NOT AT END

           DISPLAY '---- ', NEW-FILE
       END-READ.
       READ-PARA-EXIT.
           EXIT.




       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
