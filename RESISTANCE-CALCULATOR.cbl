IDENTIFICATION DIVISION.
       PROGRAM-ID. RESISTANCE-CALCULATOR.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CODE-ACCES     PIC X(4).
       01 WS-NOM            PIC X(20).
       01 WS-NOMBRE-1       PIC 9(8)V99.
       01 WS-NOMBRE-2       PIC 9(8)V99.
       01 WS-RESULTAT       PIC 9(10)V99.
       01 WS-CHOIX-CONTINUER PIC X VALUE 'O'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "--- SYSTEME DE LA RESISTANCE ---".

           DISPLAY "ENTRER CODE D'ACCES RÉSEAU :".
           ACCEPT WS-CODE-ACCES.

           IF WS-CODE-ACCES = "2026" THEN
               DISPLAY "IDENTITÉ CONFIRMÉE. ACCÈS AUTORISÉ."
           ELSE
               DISPLAY "CODE INCORRECT. VERROUILLAGE DU TERMINAL."
               STOP RUN
           END-IF.

           PERFORM CALCUL-RESISTANCE UNTIL WS-CHOIX-CONTINUER = 'N' OR WS-CHOIX-CONTINUER = 'n'.

           STOP RUN.

       CALCUL-RESISTANCE.
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

           DISPLAY "SOUHAITEZ-VOUS EFFECTUER UNE AUTRE OPÉRATION ? (O/N) :".
           ACCEPT WS-CHOIX-CONTINUER.
