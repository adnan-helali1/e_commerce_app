# 🔥 Offline-First Architecture Rules (Senior Level)

This document defines how the app should handle:

* Login timing
* Multiple API requests
* Navigation re-fetch issues
* Caching (Hive)
* Background sync
* UI stability

---

# 🧠 Core Principle

> UI must NEVER depend directly on API

Always:

UI → Bloc/Cubit → Repository → (Cache + API)

---

# ❌ Problems We Are Solving

## 1. Multiple requests on Home screen

* Many APIs fire at the same time after login
* Causes performance issues

## 2. Login triggers before UI is ready

* Leads to jank / bad UX

## 3. Navigation re-fetching data

* Bottom nav causes duplicate API calls

## 4. UI breaks when API updates

* Loading flickers

## 5. No offline support

---

# ✅ Golden Rules

## RULE 1: Delay Data Fetch Until UI Is Ready

Do NOT fetch data in initState directly.

Use:

WidgetsBinding.instance.addPostFrameCallback((_) {
context.read<HomeCubit>().load();
});

---

## RULE 2: Use Cache First (Hive)

Repository MUST:

1. Return cached data immediately
2. Fetch fresh data in background

Pattern:

getData() {
if (cache exists) {
return cache;
refreshInBackground();
} else {
fetch from API;
}
}

---

## RULE 3: Stale-While-Revalidate

Cubit flow:

1. Emit cached data
2. Fetch new data silently
3. Emit updated data

NO loading state after first load

---

## RULE 4: Prevent Duplicate Requests

Inside repository:

bool _isFetching = false;

if (_isFetching) return cachedData;

---

## RULE 5: One Source of Truth

All data must come from Repository

Never:

* Call API from UI
* Call API from multiple cubits for same data

---

## RULE 6: Navigation Must NOT Refetch

Use ONE cubit instance per feature

Solution:

* Provide Cubit above BottomNav
* Do NOT recreate cubit per tab

---

## RULE 7: Background Sync

Data must refresh WITHOUT breaking UI

* No loading spinner
* No UI reset

Use silent update

---

## RULE 8: Offline Mode

App must work without internet

If API fails:

* Return cached data
* Do NOT throw error to UI

---

## RULE 9: Smart Refresh Triggers

Refetch ONLY when:

* User pulls to refresh
* Data expired (TTL)
* User performs action

---

## RULE 10: UI Stability

Never clear old data while loading

BAD:

* show loader → hide content

GOOD:

* show old data → update silently

---

# 🧱 Architecture Layers

## Data Layer

* API Service
* Hive Cache

## Domain Layer

* Repository

## Presentation

* Cubit / Bloc
* UI

---

# 🔥 Advanced Patterns

## 1. TTL Cache (Time-based)

Store timestamp:

if (now - lastFetch < 5 min) {
use cache only
}

---

## 2. Background Timer Sync

Every X minutes:

refresh data silently

---

## 3. Optimistic Updates

When user updates data:

1. Update UI instantly
2. Send API request
3. Rollback if failed

---

## 4. Connectivity Handling

If offline:

* Skip API
* Use cache only

---

# 🚀 Final Result

✔ No duplicate requests
✔ Fast UI (instant load)
✔ Works offline
✔ No flickering
✔ Clean architecture
✔ Scalable system

---

# 🧠 Mindset (Senior Rule)

> API is NOT the source of truth
> Cache is the source of truth
> API is just a sync mechanism

---

# 🔥 If You Follow This File

Your app becomes:

* Production ready
* Enterprise level
* Smooth like Instagram


# 🧩 Project Structure Rule Set

Use this as the default feature layout when you apply offline-first behavior to any feature, especially Home:

```
lib/
├── core/
│   ├── network/
│   │   ├── dio_factory.dart
│   │   ├── api_service.dart
│   │   └── api_result.dart
│   ├── cache/
│   │   ├── hive_service.dart
│   │   ├── cache_keys.dart
│   │   └── ttl_helper.dart
│   └── di/
│       └── get_it.dart
└── features/
	 └── home/
		  ├── data/
		  │   ├── models/
		  │   ├── data_sources/
		  │   │   ├── home_remote_data_source.dart
		  │   │   └── home_local_data_source.dart
		  │   └── repository/
		  │       └── home_repo_impl.dart
		  ├── domain/
		  │   ├── entities/
		  │   └── repository/
		  │       └── home_repo.dart
		  └── presentation/
				├── cubit/
				│   ├── home_cubit.dart
				│   └── home_state.dart
				└── screens/
```

---

# 🔄 Data Flow Rule Set

The only valid data path is:

UI → Cubit/Bloc → Repository → Local Data Source + Remote Data Source

Do not let the UI talk to API directly.
Do not let the Cubit talk to Dio directly.
Do not let multiple Cubits fetch the same feature data separately.

The repository is the brain. It decides whether to serve cache, refresh silently, or fall back to offline data.

---

# 🧠 Home Sync Rule Set

For Home, use this behavior:

1. First load
	* Read cache immediately if it exists
	* Emit cached data first
	* Fetch fresh data in background
	* Save fresh data back to Hive
	* Emit updated data silently

