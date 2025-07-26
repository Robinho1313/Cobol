      *************************** 
       IDENTIFICATION DIVISION.
      ***************************        
       PROGRAM-ID. CLIENTES.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  22/07/2025.
       DATE-COMPILED. 22/07/2025.
      ************************* 
       ENVIRONMENT DIVISION.
      *************************     
       CONFIGURATION SECTION.
       SPECIAL-NAMES. 
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *****************
       DATA DIVISION.
      *****************
      *---------------
        FILE SECTION.      
      *---------------
      *--------------------------  
        WORKING-STORAGE SECTION. 
      *--------------------------       
       01  WRK-NOME         PIC  X(030) VALUE SPACES.                                     
       01  WRK-SALDO        PIC S9(07) COMP VALUE 0. 
       01  WRK-SALDO-FMT    PIC Z.ZZ9,99.                                        
      *------------------- 
        LINKAGE SECTION.
      *-------------------
      **********************
       PROCEDURE DIVISION.
      **********************
           MOVE 'ROBSON'  TO WRK-NOME.
           MOVE 5000      TO WRK-SALDO.

           ADD 2500     TO WRK-SALDO.
           SUBTRACT 300 from WRK-SALDO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DIVIDE WRK-SALDO   BY 4 GIVING WRK-SALDO.
           COMPUTE WRK-SALDO = WRK-SALDO * 2.

           MOVE WRK-SALDO TO WRK-SALDO-FMT.

           DISPLAY 'NOME........: ' WRK-NOME.
           DISPLAY 'SALDO.......: ' WRK-SALDO.
           DISPLAY 'SALDO-FMT...: ' WRK-SALDO-FMT.
      *---------------     
           STOP RUN.