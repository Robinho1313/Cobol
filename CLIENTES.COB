      *----------------------------------------------------------------* 
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*        
       PROGRAM-ID. CLIENTES.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  22/07/2025.
       DATE-COMPILED. 22/07/2025.
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
      *----------------------------------------------------------------*
        FILE SECTION.      
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*  
        WORKING-STORAGE SECTION. 
      *----------------------------------------------------------------*       
       01  WRK-NOME         PIC  X(030) VALUE SPACES.                                     
       01  WRK-SALDO        PIC S9(07) COMP VALUE 0. 
       01  WRK-SALDO-FMT    PIC +Z.ZZ9,99.  
       01  WRK-TIPO-CONTA   PIC 9.                                      
      *----------------------------------------------------------------* 
        LINKAGE SECTION.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
      
           MOVE 'ROBSON'  TO WRK-NOME.
           MOVE 5000      TO WRK-SALDO.
           MOVE 2         TO WRK-TIPO-CONTA. 
         
           PERFORM 002-CALCULADO.
           PERFORM 003-VERIFICACAO.
           PERFORM 004-FINAL.
     
           STOP RUN.     
      ************************
       002-CALCULADO SECTION.
      ************************           
           EVALUATE WRK-TIPO-CONTA
            WHEN 1
               DISPLAY 'CONTA CORRENTE'
            WHEN 2
               DISPLAY 'CONTA POUPANCA'
            WHEN OTHER 
               DISPLAY 'NAO E CONTA DE PAGAMENTO'
           END-EVALUATE.  
           
           ADD 4000 TO WRK-SALDO.
           SUBTRACT 300 from WRK-SALDO.
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DIVIDE WRK-SALDO   BY 4 GIVING WRK-SALDO.
           COMPUTE WRK-SALDO = WRK-SALDO * 2.

           MOVE WRK-SALDO TO WRK-SALDO-FMT.    
       002-FIM. 
           EXIT. 
      ************************* 
       003-VERIFICACAO SECTION.
      *************************           
           DISPLAY 'NOME........: ' WRK-NOME.
           DISPLAY 'SALDO.......: ' WRK-SALDO.
           DISPLAY 'SALDO-FMT...: ' WRK-SALDO-FMT.

           if WRK-SALDO LESS OR EQUAL 0 
              DISPLAY 'NAO POSSUI SALDO'
           ELSE 
              DISPLAY 'SALDO POSITIVO'   
           END-IF.   

           IF (WRK-TIPO-CONTA EQUAL 2) 
                        AND 
              (WRK-SALDO GREATER THAN 5000)
              DISPLAY 'PARABENS POR ECONOMIZAR' 
           END-IF.     
       003-FIM. 
           EXIT.         

      ******************** 
       004-FINAL SECTION.
      ********************         
           DISPLAY 'FINAL DO PROGRAMA'.
       004-FIM. EXIT.    
        