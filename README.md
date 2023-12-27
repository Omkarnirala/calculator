# Flutter Calculator App

## Overview
This Flutter application is a simple, yet powerful calculator built using the Flutter framework. It offers basic arithmetic functions such as addition, subtraction, multiplication, and division, along with some convenient features like a clear button and decimal point handling. The app's user interface is clean and intuitive, making it easy for users of all ages and backgrounds to perform calculations.

## Features
1. **Basic Arithmetic Operations**: Perform addition, subtraction, multiplication, and division.
2. **Decimal Point Support**: Allows calculations with decimals.
3. **Clear Function**: Easily reset calculations with a clear button.
4. **Responsive UI**: Adapts to various screen sizes for a seamless experience.
5. **Material Design**: Uses Material Design principles for a modern look and feel.

## Installation
To run this app, you need to have Flutter installed on your system. Follow these steps:

1. Clone or download the repository to your local machine.
2. Open the project in your favorite IDE (e.g., Visual Studio Code, Android Studio).
3. Run `flutter pub get` in the terminal to fetch the required dependencies.
4. Start an emulator or connect a physical device.
5. Run the app using `flutter run`.

## Usage
The app presents a simple interface with numbered buttons, arithmetic operation buttons, a decimal point button, a clear button, and an equals button. To perform a calculation:

1. Enter the first number using the numeric buttons.
2. Choose an arithmetic operation (+, -, *, /).
3. Enter the second number.
4. Press the equals (=) button to view the result.
5. Use the clear button to start a new calculation.

## Code Structure
- **MyApp Class**: The root widget which sets up the MaterialApp.
- **Calculator Class**: A StatefulWidget that manages the state of the calculator.
- **_CalculatorState Class**: Contains the logic for handling button presses and updating the display.
- **buttonPressed Method**: Handles logic for each button pressed in the calculator.
- **buildButton Method**: Used to build each button with appropriate styling and functionality.

## Customization
You can customize the app's theme and appearance by modifying the `theme` property in the `MaterialApp` widget.

## Contribution
Contributions are welcome. Please fork the repository and submit a pull request with your proposed changes or improvements.

## License
This project is open-sourced under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use, modify, and distribute it as per the license terms.