      *----------------------------------------------------------------- 
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------        
       PROGRAM-ID. CLIENTES.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  22/07/2025.
       DATE-COMPILED. 22/07/2025.
      *----------------------------------------------------------------- 
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------     
       CONFIGURATION SECTION.
       SPECIAL-NAMES. 
        DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *-----------------------------------------------------------------
       DATA DIVISION.
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------
        FILE SECTION.      
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------  
        WORKING-STORAGE SECTION. 
      *-----------------------------------------------------------------       
       01  WRK-NOME         PIC  X(030) VALUE SPACES.                                     
       01  WRK-SALDO        PIC S9(005) VALUE 0.                                        
      *----------------------------------------------------------------- 
        LINKAGE SECTION.
      *-----------------------------------------------------------------
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------
           MOVE 'ROBSON'  TO WRK-NOME.
           MOVE -2000     TO WRK-SALDO.

           ADD 2500     TO WRK-SALDO.
           SUBTRACT 300 from WRK-SALDO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DIVIDE WRK-SALDO   BY 4 GIVING WRK-SALDO.

           DISPLAY 'NOME....: ' WRK-NOME.
           DISPLAY 'SALDO...: ' WRK-SALDO.
      *---------------     
           STOP RUN.