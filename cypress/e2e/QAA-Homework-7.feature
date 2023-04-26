Feature: Zakup "Neural DSP Quad Cortex"

    In Feature obejmuje wyszukanie i zakup przedmiotu na stronie thomann.de

    Scenario: Zakup przedmiotu  "Neural DSP Quad Cortex"
    
    
    //Wyszukanie i zakup
    Given Użytkownik jest zalogowany w centrum klienta na stronie thomann.de
    When Użytkownik wpisuje "Neural DSP Quad Cortex" w polu "szukaj"
    And Użytkownik wybiera interesujący go przedmiot
    And Użytkownik dodaje przedmiot do koszyka
    And Użytkownik przechodzi do koszyka
    And Użytkownik wybiera formę płatności 
    And Użytkownik klika przycisk "kup teraz"
    Then Użytkownik widzi potwierdzenie zakupu

    //Walidacja zakupu
    Given  Użytkownik jest zalogowany w centrum klienta na stronie thomann.de
    When Użytkownik wybiera historię zamówień na swoim koncie
    Then Użytkownik widzi "Neural DSP Quad Cortex" jako ostatnie zamówienie
    