IDENTIFICATION DIVISION.
       PROGRAM-ID. VICTOIRE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOMBRE-1  PIC 9 VALUE 2.
       01 WS-NOMBRE-2  PIC 9 VALUE 2.
       01 WS-RESULTAT  PIC 9.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> On effectue le calcul
           COMPUTE WS-RESULTAT = WS-NOMBRE-1 + WS-NOMBRE-2.
           
           *> On affiche le résultat de façon élégante
           DISPLAY WS-NOMBRE-1 " + " WS-NOMBRE-2 " = " WS-RESULTAT.
           
           STOP RUN.
