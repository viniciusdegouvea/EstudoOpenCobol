       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG20.
      *     UTILIZAÇÃO DO PERFORM N TIMES
      *     PROGRAMA PARA FAZER UMA TABUADA

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  NUMERO      PIC 99.
       01  MULTIPLICADOR PIC 999.
       01  PRODUTO       PIC 9(4).
       01  QUANTOS       PIC 99.

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
           DISPLAY "Qual o tamanho da tabuada?".
           ACCEPT QUANTOS.

       EXIBIR-TABUADA.
           DISPLAY " A TABUADA DE MULTIPLICACAO DE " NUMERO " EH".
           PERFORM CALCULA-E-EXIBE QUANTOS TIMES.

       CALCULA-E-EXIBE.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY
            NUMERO " * " MULTIPLICADOR " = " PRODUTO.
