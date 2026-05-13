# 🗺️ Architecture Rules Map & Flow

**Visual guide to understanding all 20 architecture rules and how they connect**

---

## Rule Organization by Concern

```
┌─────────────────────────────────────────────────────────────────┐
│                    B2B E-COMMERCE ARCHITECTURE                 │
│                                                                  │
│  Rule 1 (API) → Rule 2 (Data) → Rule 3 (Repo) → Rule 4 (Error) │
│       │              │              │              │            │
│       │              └──────────────┴──────────────┘            │
│       │                                  │                      │
│       └──────────────────────────────────┤                      │
│                                          ▼                      │
│                                  Rule 18 (Defensive)            │
│                                  Rule 20 (Storage)              │
│                                          │                      │
│       ┌──────────────────────────────────┘                      │
│       ▼                                                         │
│  Rule 5 (State Mgmt) ──→ Rule 19 (State Composition)           │
│       │                                                         │
│       └──────────────────┐                                      │
│                          ▼                                      │
│  Rule 15 (BaseScreen) ← Rule 14 (Extensions)                   │
│       │                  │                                      │
│       ├──────────────────┤                                      │
│       ▼                  ▼                                      │
│  Rule 16 (Colors)    Rule 13 (Validation)                      │
│                                                                  │
│  Supporting Rules:                                              │
│  • Rule 6 (Clean Architecture) - Project structure             │
│  • Rule 7 (Code Quality) - Development standards              │
│  • Rule 8 (Networking) - Network setup                         │
│  • Rule 9 (Feature Flow) - Implementation order               │
│  • Rule 10 (Default Behavior) - Common patterns               │
│  • Rule 11 (Future Changes) - Change guidelines               │
│  • Rule 12 (Current Flow) - Project baseline                  │
│  • Rule 17 (DI) - Dependency injection                        │
└─────────────────────────────────────────────────────────────────┘
```

---

## Feature Implementation Checklist (Rule 9)

When implementing a new feature, follow this order and check these rules:

```
STEP 1: Define Models
├─ Rule 1  ✓ API endpoint names
├─ Rule 2  ✓ Request body model
├─ Rule 2  ✓ Response model
├─ Rule 18 ✓ Defensive field mapping
└─ Rule 20 ✓ Data persistence needs?

STEP 2: Create API Service
├─ Rule 1  ✓ Define endpoint in ApiService
├─ Rule 8  ✓ Use centralized Dio
└─ Rule 12 ✓ Keep in feature if needed

STEP 3: Implement Repository
├─ Rule 3  ✓ Return Future<ApiResult<T>>
├─ Rule 4  ✓ Catch exceptions → ErrorHandler
├─ Rule 18 ✓ Map responses defensively
└─ Rule 20 ✓ Handle token storage

STEP 4: Create Cubit & States
├─ Rule 5  ✓ Use Cubit for state ownership
├─ Rule 19 ✓ Use @Freezed() for states
├─ Rule 19 ✓ Define: initial, loading, success, error
└─ Rule 5  ✓ Emit loading before async call

STEP 5: Build UI Screen
├─ Rule 15 ✓ Use BaseScreen<Cubit, State>
├─ Rule 14 ✓ Use extensions for navigation (context.pushNamed)
├─ Rule 13 ✓ Use ValidationHelper for inputs
├─ Rule 16 ✓ Use context.cs and context.appColors for colors
├─ Rule 6  ✓ Split into screens/ and widgets/ folders
└─ Rule 7  ✓ Keep code clean and readable

STEP 6: Handle All States
├─ Rule 5  ✓ Loading state
├─ Rule 5  ✓ Success state + onSuccess callback
├─ Rule 5  ✓ Error state + errorMessage + onError callback
└─ Rule 5  ✓ Empty state (if applicable)

STEP 7: Wire Everything
├─ Rule 17 ✓ Register in GetIt DI
├─ Rule 12 ✓ Register routes
└─ Rule 6  ✓ Update navigation constants
```

---

## Rules by Layer

### 🌐 API Layer
```
┌─ Rule 1: API Rules
│  └─ Every endpoint in ApiService
│     └─ No business logic in ApiService
│
├─ Rule 8: Networking Implementation
│  └─ Centralized Dio configuration
│     └─ Headers & interceptors through factory
│
└─ Rule 12: Current Project Flow
   └─ ApiService → Repositories
```

