      *----------------------------------------------------------------* 
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------* 
       
       PROGRAM-ID. SOMA.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  16/09/2025.
       DATE-COMPILED. 16/09/2025.
      *OBJETIVO: PROGRAMA COBOL QUE REALIZA SOMA UTILIZANDO VETORES E
      *          PERFORM UNTIL
      *----------------------------------------------------------------* 
       ENVIRONMENT DIVISION.
      *----------------------------------------------------------------*
       
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA. 
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

      *----------------------------------------------------------------*
       DATA DIVISION.
      *----------------------------------------------------------------*
        
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *----------------------------------------------------------------*
      *                   DECLARACAO DE VARIAVEIS
      *----------------------------------------------------------------*
       77 INDICE      PIC 9(001) VALUE 1.
       77 RESULTADO   PIC 9(004) VALUE ZEROS.
       77 SOMA-FMTD   PIC ZZZ9.
      * 
      *----------------------------------------------------------------*
      *                   DECLARACAO DO VETOR
      *----------------------------------------------------------------* 
       01 VETOR-NUMEROS.
          05 NUMERO OCCURS 4 TIMES PIC 9(004).   
      *
       LINKAGE SECTION.
      *
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
      
           PERFORM 10000-ATRIBUI-VALOR.
           PERFORM 20000-SOMAR-VALOR.
      
           STOP RUN.
      *----------------------------------------------------------------*
       10000-ATRIBUI-VALOR SECTION.
      *----------------------------------------------------------------* 

           MOVE 11 TO NUMERO(1).
           MOVE 12 TO NUMERO(2).
           MOVE 13 TO NUMERO(3).
           MOVE 14 TO NUMERO(4).

       10000-FIM.
           EXIT.
      *     
      *----------------------------------------------------------------*
       20000-SOMAR-VALOR SECTION.
      *----------------------------------------------------------------* 
           
           PERFORM UNTIL INDICE > 4            
              ADD NUMERO(INDICE) TO RESULTADO
              ADD 1 TO INDICE
           END-PERFORM.

           MOVE RESULTADO TO SOMA-FMTD.

           DISPLAY 'SOMA.....: ' SOMA-FMTD.
      
       20000-FIM.
           EXIT.        
                  
          