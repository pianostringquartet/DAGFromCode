---
title: init(editing:migrationPlan:editor:prepareDocument:)
description: Instantiates a document group for creating and editing documents described by the last  in the migration plan.
source: https://developer.apple.com/documentation/swiftui/documentgroup/init(editing:migrationplan:editor:preparedocument:)
timestamp: 2025-10-29T00:11:46.555Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgroup](/documentation/swiftui/documentgroup)

**Initializer**

# init(editing:migrationPlan:editor:prepareDocument:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+

> Instantiates a document group for creating and editing documents described by the last  in the migration plan.

```swift
init(editing contentType: UTType, migrationPlan: any SchemaMigrationPlan.Type, editor: @escaping () -> Content, prepareDocument: @escaping (ModelContext) -> Void = { _ in })
```

## Parameters

**editing**

The content type of the document. It should conform to `UTType.package`.



**migrationPlan**

The description of steps required to migrate older document versions so that they can be opened and edited. The last `VersionedSchema` in the plan is considered to be the current application schema.



**editor**

The editing UI for the provided document.



## Editing a document backed by a persistent store

- [init(editing:contentType:editor:prepareDocument:)](/documentation/swiftui/documentgroup/init(editing:contenttype:editor:preparedocument:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
