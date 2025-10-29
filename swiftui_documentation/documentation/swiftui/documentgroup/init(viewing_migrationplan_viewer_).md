---
title: init(viewing:migrationPlan:viewer:)
description: Instantiates a document group for viewing documents described by the last  in the migration plan.
source: https://developer.apple.com/documentation/swiftui/documentgroup/init(viewing:migrationplan:viewer:)
timestamp: 2025-10-29T00:10:31.147Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgroup](/documentation/swiftui/documentgroup)

**Initializer**

# init(viewing:migrationPlan:viewer:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+

> Instantiates a document group for viewing documents described by the last  in the migration plan.

```swift
init(viewing contentType: UTType, migrationPlan: any SchemaMigrationPlan.Type, viewer: @escaping () -> Content)
```

## Parameters

**viewing**

The content type of the document. It should conform to `UTType.package`.



**migrationPlan**

The description of steps required to migrate older document versions so that they can be opened. The last `VersionedSchema` in the plan is considered to be the current application schema.



**viewer**

The viewing UI for the provided document.



## Viewing a document backed by a persistent store

- [init(viewing:contentType:viewer:)](/documentation/swiftui/documentgroup/init(viewing:contenttype:viewer:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
