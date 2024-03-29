       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG25.
      *    MOVE PARA V�RIAS VARI�VEIS.

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  6-BYTES   PIC X(6).
       01  5-BYTES   PIC X(5).
       01  4-BYTES   PIC X(4).
       01  3-BYTES   PIC X(3).
       01  2-BYTES   PIC X(2).
       01  1-BYTE   PIC X(1).

       01  5-DIGITOS  PIC 9(5).
       01  4-DIGITOS  PIC 9(4).
       01  3-DIGITOS  PIC 9(3).
       01  2-DIGITOS  PIC 9(2).
       01  1-DIGITO   PIC 9(1).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           MOVE "Paulo" TO 6-BYTES
           5-BYTES 4-BYTES 3-BYTES 2-BYTES 1-BYTE.


           MOVE 2397 TO 5-DIGITOS 4-DIGITOS 3-DIGITOS
           2-DIGITOS 1-DIGITO.


           DISPLAY 6-BYTES.
           DISPLAY 5-BYTES.
           DISPLAY 4-BYTES.
           DISPLAY 3-BYTES.
           DISPLAY 2-BYTES.
           DISPLAY 1-BYTE.

           DISPLAY "==========".

           DISPLAY 5-DIGITOS.
           DISPLAY 4-DIGITOS.
           DISPLAY 3-DIGITOS.
           DISPLAY 2-DIGITOS.
           DISPLAY 1-DIGITO.

       PROGRAM-DONE.
           STOP RUN.
