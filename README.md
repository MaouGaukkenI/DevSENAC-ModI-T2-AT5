# Hotel Management System

## Description

This project is a hotel management system developed in Portugol Studio. The system enables the management of guests and rooms, as well as providing functionalities for leisure area reservations and expense calculations.

## Features

1. **Register Guest**: Allows the addition of new guests to the system, including information such as name, CPF (Brazilian ID number), and number of days of stay. The system automatically calculates the total expenses based on the number of days and the daily rate.

2. **Display Registered Guests**: Shows a list of registered guests, including details such as name, CPF, and number of days of stay.

3. **Display Rooms**: Displays the status of hotel rooms, indicating whether they are available or occupied. If occupied, it shows the guest and the number of days the room is occupied.

4. **Assign Guest to a Room**: Allows assigning a guest to a specific room, marking the room as occupied and recording the guest information.

5. **Reserve Leisure Area**: Allows guests to reserve hotel leisure areas such as the gym, party hall, and restaurant. The cost of reservations is added to the guest's expenses.

6. **Calculate Total to Pay**: Calculates the total amount a guest needs to pay upon check-out, including accommodation expenses and any additional costs for leisure area reservations.

7. **Exit**: Ends the session of the system.

## Code Structure

The system is organized into several main functions:

- **`inicio()`**: The main function that displays the menu and manages navigation between different system functionalities.
- **`cadastrarHospedes()`**: Function to register new guests.
- **`exibirHospedes()`**: Function to display the list of registered guests.
- **`exibirQuartos()`**: Function to show the status of rooms.
- **`atribuirHospedeQuarto()`**: Function to assign a guest to a room.
- **`areasDeLazer()`**: Function to reserve leisure areas and update expenses.
- **`checkOut()`**: Function to calculate and display the total amount to pay and free the room.

## Notes

- The system uses arrays to store guest and room data.
- The daily accommodation cost is fixed at R$100.00.
- The system supports up to 10 guests and 10 rooms.

## Requirements

- Portugol Studio or any other editor that supports the Portugol language.

## How to Use

1. Compile and run the code in Portugol Studio.
2. Use the menu to navigate between different functionalities of the system.
3. Follow the instructions provided by the system to register guests, assign rooms, and perform check-out.

# Sistema de Gerenciamento de Hotel-Traduzido:

## Descrição

O projeto é um sistema de gerenciamento para um hotel, desenvolvido em Portugol Studio. O sistema permite o gerenciamento de hóspedes e quartos, além de fornecer funcionalidades para reserva de áreas de lazer e cálculo de despesas.

## Funcionalidades

1. **Cadastrar Hóspede**: Permite adicionar novos hóspedes ao sistema, incluindo informações como nome, CPF e quantidade de dias de hospedagem. O sistema calcula automaticamente o valor total das despesas com base no número de dias e na tarifa diária.

2. **Exibir Hóspedes Cadastrados**: Mostra a lista de hóspedes cadastrados, exibindo detalhes como nome, CPF e quantidade de dias de hospedagem.

3. **Exibir Quartos**: Mostra o status dos quartos do hotel, indicando se estão livres ou ocupados, e, se ocupados, por qual hóspede e por quantos dias.

4. **Atribuir Hóspede a um Quarto**: Permite atribuir um hóspede a um quarto específico, marcando o quarto como ocupado e registrando o hóspede correspondente.

5. **Reservar Área de Lazer**: Permite que os hóspedes reservem áreas de lazer do hotel, como academia, salão de festas e restaurante. O custo das reservas é adicionado às despesas do hóspede.

6. **Calcular Total a Pagar**: Calcula o valor total que um hóspede deve pagar ao fazer o check-out, incluindo as despesas de hospedagem e qualquer valor adicional por áreas de lazer reservadas.

7. **Sair**: Finaliza a sessão do sistema.

## Estrutura do Código

O sistema é estruturado em diversas funções principais:

- **`inicio()`**: Função principal que exibe o menu e gerencia a navegação entre as diferentes funcionalidades do sistema.
- **`cadastrarHospedes()`**: Função para cadastrar novos hóspedes.
- **`exibirHospedes()`**: Função para exibir a lista de hóspedes cadastrados.
- **`exibirQuartos()`**: Função para mostrar o status dos quartos.
- **`atribuirHospedeQuarto()`**: Função para atribuir um hóspede a um quarto.
- **`areasDeLazer()`**: Função para reservar áreas de lazer e atualizar as despesas.
- **`checkOut()`**: Função para calcular e exibir o total a pagar e liberar o quarto.

## Notas

- O sistema utiliza um vetor para armazenar os dados dos hóspedes e quartos.
- O custo diário de hospedagem é fixado em R$100,00.
- O sistema suporta até 10 hóspedes e 10 quartos.

## Requisitos

- Portugol Studio ou qualquer outro editor que suporte a linguagem Portugol.

## Como Usar

1. Compile e execute o código no Portugol Studio.
2. Use o menu para navegar entre as diferentes funcionalidades do sistema.
3. Siga as instruções fornecidas pelo sistema para cadastrar hóspedes, atribuir quartos e realizar check-out.
