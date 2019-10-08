       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG21.
      *     UTILIZAÇÃO DO PERFORM UNTIL
      *     PROGRAMA PARA FAZER UMA TABUADA

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUMERO      PIC 99.
       01  MULTIPLICADOR PIC 999.
       01  PRODUTO       PIC 9(4).


       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           PERFORM INICIALIZACAO-PROGRAMA.
           PERFORM PEGA-TABUADA.
           PERFORM EXIBIR-TABUADA.
       PROGRAM-DONE.
           STOP RUN.

       INICIALIZACAO-PROGRAMA.
           MOVE 0 TO MULTIPLICADOR.

       PEGA-TABUADA.
           DISPLAY "Qual a tabuada de Multiplicacao(01-99)?".
           ACCEPT NUMERO.


       EXIBIR-TABUADA.
           DISPLAY " A TABUADA DE MULTIPLICACAO DE " NUMERO " EH".
           PERFORM CALCULA-E-EXIBE UNTIL MULTIPLICADOR > 5.

       CALCULA-E-EXIBE.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY
            NUMERO " * " MULTIPLICADOR " = " PRODUTO.
