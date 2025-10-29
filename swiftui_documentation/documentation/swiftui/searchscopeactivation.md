---
title: SearchScopeActivation
description: The ways that searchable modifiers can show or hide search scopes.
source: https://developer.apple.com/documentation/swiftui/searchscopeactivation
timestamp: 2025-10-29T00:14:24.617Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SearchScopeActivation

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> The ways that searchable modifiers can show or hide search scopes.

```swift
struct SearchScopeActivation
```

## Getting search scope activiation types

- [automatic](/documentation/swiftui/searchscopeactivation/automatic) The automatic activation of the scope bar.
- [onSearchPresentation](/documentation/swiftui/searchscopeactivation/onsearchpresentation) An activation where the system shows search scopes after presenting search and hides search scopes after search cancellation.
- [onTextEntry](/documentation/swiftui/searchscopeactivation/ontextentry) An activation where the system shows search scopes when typing begins in the search field and hides search scopes after search cancellation.

## Limiting search scope

- [Scoping a search operation](/documentation/swiftui/scoping-a-search-operation)
- [searchScopes(_:scopes:)](/documentation/swiftui/view/searchscopes(_:scopes:))
- [searchScopes(_:activation:_:)](/documentation/swiftui/view/searchscopes(_:activation:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
