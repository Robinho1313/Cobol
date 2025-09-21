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
       77 NUMERO-UM     PIC 999.999.999,99 VALUE ZEROS.
       77 NUMERO-DOIS   PIC ZZZ.ZZZ.ZZZ,ZZ VALUE ZEROS.
       77 NUMERO-TRES   PIC ZZZ.ZZZ.ZZ9,99 VALUE ZEROS.
       77 NUMERO-QUATRO PIC $$$.$$$.$$9,99 VALUE ZEROS.
       77 NUMERO-CINCO  PIC 999B999B999B99 VALUE ZEROS.
       77 NUMERO-SEIS   PIC ***.***.**9,99 VALUE ZEROS.
       77 NUMERO-SETE   PIC ---.---.--9,99 VALUE ZEROS.

       01 SITUACAO-CLIENTE       PIC X(01) VALUE SPACES.
          88 ATIVO                         VALUE 'A'.
          88 INATIVO                       VALUE 'B'. 
          88 CANCELADO                     VALUE 'C'.
      *    
      *
       LINKAGE SECTION.
      *
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
      
           PERFORM 10000-ATRIBUI-VALOR.
           PERFORM 20000-APRESENTAR-VALORES.
           PERFORM 30000-CONDICIONAL.
      
           STOP RUN.
      *----------------------------------------------------------------*
       10000-ATRIBUI-VALOR SECTION.
      *----------------------------------------------------------------* 
           MOVE 1380 TO NUMERO-UM.
           MOVE 1380 TO NUMERO-DOIS.
           MOVE 1380 TO NUMERO-TRES.
           MOVE 1300 TO NUMERO-QUATRO.
           MOVE 1380 TO NUMERO-CINCO.
           MOVE 1380 TO NUMERO-SEIS.
           MOVE 1380 TO NUMERO-SETE.

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
           DISPLAY NUMERO-SEIS.
           DISPLAY NUMERO-SETE.
 
       20000-FIM.
           EXIT.        
                  
      *----------------------------------------------------------------*
       30000-CONDICIONAL SECTION.
      *----------------------------------------------------------------* 
      *     
           MOVE 'B' TO SITUACAO-CLIENTE.

           IF ATIVO
              DISPLAY 'CLIENTE ATIVO'
           END-IF.

           IF INATIVO
              DISPLAY 'CLIENTE INATIVO'
           END-IF.

           IF CANCELADO
              DISPLAY 'CLIENTE CANCELADO'
           END-IF.
      *
       30000-FIM.
           EXIT.          