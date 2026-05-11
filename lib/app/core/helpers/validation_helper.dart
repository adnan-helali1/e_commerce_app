class ValidationHelper {
  /// Validates email format using a regex pattern
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  /// Validates password (min 8 characters, at least 1 uppercase, 1 lowercase, 1 number)
  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }
    if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return 'Password must contain at least 1 uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return 'Password must contain at least 1 lowercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return 'Password must contain at least 1 number';
    }
    return null;
  }

  /// Validates phone number (basic format check)
  static String? validatePhone(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegex = RegExp(r'^(\+?\d{1,3}[-.\s]?)?\d{9,15}$');
    if (!phoneRegex.hasMatch(phone.replaceAll(RegExp(r'\s'), ''))) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  /// Validates name fields (minimum 2 characters)
  static String? validateName(String? name, {String fieldName = 'Name'}) {
    if (name == null || name.isEmpty) {
      return '$fieldName is required';
    }
    if (name.length < 2) {
      return '$fieldName must be at least 2 characters';
    }
    if (!RegExp(r'^[a-zA-Z\s\-]').hasMatch(name)) {
      return '$fieldName can only contain letters, spaces, and hyphens';
    }
    return null;
  }

  /// Validates store name
  static String? validateStoreName(String? storeName) {
    if (storeName == null || storeName.isEmpty) {
      return 'Store name is required';
    }
    if (storeName.length < 2) {
      return 'Store name must be at least 2 characters';
    }
    if (storeName.length > 100) {
      return 'Store name must not exceed 100 characters';
    }
    return null;
  }

  /// Validates address (optional, but if provided min 5 characters)
  static String? validateAddress(String? address) {
    if (address == null || address.isEmpty) {
      return null; // Address is optional
    }
    if (address.length < 5) {
      return 'Address must be at least 5 characters';
    }
    return null;
  }

  /// Generic required field validator
  static String? validateRequired(String? value, {String fieldName = 'Field'}) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  /// Validates password confirmation
  static String? validatePasswordMatch(String? password, String? confirmation) {
    if (password != confirmation) {
      return 'Passwords do not match';
    }
    return null;
  }
}
