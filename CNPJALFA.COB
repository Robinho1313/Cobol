      *----------------------------------------------------------------* 
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*        
       PROGRAM-ID. CNPJALFA.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  27/07/2025.
       DATE-COMPILED. 27/07/2025.
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
       01  COD-CNPJ-DP      PIC  S9(004) COMP-3 VALUE 3271.                                     
       01  CDV-CNPJ-DP      PIC   X(002) VALUE '93'. 
       01  CNPJ-DECIMAL-DP  PIC   9(012) VALUE ZEROS. 
       01  CNPJ-NUMERICO    PIC   X(014) VALUE SPACES.
       01  CNPJ-ALFA        PIC   X(018) VALUE SPACES.                                      
      *----------------------------------------------------------------* 
        LINKAGE SECTION.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
           MOVE COD-CNPJ-DP TO CNPJ-DECIMAL-DP.
           MOVE CNPJ-DECIMAL-DP TO CNPJ-NUMERICO.
           MOVE CDV-CNPJ-DP TO CNPJ-NUMERICO(13:2).

           MOVE CNPJ-NUMERICO(1:2)    TO CNPJ-ALFA(1:2).
           MOVE '.'                   TO CNPJ-ALFA(3:1).
           MOVE CNPJ-NUMERICO(3:3)    TO CNPJ-ALFA(4:3).
           MOVE '.'                   TO CNPJ-ALFA(7:1). 
           MOVE CNPJ-NUMERICO(6:3)    TO CNPJ-ALFA(8:10).
           MOVE '/'                   TO CNPJ-ALFA(11:1).
           MOVE CNPJ-NUMERICO(9:4)    TO CNPJ-ALFA(12:4).
           MOVE '-'                   TO CNPJ-ALFA(16:1).
           MOVE CNPJ-NUMERICO(13:2)   TO CNPJ-ALFA(17:2).
           
          



           DISPLAY CNPJ-ALFA.    

      *---------------     
           STOP RUN.