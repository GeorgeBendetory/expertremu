IDENTIFICATION DIVISION.
       PROGRAM-ID. VICTOIRE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOM       PIC X(20).
       01 WS-NOMBRE-1  PIC 9(2).
       01 WS-NOMBRE-2  PIC 9(2).
       01 WS-RESULTAT  PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> Demande le nom de l'utilisateur
           DISPLAY "Entrez votre nom: ".
           ACCEPT WS-NOM.
           
           *> Affiche un message de salutation
           DISPLAY "Bonjour " WS-NOM "!".
           
           *> Demande à l'utilisateur d'entrer deux nombres
           DISPLAY "Entrez le premier nombre (0-99): ".
           ACCEPT WS-NOMBRE-1.
           DISPLAY "Entrez le deuxième nombre (0-99): ".
           ACCEPT WS-NOMBRE-2.
           
           *> Effectue le calcul
           COMPUTE WS-RESULTAT = WS-NOMBRE-1 + WS-NOMBRE-2.
           
           *> Affiche le résultat
           DISPLAY WS-NOMBRE-1 " + " WS-NOMBRE-2 " = " WS-RESULTAT.
           
           STOP RUN.
