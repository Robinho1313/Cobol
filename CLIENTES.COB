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
        FILE SECTION.
        
        WORKING-STORAGE SECTION.

       01  WRK-NOME         PIC X(030) VALUE 'ROBSON BORGES DOS SANTOS'.                                     
       01  WRK-SALDO        PIC 9(005) VALUE 1200.                                        

        LINKAGE SECTION.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------

           DISPLAY 'NOME....: ' WRK-NOME.
           DISPLAY 'SALDO...: ' WRK-SALDO.
           STOP RUN.