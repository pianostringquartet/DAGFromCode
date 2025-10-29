---
title: init(viewing:contentType:viewer:)
description: Instantiates a document group for viewing documents that store a specific model type.
source: https://developer.apple.com/documentation/swiftui/documentgroup/init(viewing:contenttype:viewer:)
timestamp: 2025-10-29T00:15:00.721Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgroup](/documentation/swiftui/documentgroup)

**Initializer**

# init(viewing:contentType:viewer:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+

> Instantiates a document group for viewing documents that store a specific model type.

```swift
init(viewing modelType: any PersistentModel.Type, contentType: UTType, viewer: @escaping () -> Content)
```

## Parameters

**modelType**

The model type defining the schema used for each document.



**contentType**

The content type of document your app can view. It should conform to `UTType.package`.



**viewer**

The viewing UI for the provided document.



## Discussion

```swift
 @main
 struct Todo: App {
     var body: some Scene {
         DocumentGroup(viewing: TodoItem.self, contentType: .todoItem) {
             ContentView()
         }
     }
 }

 extension UTType {
     static var todoItem = UTType(exportedAs: "com.myApp.todoItem")
 }
```

> [!IMPORTANT]
> If your app declares custom uniform type identifiers, include corresponding entries in the app’s `Info.plist`. For more information, see [defining-file-and-data-types-for-your](/documentation/UniformTypeIdentifiers/defining-file-and-data-types-for-your-app). Also, remember to specify the supported Document types in the `Info.plist` as well.

## Viewing a document backed by a persistent store

- [init(viewing:migrationPlan:viewer:)](/documentation/swiftui/documentgroup/init(viewing:migrationplan:viewer:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