2. Cache miss
	* Fetch from API
	* Save response to Hive
	* Emit the fresh result

3. API failure
	* If cache exists, return cache
	* If cache does not exist, emit failure only then

4. Refresh triggers
	* Pull to refresh
	* TTL expiration
	* User action that truly changes the data

---

# 🧱 Repository Rules

Every repository that follows this pattern must:

* Read local cache first
* Guard against duplicate requests
* Keep an in-flight fetch lock when needed
* Save successful API responses into cache
* Return cached fallback on network failure
* Expose one method for normal load and one method for forced refresh when necessary

Preferred behavior:

```text
getData()
  -> cache exists? return cache and refresh silently
  -> cache missing? fetch API, save cache, return fresh

forceRefresh()
  -> always fetch API
  -> save cache
  -> return fresh
```

---

# 🧊 Cache Rules

Hive is the local source of truth.

Each cached payload should store:

* The serialized data
* The last fetch timestamp
* Optional TTL metadata

Cache is valid when:

* It exists
* It has not expired by TTL
* The user is offline

Cache should not be cleared when loading.
Never replace visible data with an empty state just because a refresh started.

For every cache operation, add a clear `debugPrint` that explains:

* when the box is opened or reused
* when cache is read
* whether the result was HIT or MISS
* when cache is saved
* when cache is cleared
* when TTL causes refresh
* when a network request falls back to cache

Use a consistent prefix per feature, for example:

```text
[HomeCache]
[HomeRepo]
```

---

# ⚡ Cubit / Bloc Rules

The Cubit should only manage states, not storage logic.

Recommended state behavior:

* initial
* cachedSuccess
* refreshingSuccess
* failure

Important rules:

* Emit cached data first if available
* Do not show loading again after the first success unless the data is truly missing
* Refresh silently in the background
* Keep old data visible while the API updates

For Home, the Cubit should call `load()` after the first frame, not inside `initState()`.

---

# 🧭 Navigation Rules

Bottom navigation must not recreate the Home feature state every time the tab changes.

Use one Cubit instance per feature and provide it above the navigation container.

Reference implementation pattern for Home:

```text
UI
 ↓
Cubit
 ↓
Repository contract
 ↓
Repository implementation
 ↓
├── LocalDataSource (Hive)
└── RemoteDataSource (API)
```

Actual Home feature split:

* `lib/app/features/home/data/models/home_dashboard_response.dart` -> API DTO
* `lib/app/features/home/data/models/home_dashboard_cache_model.dart` -> Cache DTO
* `lib/app/features/home/data/data_sources/remote_data_source.dart` -> API only
* `lib/app/features/home/data/data_sources/local_data_source.dart` -> Hive only
* `lib/app/features/home/data/repos/home_repo.dart` -> repository contract
* `lib/app/features/home/data/repos/home_repo_impl.dart` -> repository implementation

The cache DTO must stay inside the data layer and never be exposed to UI or Cubit.

If the layout rebuilds, the feature must keep its previous data and must not re-trigger duplicate fetches.

---

# 📡 Background Sync Rules

Background sync is allowed, but it must be silent.

* Log cache hit/miss, in-flight deduplication, TTL decisions, remote success, and fallback paths
Allowed:

* Refresh cache in the background
* Emit updated data without resetting the UI
* Use periodic refresh only if the feature really needs it

Not allowed:

* Flashing loader on every refresh
* Clearing content before new data arrives
* Throwing API failures directly to the UI when cache exists

---

# 🌐 Offline Mode Rules

If internet is unavailable:

* Skip API calls when possible
* Return cache

---

# 🧱 Feature Onboarding Template

When you add a new offline-first feature later, follow this exact order:

1. Create the API DTO in `data/models/`
2. Create the cache DTO in `data/models/`
3. Create the remote data source in `data/data_sources/`
4. Create the local data source in `data/data_sources/`
5. Define the repository contract in `data/repos/`
6. Implement the repository in `data/repos/`
7. Wire the repo and sources in DI
8. Update Cubit to use `load()` and `refresh()` only
9. Delay initial fetch until after first frame
10. Add `debugPrint` for cache hit/miss and sync decisions

This is the default pattern for Home, Orders, Catalog, and any future feature that needs offline-first behavior.
* Avoid crashing or showing a hard error if cached data exists

Offline mode should feel like a degraded sync state, not a broken screen.

---

# ⏱ TTL Rules

Use TTL to decide whether cache is still fresh.

Example policy:

* If cache age is less than 5 minutes, serve cache only
* If cache age is older, serve cache and refresh silently

TTL is a refresh policy, not a UI policy.

---

# 🧪 Practical Implementation Order

When you apply this to Home, do it in this order:

1. Add Hive cache support
2. Split remote and local data sources
3. Refactor repository to cache-first behavior
4. Update Cubit to stale-while-revalidate
5. Delay fetch until after first frame
6. Prevent duplicate requests
7. Make navigation reuse the same feature Cubit
8. Add TTL and offline fallback

---
END
