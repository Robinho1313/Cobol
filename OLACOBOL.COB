      *----------------------------------------------------------------* 
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------* 
       
       PROGRAM-ID. OLACOBOL.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  22/07/2025.
       DATE-COMPILED. 22/07/2025.
      *OBJETIVO: PROGRAMA COBOL MAIS SIMPLES POSSÍVEL
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
        LINKAGE SECTION.

      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*

           DISPLAY 'OLA COBOL'.  
      *--------------              
           STOP RUN.