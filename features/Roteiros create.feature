Scenario: Creating new roteiro
Given I am in the class “2020.2” of the discipline “ESS”
And I am logged as the teacher “Bruno”
And I am at the “Novo roteiro” page
And There is no roteiro in the class “2020.2” of the discipline “ESS” named “Requisitos”
When I put the title “Requisitos” and the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo” 
And I confirm the creation of the roteiro
Then I am at the “Roteiros” page 
And I can see the roteiro “Requisitos” in the list with the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo”




Scenario: Creating a new roteiro that conflicts with an existing roteiro
Given I am in the class “2020.2” of the discipline “ESS”
And I am logged as the teacher “Bruno”
And I am at the “Novo roteiro” page
And There is a roteiro in the class “2020.2” of the discipline “ESS” named “Requisitos” with the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo”
When I put the title “Requisitos” and the question “Escreva cenários com qualidade para o projeto”
And I confirm the creation of the roteiro
Then I receive a message telling me there is already a roteiro with the same title in the class “2020.2” of the discipline “ESS”
And The roteiro i tried to create is not registered in system
And I can see the roteiro “Requisitos” in the list with the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo” at the “Roteiros” page




Scenario: Creating a new roteiro that conflicts with a roteiro in the trash bin
Given I am in the class “2020.2” of the discipline “ESS”
And I am logged as the teacher “Bruno”
And I am at the "Novo roteiro” page
And There is a roteiro in the trash bin of class “2020.2” of the discipline “ESS” named “Requisitos” with the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo”
When I put the title “Requisitos” and the question “Escreva cenários com qualidade para o projeto”
And I confirm the creation of the roteiro
Then I receive a message telling me there is already a roteiro with the same title in the trash bin of class “2020.2” of the discipline “ESS” and asking me if i want to recover the roteiro from the trash bin




Scenario: Creating a new roteiro without questions
Given I am in the class “2020.2” of the discipline “ESS”
And I am logged as the teacher “Bruno”
And I am at the “Novo roteiro” page
And There is a roteiro in the class “2020.2” of the discipline “ESS” named “Requisitos” with the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo”
When I put the title “Testes” and no questions
And I confirm the creation of the roteiro
Then I receive a message telling me a roteiro must have questions associated with it
And I can see the roteiro “Requisitos” in the list with the questions “Escreva cenários com qualidade para o projeto” and “Avalie os cenários de um dos seus colegas de grupo” at the “Roteiros” page
And [mudanças requisitadas pelo stakeholder (questão 7.e)]




Scenario: novo cenário - branch desenvolvimento (questão 7)
Given....
And......
When.....
And......
Then.....
And......




Scenario: novo cenário - branch desenvolvimento (questão 7.f)
Given....
And......
When.....
And......
Then.....
And......
And [fix questão 8 - fixDesenvolvimento]

[Modificação (main) questão 14.a]

[Modificação 1 (desenvolvimento) questão 14.a]
[Modificação 2 (desenvolvimento) questão 14.b]