### 💾 Data Layer
```
┌─ Rule 2: Data Handling Rules
│  └─ Treat all API data as unsafe
│     └─ Validate before using
│
├─ Rule 18: Response Mapping & Defensive Programming
│  └─ Map nested objects defensively
│     └─ Safe fallbacks for missing fields
│
└─ Rule 20: Data Persistence & Token Storage
   └─ SharedPreferences for non-sensitive
      └─ flutter_secure_storage for tokens
```

### 🏗️ Repository Layer
```
┌─ Rule 3: Repository Rules
│  └─ Boundary between network & state
│     └─ Return Future<ApiResult<T>>
│
├─ Rule 4: Error Handling Rules
│  └─ Map all exceptions to ErrorHandler
│     └─ Single source of truth for errors
│
└─ Rule 12: Current Project Flow
   └─ Repositories → Cubits
```

### 🎛️ State Management Layer
```
┌─ Rule 5: State Management Rules
│  └─ Cubit owns feature state
│     └─ States: initial, loading, success, error
│
├─ Rule 19: State Composition Rules
│  └─ Use @Freezed() for unions
│     └─ Keep states minimal & focused
│
└─ Rule 12: Current Project Flow
   └─ Cubits → UI
```

### 🎨 UI Layer
```
┌─ Rule 15: BaseScreen Generic Widget Pattern
│  └─ Reduce boilerplate 80%
│     └─ Handle loading/success/error/empty
│
├─ Rule 14: Extension Methods & Helpers
│  └─ Navigation extensions
│     └─ Theme getter extensions
│
├─ Rule 16: Theme & Color Extensions
│  └─ context.cs for Material colors
│     └─ context.appColors for semantic colors
│
└─ Rule 13: Validation Rules
   └─ Use ValidationHelper for all inputs
      └─ Never hardcode validation
```

### 🎓 Supporting Infrastructure
```
┌─ Rule 6: Clean Architecture
│  └─ core/ for shared, features/ for specific
│
├─ Rule 7: Code Quality
│  └─ Small functions, clear names
│
├─ Rule 17: Dependency Injection
│  └─ GetIt service locator
│
└─ Rule 12: Current Project Flow
   └─ Overall architecture
```

---

## Common Patterns

### Adding a Login Feature
```
LoginRequestBody (Rule 1, 2)
    ↓
ApiService.login() (Rule 1, 8)
    ↓
LoginRepo (Rule 3, 4, 18, 20)
    ├─ Catch exception
    ├─ Map to ApiResult
    └─ Save token
    ↓
LoginCubit (Rule 5, 19, 17)
    ├─ Emit loading
    ├─ Call repo
    └─ Emit success/failure
    ↓
LoginScreen (Rule 15, 14, 16)
    ├─ Use BaseScreen
    ├─ Use extensions
    ├─ Use theme colors
    └─ Use ValidationHelper (Rule 13)
```

### Adding a Product List Feature
```
Product Model (Rule 1, 2)
    ↓
ApiService.getProducts() (Rule 1, 8)
    ↓
ProductsRepo (Rule 3, 4, 18)
    ├─ Map safely
    ├─ Handle empty list
    └─ Catch errors
    ↓
ProductsCubit (Rule 5, 19, 17)
    ├─ Manage pagination state
    ├─ Handle filters (Rule 19)
    └─ Emit all states
    ↓
ProductListScreen (Rule 15, 14, 16)
    ├─ Use BaseScreen with pagination
    ├─ Use extensions
    └─ Show empty state (Rule 5)
```

---

## Error Handling Flow

```
API Exception (Network, timeout, etc.)
    ↓
Repository (Rule 3, 4)
    └─ catch (error)
    └─ ErrorHandler.handle(error) ← Rule 4
    ├─ Map DioException to DataSource
    ├─ Convert to ApiErrorModel
    └─ Return ApiResult.failure()
    ↓
Cubit (Rule 5)
    └─ Emit LoginState.failure(error: message)
    ↓
UI (Rule 15)
    ├─ BaseBlocListener detects failure
    ├─ Shows snackbar (Rule 15)
    ├─ Calls onError callback (Rule 15)
    └─ User sees friendly message (Rule 4)
```

