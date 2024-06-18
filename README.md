# SamaanGhar.pk - E-commerce Mobile Application

Welcome to SamanGhar.pk, an e-commerce mobile application developed using Flutter framework for Android. This application provides a seamless shopping experience for users to browse, search, and purchase a variety of products directly from their Android devices.

## Features 

- **User Authentication**: Secure login and signup functionality using email and password authentication.
- **Product Catalog**: Browse for products across different categories.
- **Search**: Search for products using keywords.
- **Product Details**: View detailed information, images, and reviews for each product.
- **Shopping Cart**: Add products to the cart and proceed to checkout.
- **Order Management**: Manage shipping addresses and track order status.
- **Responsive Design**: Ensures a smooth user experience across various screen sizes and orientations.

## Screens

### 1. `products_page.dart`

- Displays the main interface of the application.
- Includes a search bar to search for products.
- Shows categories of products and new arrivals.
- Allows navigation to product detail pages and cart page.

### 2. `productdetail_page_1.dart` and `productdetail_page_2.dart`

- Display detailed information about specific products.
- Includes images, descriptions, and prices of products.
- Allows users to add products to the shopping cart.

### 3. `cart_page.dart`

- Displays the list of products added to the shopping cart.
- Allows users to modify quantities or remove items from the cart.
- Provides functionality to proceed to checkout.

### 4. `shipping_page.dart`

- Allows users to enter shipping address details.
- Validates phone numbers, emails, city, and postal codes.
- Provides a button to confirm the shipping address.

### 5. `signup_page.dart`

- Enables users to create a new account.
- Validates username, phone number, email, and password fields.
- Includes a button to navigate to the login page after successful signup.

## Usage

To run this Flutter application, follow these steps:

1. **Flutter SDK**: Ensure you have Flutter installed. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

2. **Java Development Kit (JDK)**: Make sure you have Java Development Kit (JDK) installed. You can download it from the [Oracle website](https://www.oracle.com/java/technologies/javase-downloads.html) or use OpenJDK.

3. **Setup Android SDK**: Ensure you have the Android SDK installed. You can download it through Android Studio's SDK Manager or from [developer.android.com](https://developer.android.com/studio).

4. **Clone the Repository**: Clone this repository to your local machine using Git:
     ```
     git clone https://github.com/NoorUlBaseer/SamaanGhar.pk-E-commerce-Mobile-Application
     ```

5. **Android Studio or VS Code**: Open the cloned repository in Android Studio or Visual Studio Code (VS Code).

6. **Setup Android Device or Emulator**:
   - **Android Emulator**: Launch an Android emulator through Android Studio's AVD Manager or use a physical Android device.
   - **Connected Device**: Ensure your Android device is connected via USB or WiFi and has Developer Mode enabled.

7. **Run the Application**:
   - In Android Studio, click on the green play button or press `Shift + F10` to build and run the application on the selected device.
   - In VS Code, open a terminal and run `flutter run` to build and deploy the application on the connected device or emulator.

8. **View the Application**: The application will start on your Android device or emulator, displaying the main screens and functionalities.

Make sure all dependencies are resolved and the device or emulator is properly configured before running the application.

## Dependencies

- **flutter/material.dart**: Core Flutter framework for building UI.
- **email_validator**: Package for validating email addresses.

## Contributing

Feel free to fork this repository, create pull requests, and suggest improvements. Contributions are welcome!
