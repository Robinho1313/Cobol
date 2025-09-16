      *----------------------------------------------------------------* 
       IDENTIFICATION DIVISION.
      *----------------------------------------------------------------*        
       PROGRAM-ID. CLIENTES.
       AUTHOR. ROBSON BORGES DOS SANTOS.
       INSTALLATION.  where.
       DATE-WRITTEN.  22/07/2025.
       DATE-COMPILED. 22/07/2025.
      *OBJETIVO: ESTUDO DE COMO MANIPULAR VARIÁVEIS E USO DE MÁSCARAS 
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
       01  WRK-TIPO-CONTA   PIC  9. 
       01  WRK-NUM-COM-V    PIC  9(003)V99 VALUE 123,45.  
       01  WRK-DATA         PIC  X(008) VALUE 13051984. 
       01  WRK-DATA-S       PIC  X(010).   
       01  WRK-DATA-FMTD.
           05 DIA PIC X(002).
           05 MES PIC X(002).
           05 ANO PIC X(004).                              
      *----------------------------------------------------------------* 
        LINKAGE SECTION.
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
      *
           MOVE 'ROBSON'  TO WRK-NOME.
           MOVE 5000      TO WRK-SALDO.
           MOVE 2         TO WRK-TIPO-CONTA. 
         
           PERFORM 002-CALCULADO.
           PERFORM 003-VERIFICACAO.
           PERFORM 103-FINAL.
           PERFORM 104-DT-FMT
           PERFORM 004-FINAL.
     
           STOP RUN.
      *     
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
           SUBTRACT 300 FROM WRK-SALDO.
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
      *
      ******************** 
       103-FINAL SECTION.
      ********************         
           DISPLAY WRK-NUM-COM-V.
       103-FIM. 
           EXIT.  

      *
      ******************** 
       104-DT-FMT SECTION.
      ********************   
           MOVE WRK-DATA TO WRK-DATA-FMTD.  

           STRING  
              DIA '/' MES '/' ANO  DELIMITED BY SIZE INTO WRK-DATA-S
           END-STRING  
           DISPLAY WRK-DATA 
           DISPLAY WRK-DATA-S.
           DISPLAY DIA.
           DISPLAY MES.
           DISPLAY ANO.
       104-FIM. 
           EXIT.                         

      ******************** 
       004-FINAL SECTION.
      ********************         
           DISPLAY 'FINAL DO PROGRAMA'.
       004-FIM. 
           EXIT.    
        