---

## Data Flow (Success Path)

```
User Input
    ↓
Validation (Rule 13)
    └─ ValidationHelper.validate()
    └─ Show error if invalid
    ↓
Cubit.emitStates() (Rule 5)
    └─ Emit loading (Rule 5)
    ↓
Repository.call() (Rule 3)
    ├─ Call ApiService (Rule 1)
    ├─ Catch exceptions (Rule 4)
    ├─ Map defensively (Rule 18)
    ├─ Save if needed (Rule 20)
    └─ Return ApiResult (Rule 3)
    ↓
Cubit.emit(success) (Rule 5, 19)
    └─ With mapped data
    ↓
UI Builder (Rule 15)
    ├─ Renders success content
    ├─ Uses colors (Rule 16)
    └─ Uses extensions (Rule 14)
    ↓
BaseListener (Rule 15)
    ├─ Shows successMessage
    ├─ Calls onSuccess callback
    └─ Possible navigation
```

---

## State Flow in BaseScreen

```
BlocBuilder builds on state change
    ↓
Check loadingWhen (Rule 15)
    ├─ if true → show loading
    ├─ else continue
    ↓
Check emptyWhen (Rule 15)
    ├─ if true → show emptyWidget
    ├─ else continue
    ↓
Check errorWhen (Rule 15)
    ├─ if true → show errorWidget
    ├─ else continue
    ↓
Call builder() → success content
    ├─ Use state data
    └─ Build UI
    ↓
Wrap in BaseBlocListener
    ├─ Check successWhen → show snackbar
    ├─ Check errorWhen → show snackbar
    └─ Call callbacks
```

---

## Color Access Pattern (Rule 16)

```
Material Colors        Custom Semantic Colors
  (ColorScheme)            (AppColorScheme)
       │                        │
       └─ context.cs ────┬──────┘
                         ▼
                    Widget build()
                    
Example:
  Text('Success',
    style: TextStyle(
      color: context.appColors.success,  // Green
      fontSize: 16.sp,                   // Rule 4 (responsive)
    ),
  )
  
  Container(
    decoration: BoxDecoration(
      color: context.cs.surface,           // Material
      border: Border.all(
        color: context.appColors.borderColor, // Custom
      ),
    ),
  )
```

---

## Dependency Injection Flow (Rule 17)

```
main.dart
    ↓
setupGetIt()
    ├─ Register DioFactory
    ├─ Register ApiService
    ├─ Register Repositories
    └─ Register Cubits (factory)
    ↓
Feature Screen
    ├─ getIt<LoginCubit>() → Creates Cubit
    │  └─ Cubit receives Repo from DI
    │     └─ Repo receives ApiService from DI
    │        └─ ApiService receives Dio from DI
    └─ Avoids circular dependencies
```

---

## Quick Decision Tree

**"How do I implement X?"**

| Need | Rule | Location |
|------|------|----------|
| Validate email | Rule 13 | ValidationHelper |
| Show colors | Rule 16 | context.cs / context.appColors |
| Handle error | Rule 4 | ErrorHandler |
| Create screen | Rule 15 | BaseScreen<Cubit, State> |
| Navigate | Rule 14 | context.pushNamed() |
| Store data | Rule 20 | SharedPrefHelper |
| Map API response | Rule 18 | Repository defensive code |
| Create state | Rule 19 | @Freezed class |
| Register dependency | Rule 17 | setupGetIt() |
| Get started on feature | Rule 9 | Follow 6-step flow |

---

## All Rules at a Glance

