IDENTIFICATION DIVISION.
       PROGRAM-ID. VICTOIRE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOM       PIC X(20).
       01 WS-NOMBRE-1  PIC 9(8)V99.
       01 WS-NOMBRE-2  PIC 9(8)V99.
       01 WS-RESULTAT  PIC 9(10)V99.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> Demande le nom de l'utilisateur
           DISPLAY "Entrez votre nom: ".
           ACCEPT WS-NOM.

           *> Affiche un message de salutation
           DISPLAY "Bonjour " FUNCTION TRIM(WS-NOM) "!".

           *> Demande a l'utilisateur d'entrer deux nombres
           DISPLAY "Entrez le premier nombre (0-99): ".
           ACCEPT WS-NOMBRE-1.
           DISPLAY "Entrez le deuxieme nombre (0-99): ".
           ACCEPT WS-NOMBRE-2.
           
           *> Effectue le calcul
           COMPUTE WS-RESULTAT = WS-NOMBRE-1 + WS-NOMBRE-2.
           
           *> Affiche le resultat
           DISPLAY WS-NOMBRE-1 " + " WS-NOMBRE-2 " = " WS-RESULTAT.
           
           *> Message de fin de programme
           DISPLAY "Programme termine. Merci de votre utilisation."
           
           STOP RUN.
