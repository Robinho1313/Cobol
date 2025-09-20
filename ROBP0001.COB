      *----------------------------------------------------------------* 
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------* 
       
       PROGRAM-ID. ROBP0001.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  17/09/2025.
       DATE-COMPILED. 7/09/2025.
      *OBJETIVO: CLÁUSULA PICTURE: FORMATO DE EDIÇÃO
      *          
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
       77 NUMERO-UM     PIC 999.999.999,99.
       77 NUMERO-DOIS   PIC ZZZ.ZZZ.ZZZ,ZZ.
       77 NUMERO-TRES   PIC ZZZ.ZZZ.ZZ9,99.
       77 NUMERO-QUATRO PIC $$$.$$$.$$9,99.
       77 NUMERO-CINCO  PIC 999B999B999B99.
      *  
      *
       LINKAGE SECTION.
      *
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
      
           PERFORM 10000-ATRIBUI-VALOR.
           PERFORM 20000-APRESENTAR-VALORES.
      
           STOP RUN.
      *----------------------------------------------------------------*
       10000-ATRIBUI-VALOR SECTION.
      *----------------------------------------------------------------* 
           MOVE 1380 TO NUMERO-UM.
           MOVE 1380 TO NUMERO-DOIS.
           MOVE 1380 TO NUMERO-TRES.
           MOVE 1300 TO NUMERO-QUATRO.
           MOVE 1380 TO NUMERO-CINCO.

       10000-FIM.
           EXIT.
      *     
      *----------------------------------------------------------------*
       20000-APRESENTAR-VALORES SECTION.
      *----------------------------------------------------------------* 
           DISPLAY NUMERO-UM.
           DISPLAY NUMERO-DOIS.
           DISPLAY NUMERO-TRES.
           DISPLAY NUMERO-QUATRO.
           DISPLAY NUMERO-CINCO.
 
       20000-FIM.
           EXIT.        
                  
          