```
EXISTING (1-12) + NEW (13-20) = COMPLETE ARCHITECTURE CONTRACT

1. API Rules                                  ✅
2. Data Handling Rules                        ✅
3. Repository Rules                           ✅
4. Error Handling Rules                       ✅
5. State Management Rules                     ✅
6. Clean Architecture Rules                   ✅
7. Code Quality Rules                         ✅
8. Networking Implementation Rules            ✅
9. Feature Flow Rule                          ✅
10. Practical Default Behavior                ✅
11. Rules For Future Changes                  ✅
12. Current Project Flow                      ✅
─────────────────────────────────────────
13. Validation Rules                          ✅ NEW
14. Extension Methods & Helpers               ✅ NEW
15. BaseScreen Generic Pattern                ✅ NEW
16. Theme & Color Extensions                  ✅ NEW
17. Dependency Injection Rules                ✅ NEW
18. Response Mapping & Defensive Prog         ✅ NEW
19. State Composition Rules                   ✅ NEW
20. Data Persistence & Token Storage          ✅ NEW
```

---

**Print this page or bookmark it for quick reference while developing!**

# 🏗️ Engineering Architecture Rules (Single Source of Truth)

**Version**: 2.0  
**Purpose**: Define strict, scalable, production-ready architecture standards  
**Applies to**: Entire codebase without exceptions  

---

# 🔥 CORE PRINCIPLE

> This project is built as a **scalable, maintainable, production-grade system** — not just a Flutter app.

All code MUST follow:

UI → State (Cubit/Bloc) → Repository → API Service → Dio → Backend

No shortcuts. No violations.

---

# 1. 📡 API LAYER RULES

- API layer is **pure network only**
- No business logic, no UI logic, no transformations

### MUST:
- Define APIs using Retrofit (preferred)
- Use typed request & response models
- Keep naming aligned with backend

### NEVER:
- Pass raw Map between layers
- Assume response structure is valid

---

# 2. 🧪 DATA SAFETY RULES (CRITICAL)

Treat ALL API data as **UNTRUSTED INPUT**

### MUST:
- Validate every nullable field
- Handle missing keys
- Convert invalid responses → failure

