IDENTIFICATION DIVISION.
       PROGRAM-ID. RESISTANCE-CALCULATOR.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOM       PIC X(20).
       01 WS-NOMBRE-1  PIC 9(8)V99.
       01 WS-NOMBRE-2  PIC 9(8)V99.
       01 WS-RESULTAT  PIC 9(10)V99.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> Demande le nom de l'utilisateur
           DISPLAY "IDENTIFICATION REQUISE... ENTRER NOM D'UTILISATEUR: ".
           ACCEPT WS-NOM.

           *> Affiche un message de salutation
           DISPLAY "BIENVENUE, " FUNCTION TRIM(WS-NOM) "! PRÉPAREZ-VOUS À CALCULER LA RÉSISTANCE.".

           *> Demande à l'utilisateur d'entrer deux nombres
           DISPLAY "ENTREZ LA PREMIÈRE VALEUR DE RÉSISTANCE (0-99): ".
           ACCEPT WS-NOMBRE-1.
           DISPLAY "ENTREZ LA DEUXIÈME VALEUR DE RÉSISTANCE (0-99): ".
           ACCEPT WS-NOMBRE-2.
           
           *> Effectue le calcul
           COMPUTE WS-RESULTAT = WS-NOMBRE-1 + WS-NOMBRE-2.
           
           *> Affiche le résultat
           DISPLAY "CALCUL EN COURS...".
           DISPLAY WS-NOMBRE-1 " + " WS-NOMBRE-2 " = " WS-RESULTAT.

           *> Vérification de surcharge
           IF WS-RESULTAT > 1000000 THEN
               DISPLAY "ALERTE : SURCHARGE DU SYSTÈME !"
           END-IF.
           
           STOP RUN.
