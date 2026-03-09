# Project - Coding Conventions & AI Instructions

You are an expert Flutter Developer working on the **Flutter** project. All code generated must
strictly adhere to the architecture, naming conventions, and library usage defined below.

## 1. Architecture & Module Structure

The project uses **Clean Architecture** with **Flutter Bloc (Cubit)** for state management.

### A. Standard module UI Page Creation

When creating a generic screen (e.g., Login, Detail, Settings), generate the following 3 files in
the module folder (e.g., `ui/login/`):

1. **State File:** `<module>_state.dart`
    * **Reference:** `ui/login/login_state.dart`
    * **Class:** Must extend `BaseState`.
2. **Cubit File:** `<module>_cubit.dart`
    * **Reference:** `ui/login/login_cubit.dart`
    * **Class:** Must extend `BaseCubit<State>`.
3. **Page File:** `<module>_page.dart`
    * **Reference:** `ui/login/login_page.dart`
    * **Class:** Must extend `BasePageState<Page, State, Cubit>`.
    * **DI:** Use `di.get<Cubit>()` in the provider setup.

### B. Standard module List UI Page Creation

When creating a list screen (e.g., Application List), generate the following 3 files in the module
folder:

1. **State File:** `<module>_state.dart`
    * **Reference:**
      `ui/application/application_list_with_filter/application_list_with_filter_state.dart`
2. **Cubit File:** `<module>_cubit.dart`
    * **Reference:**
      `ui/application/application_list_with_filter/application_list_with_filter_cubit.dart`
3. **Page File:** `<module>_page.dart`
    * **Reference:**
      `ui/application/application_list_with_filter/application_list_with_filter_page.dart`

---

## 2. Localization (i10n)

* **Source:** app_ja.arb (Japanese).
* **Definition:** If a string value does not exist, define a new <key>:<value> in app_ja.arb.
* **Usage:** Access strings in the UI using language.<key> (e.g., Text(language.forgotPassword)).

---

## 3. Colors & Theming

* **Source of Truth:** Abstract class `AppThemeColor` and implementation `LightTheme`.
* **Usage:** Always use `context.theme.<field>`.
    * ✅ `color: context.theme.backgroundPrimaryBackgroundColor`
    * ❌ `color: Colors.white` or `color: Color(0xFF...)`
* **New Colors:** If a design requires a color not in `AppThemeColor`, you must:
    1. Define the field in `AppThemeColor`.
    2. Implement the value in `LightTheme`.
    3. Use new define color in UI

---

## 4. Typography & Text Styles

* **Source of Truth:** `lib/theme/text_theme.dart`.
* **Styles:** Use predefined styles: `textHeadingH1`, `textHeadingH2`, `textContentBody`,
  `textCaption`, etc.
* **Text Colors:** Use the `FontColorExt` extension getters defined in `lib/theme/text_theme.dart`.
* **Usage:** Combine style + color extension.
    * ✅ `style: textContentBody.severityNegativeColor`
    * ✅ `style: textHeadingH1.primaryColor`
    * ❌ `style: textContentBody.copyWith(color: Colors.red)`
* **New Colors:** If a specific text color extension is missing in `FontColorExt`, define it
  explicitly.

## 5. Image

* **General Rule:** Always use the `ImageLoader` class to handle loading for all types of images and
  icons..
* **Handling SVGs (Icons):**
    * Use ImageLoader.fromSvg to load icons.
    * Path: Use AppIcons.<name>. This variable is generated from the source file named ic_<name>.
    * Example: If the source icon name is ic_funnel.svg, call it as follows:
      `ImageLoader.fromSvg(AppIcons.funnel, width: 20.ws, height: 20.ws)`
* **Handling Asset Images (PNG):**
    * Use `ImageLoader.fromAssetImage` to load static images.
    * Path: Use AppImages.<name>. This variable is generated from the source file named img_<name>.
    * Example:  If the source image name is img_test.png, call it as follows:
      `ImageLoader.fromAssetImage(AppImages.test, width: 100.ws,height: 100.hs)`

---

## 6. Responsiveness

* **Extensions:** Use the project's scaling extensions for **all** dimensions (padding, size,
  radius).
    * `.ws`: Width Scale
    * `.hs`: Height Scale
    * `.rs`: Radius / Font Scale
* **Example:** SizedBox(height: 20.hs), BorderRadius.circular(10.rs)

---

## 7. Data Models

### A. General Model Rules

- **Annotations:** All models must use `@JsonSerializable()` (from `json_annotation` package).
- **Code Gen:** Always include the part `<filename>.g.dart`; directive.
- **Serialization:** Must include factory `ModelName.fromJson(...)` and
  `Map<String, dynamic> toJson()`.

### B. Request Models (API Inputs)

- **Naming:** Suffix with `Request` (e.g., `LoginRequest`).
- **Location:** `lib/data/model/request/` (or module specific data folder).
- **Keys:** Use `@JsonKey(name: 'api_field_name')` to map exact JSON keys used by the backend.
- **Example:**

```dart
@JsonSerializable()
class UpdateProfileRequest {
  @JsonKey(name: 'full_name')
  final String fullName;

  UpdateProfileRequest({required this.fullName});

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
```

### C. Response Models (API Outputs)

- **Naming:** Suffix with Response (e.g., UserResponse, ListApplicationResponse).
- **Location:** `lib/data/model/response/` (or module specific data folder).
- **Keys:** Strict mapping with `@JsonKey(name: '...')`.
- **Nullability:** Fields should be nullable (?) if the API might return null.
- **Example:**

```dart
@JsonSerializable()
class UserResponse {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'avatar_url')
  final String? avatarUrl; // Nullable

  UserResponse({required this.id, this.avatarUrl});

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}
```

### D. Api

- **api path:** define api path in `lib/data/remote/api_constants.dart`.

## 8. Data flow

### A. Local data

#### Database (lib/data/local/database):

- **Role:**: Manages large-scale structured data and persistent storage (e.g., SQLite, Drift, or
  Floor).
  Responsibility: Handles complex queries and CRUD operations for domain-related data. It ensures
  that heavy data sets are available for offline use.
- **Data Type:**: Works with Database Models or Table Entities

#### Local Storage (lib/data/local/local_storage)

- **Role**: Manages key-value pairs and sensitive information using Encrypted Shared Preferences (
  e.g.,
  flutter_secure_storage).
- **Responsibility**: Stores small chunks of data such as Access Tokens, User Preferences, Settings,
  or Auth State... It ensures that sensitive data is encrypted before being written to the disk.

### B. Remote data handling (lib/data/remote/remote_data_source)

- **Role**: Manages external communication with the Backend/Server API.
- **Responsibility**: Executes HTTP requests (using Dio or Http client), handles API status codes,
  and parses raw JSON into Data Transfer Objects (DTOs). It is responsible for intercepting network
  errors and handling timeouts.

### C. Repository (lib/data/repository)

- **Role**: Acts as the Mediator and the Single Source of Truth.

- **Logic Processing**:

▪ Coordination: Orchestrates data flow between RemoteDataSource, Local Database, and Encrypted Local
Storage.
Caching Strategy: For example, fetching user profile from Remote, saving the Token to local_storage,
and caching the profile details into database.
▪ Data Transformation: Implements the Mapping logic to convert Models/DTOs from various sources into
unified Domain Entities.

- **Output**: Returns clean, business-ready data (Entities) to the Cubit or UI layer, abstracting
  away the storage and fetching complexity.