### LISTS:
```dart
final items = response.items?.map(...).toList() ?? [];
NEVER:
Crash UI بسبب null
Trust backend blindly
3. 🗃️ REPOSITORY RULES

Repository = Boundary Layer

MUST:
Return: Future<ApiResult<T>>
Catch ALL exceptions
Convert errors using ErrorHandler
NEVER:
Emit UI state
Navigate
Use BuildContext
4. ⚠️ ERROR HANDLING SYSTEM

Single source of truth.

MUST HANDLE:
Timeout
No internet
Cancel
Server errors
Parsing errors
FLOW:

DioError → ErrorHandler → ApiErrorModel → UI message

RULE:

UI must NEVER see raw exceptions

5. 🧠 STATE MANAGEMENT RULES

Cubit/Bloc owns state.

STATES:
initial
loading
success
error
MUST:
Use freezed
Emit loading BEFORE async
Emit clean data
NEVER:
Put parsing logic in UI
Call repository directly from widgets
6. 🧱 CLEAN ARCHITECTURE STRUCTURE
core/
features/
core:
networking
DI
helpers
theme
base widgets
feature:
data/
logic/
ui/
STRICT RULE:

No feature depends on another feature's internal layers

7. 🧩 FEATURE FLOW (MANDATORY)
Models
API
Repository
Cubit
UI
States handling
8. 🌐 NETWORKING RULES
Dio configured in ONE place
Use interceptors
Central headers
Token injected automatically
NEVER:
Create Dio per feature
9. 🧼 CODE QUALITY RULES
Small functions
One responsibility
No duplication
Clear naming
MUST:
Extract shared logic to core/
10. 🧾 VALIDATION SYSTEM

Centralized in:

core/helpers/validation_helper.dart
RULES:
Return String?
No validation inside widgets
Use consistent regex
11. 🔌 EXTENSIONS RULES

Location:

core/helpers/extensions.dart
INCLUDE:
Navigation
Theme access
Null safety helpers
RULE:

Extensions must be PURE (no side effects)

12. 🧱 BASE SCREEN PATTERN

Use:

BaseScreen<B, S>
HANDLES:
loading
error
empty
success
RULE:

All screens MUST use BaseScreen unless justified

13. 🎨 THEME & COLORS
NEVER:
Hardcode colors
USE:
context.cs
context.appColors
COLORS:
semantic (success, error, warning)
14. 📦 DEPENDENCY INJECTION

Using GetIt

RULES:
One file only
No manual instantiation
TYPES:
lazySingleton → services
factory → Cubits
15. 🛡️ DEFENSIVE MAPPING
MUST:
Validate nested objects
Validate enums
Handle missing fields
RULE:

Bad API = handled gracefully, never crash

16. 🧠 STATE COMPOSITION
RULES:
One Cubit per responsibility
Minimal state data
No overloading states
17. 🔐 DATA PERSISTENCE & AUTH (CRITICAL)
STORAGE:
SecureStorage → tokens
SharedPrefs → non-sensitive
FLOW:

Login → Save Token → Inject into Dio

ON 401:
Clear token
Redirect to login
NEVER:
Store token in Cubit
18. 🔄 TOKEN LIFECYCLE
MUST:
Attach token automatically
Refresh token ONCE if expired
Retry request after refresh
19. 🧪 TESTING (MANDATORY FOR SCALING)
REQUIRED:
Cubit tests
Repository tests
RULE:

No feature is production-ready without tests

20. 📊 LOGGING & DEBUGGING
MUST:
Dio logger (dev only)
Central logging system
NEVER:
print() in production
21. 🚀 PERFORMANCE RULES
Avoid unnecessary rebuilds
Use const widgets
Optimize lists
22. 🧭 NAVIGATION RULES
MUST:
Use context extensions
Centralize routes
23. 📦 REUSABILITY RULES
IF repeated twice:

→ move to core/

24. ❌ FORBIDDEN PRACTICES
Business logic in UI ❌
Direct API calls from UI ❌
Hardcoded values ❌
Duplicate logic ❌
Ignoring null safety ❌
25. 🏁 FINAL PRINCIPLE

Every line of code must be:

predictable
testable
maintainable
scalable

If not → rewrite it.# Architecture Rules

This project follows a feature-first clean architecture flow:

`UI -> Cubit/Bloc -> Repo -> ApiService -> Dio -> API`

Use these rules as the default contract for all new work in this codebase.

## 1. API Rules

- Keep every API endpoint inside `ApiService` or a feature-specific API service.
- `ApiService` must only declare network calls. Do not add business logic, parsing rules, or UI rules there.
- Every request body must be modeled as a typed class in `data/models`.
- Every response must be modeled as a typed class in `data/models`.
- Never pass raw `Map` data across layers unless the API is truly dynamic.
- Always validate nullable API fields before using them.
- If the backend response contains nested lists or optional objects, map them defensively and fall back to empty lists or safe defaults.
- Keep request/response names aligned with the backend contract, but normalize them inside the app if the backend naming is inconsistent.

## 2. Data Handling Rules

- Treat all API data as unsafe until it is parsed and validated.
- Do not assume `statusCode`, `message`, lists, or nested objects are present.
- If a response is missing required fields, convert it to a failure path with a meaningful error model.
- If a list is empty, the feature should still work and show an empty state, not crash.
- If an item lookup fails, return a safe error state instead of throwing from the UI layer.
- Avoid spreading null checks in the UI; normalize data in repository or cubit logic first.

## 3. Repository Rules

- Repositories are the boundary between network and state management.
- Every repository method should return `Future<ApiResult<T>>`.
- Repositories must catch exceptions and convert them into `ApiResult.failure(ErrorHandler.handle(error))`.
- Do not emit states from repositories.
- Do not navigate, show dialogs, or touch widgets from repositories.
- Keep repositories thin: fetch, catch, normalize, return.

## 4. Error Handling Rules

- Convert every Dio exception into a single app error model.
- Map connection timeout, send timeout, receive timeout, cancel, no internet, and server errors explicitly.
- For API-level errors, parse the backend error body into `ApiErrorModel` when possible.
- If the error body cannot be parsed, fall back to a default error model.
- The app should show a user-friendly message, not the raw exception.
- Keep one source of truth for error messages and codes.

## 5. State Management Rules

- Use Cubit/Bloc to own the feature state.
- Keep states small and explicit: `initial`, `loading`, `success`, `error`.
- Use `freezed` unions for strongly typed states.
- Emit `loading` before every async network call.
- On success, emit the parsed response object or the minimum data the UI needs.
- On failure, emit a clean error state with a display-ready message.
- Do not call repositories directly from widgets when the logic belongs in a Cubit/Bloc.
- Do not keep API parsing logic inside widgets.

## 6. Clean Architecture Rules

- `core/` is for shared infrastructure: networking, helpers, routing, dependency injection, theming, and shared widgets.
- `features/` is for feature-specific code only.
- Keep each feature split into `data/`, `logic/`, and `ui/`.
- `data/` contains models, repositories, and API services.
- `logic/` contains Cubits/Blocs and state classes.
- `ui/` contains screens and widgets only.
- Do not let a feature depend on another feature's internal data layer.
- Shared behavior should move to `core/` instead of being copied into features.

## 7. Code Quality Rules

- Prefer small functions with one responsibility.
- Use clear names for variables, methods, and files.
- Remove duplicated mapping logic by creating shared helpers when the same transformation appears more than once.
- Keep constructors and public APIs simple.
- Avoid side effects inside pure mapping functions.
- Keep logging and debug helpers out of production logic.
- Use null-safe defaults instead of forcing null values through the app.

## 8. Networking Implementation Rules

- Configure Dio in one place only.
- Add headers and interceptors through the Dio factory.
- Keep authentication token updates centralized after login.
- Use Retrofit for API declarations when possible.
- Keep timeout, headers, and logger behavior consistent across the app.
- Do not duplicate the same network client setup in multiple features.

## 9. Feature Flow Rule

For every new feature, follow this order:

1. Define request and response models.
2. Add API endpoints.
3. Implement a repository that returns `ApiResult<T>`.
4. Add Cubit/Bloc states.
5. Connect the UI to the Cubit/Bloc.
6. Handle loading, success, empty, and error states in the UI.

## 10. Practical Default Behavior

- If the API succeeds, the repository returns success.
- If the API fails, the repository returns a failure with a mapped error model.
- If the backend returns an empty payload, the UI shows an empty state.
- If a list is missing or empty, do not force a crash; use safe fallback logic.
- If the app needs to store a token, store it once and update Dio headers immediately.

## 11. Rules For Future Changes

- Respect the current feature-first structure.
- Keep new code consistent with the `ApiResult` pattern.
- Keep error mapping centralized.
- Keep UI thin and state-driven.
- If a change introduces repeated logic, move it to `core/`.

## 12. Current Project Flow

Current working pattern in the project:

- `DioFactory` builds the HTTP client.
- `ApiService` defines login and signup endpoints.
- Repositories call the API and convert exceptions into `ApiResult`.
- Cubits call repositories and emit typed states.
- UI listens to Cubit states and renders accordingly.

That is the baseline to follow for all new work unless a specific feature needs a stronger contract.

---

## 13. Validation Rules (New - Extracted from Implementation)

- Create a centralized `ValidationHelper` class in `core/helpers/` for all input validation.
- Each validator method should return `String?` (null if valid, error message if invalid).
- Implement validators for common patterns: email, password, phone, name, address, URLs.
- Include regex patterns that match backend requirements exactly.
- Document password requirements clearly (e.g., min 8 chars, 1 uppercase, 1 number).
- Phone validation should be lenient to support international formats.
- Reuse validators across all form inputs to ensure consistency.
- Do not create local validators inside widgets; always use `ValidationHelper`.
- Validators should be pure functions with no side effects.

## 14. Extension Methods & Helper Utilities (New - Extracted from Implementation)

- Create extension methods on `BuildContext` for frequently used operations:
  - Navigation: `pushNamed()`, `pushReplacementNamed()`, `pop()`, `pushNamedAndRemoveUntil()`
  - Theme access: `cs` (ColorScheme), `appColors` (custom colors)
- Create extension methods on common types for null-safety:
  - `String?.isNullOrEmpty()` returns `bool`
  - `List<T>?.isNullOrEmpty()` returns `bool`
- Place all extensions in `core/helpers/extensions.dart`.
- Keep extension methods short and focused on one operation.
- Do not mix UI logic with utility extensions; keep them purely functional.

## 15. BaseScreen Generic Widget Pattern (New - Extracted from Implementation)

- Use `BaseScreen<B extends StateStreamable<S>, S>` to reduce boilerplate in every screen.
- The widget should handle the following concerns:
  - `BlocBuilder` connection to state
  - Empty state detection and display
  - Error state detection and display
  - Loading state detection (via `loadingWhen` callback)
  - Success callbacks (`onSuccess`, `onError`)
  - Custom messages for success/error (`successMessage`, `errorMessage`)
  - Padding and safe area wrapping
  - Background decoration support
- Always wrap content in `BaseBlocListener` to trigger side effects (snackbars, navigation).
- Pass `emptyWidget` and `errorWidget` to customize empty and error UI per screen.
- The builder function receives the current state and is responsible for rendering success content.
- Empty/error detection predicates are optional; if not provided, fall back to safe defaults.

## 16. Theme & Color Extension Rules (New - Extracted from Implementation)

- Define all semantic colors in `AppColors` class in `core/theme/app_colors.dart`.
- Semantic colors should represent meaning: `success`, `warning`, `error`, `info`.
- Create a custom `ColorScheme` extension (`AppColorScheme`) for app-specific colors.
- Access colors in widgets using:
  - `context.cs` for Material ColorScheme colors.
  - `context.appColors` for custom semantic colors.
- Never hardcode color values in widgets; always use theme getters.
- Keep color naming consistent: primary, secondary, surface, error, success, warning, info.
- Ensure all text has sufficient contrast against its background.
- Support both light and dark themes by defining colors in both theme variants.
- Border colors should come from `context.appColors.borderColor` or `context.cs.outlineVariant`.

## 17. Dependency Injection Rules (New - Extracted from Implementation)

- Use GetIt for service locator pattern in `core/di/dependency_injection.dart`.
- Call `setupGetIt()` in `main()` before running the app.
- Register all repositories, Cubits, and API services in the DI container.
- Keep the DI registration code in one file only; do not scatter registrations.
- Use `<T>` lazy singletons for services that should be instantiated once.
- Use `factory` registration for Cubits to create new instances per screen.
- Never create dependencies directly in code; always fetch from GetIt.
- Document what each registration does (e.g., API client, repositories, Cubits).

## 18. Response Mapping & Defensive Programming (New - Extracted from Implementation)

- Always assume API responses are incomplete or malformed.
- Map nested objects defensively: check for null before accessing properties.
- If a required field is missing, treat it as an API error, not a code error.
- For lists in responses, always use `.toList()` and check for null:
  ```dart
  final items = response.items?.map(...).toList() ?? [];
  ```
- Never assume pagination, sorting, or filtering exist in the response.
- Parse optional timestamps to `DateTime` only if present; fall back to null or current time.
- For enum fields, validate that the value is in the expected set; use a default if not.
- Do not trust boolean flags from the API; always re-derive them from other fields if possible.
- Document assumptions about response structure in comments.

## 19. State Composition Rules (New - Extracted from Implementation)

- Keep Cubit states minimal and focused on the specific operation.
- For features with multiple operations, create separate Cubits or state unions for each:
  - One Cubit for fetching lists.
  - One Cubit for creating/updating items.
  - One Cubit for deleting items (if high frequency).
- Use freezed `@Freezed()` for state classes to get equatable and copyWith for free.
- Include only the data needed by the UI in success states; avoid including entire API responses.
- For pagination, emit a state that includes: `items`, `currentPage`, `hasMorePages`, `totalPages`.
- For filters or searches, store filter state in the Cubit and re-emit on filter change.
- Document what each state transition means (e.g., "loading means we're fetching from API").

## 20. Data Persistence & Token Storage Rules (New - Extracted from Implementation)

- Use `SharedPreferences` for non-sensitive data (user preferences, cache).
- Use `flutter_secure_storage` for sensitive data (JWT tokens, API keys).
- Create a `SharedPrefHelper` class in `core/helpers/` to centralize storage operations.
- On successful login, immediately save the JWT token to secure storage.
- Before making API requests, retrieve the token from storage and attach it to the request header.
- On token expiration or 401 error, clear the token and redirect to login.
- Never pass tokens through Cubit state; fetch them from storage in the repository.
- Document the storage keys used (e.g., `token_key`, `user_id_key`) in a constants file.
- Implement a token refresh mechanism: if the API returns 401, try to refresh the token once before failing.
- Always clear storage when user logs out; do not rely on app uninstall to clear sensitive data.