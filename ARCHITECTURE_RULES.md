# Architecture Rules

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