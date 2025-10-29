---
title: init(editing:contentType:editor:prepareDocument:)
description: Instantiates a document group for creating and editing documents that store a specific model type.
source: https://developer.apple.com/documentation/swiftui/documentgroup/init(editing:contenttype:editor:preparedocument:)
timestamp: 2025-10-29T00:13:29.811Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgroup](/documentation/swiftui/documentgroup)

**Initializer**

# init(editing:contentType:editor:prepareDocument:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+

> Instantiates a document group for creating and editing documents that store a specific model type.

```swift
init(editing modelType: any PersistentModel.Type, contentType: UTType, editor: @escaping () -> Content, prepareDocument: @escaping (ModelContext) -> Void = { _ in })
```

## Parameters

**modelType**

The model type defining the schema used for each document.



**contentType**

The content type of the document. It should conform to `UTType.package`.



**editor**

The editing UI for the provided document.



**prepareDocument**

The optional closure that accepts `ModelContext` associated with the new document. Use this closure to set the document’s initial contents before it is displayed: insert preconfigured models in the provided `ModelContext`.



## Discussion

```swift
 @main
 struct Todo: App {
     var body: some Scene {
         DocumentGroup(editing: TodoItem.self, contentType: .todoItem) {
             ContentView()
         }
     }
 }

 struct ContentView: View {
     @Query var items: [TodoItem]

         var body: some View {
             List {
                 ForEach(items) { item in
                     @Bindable var item = item
                     Toggle(item.text, isOn: $item.isDone)
                 }
              }
         }
 }

 @Model
 final class TodoItem {
     var created: Date
     var text: String
     var isDone = false
 }

 extension UTType {
     static var todoItem = UTType(exportedAs: "com.myApp.todoItem")
 }
```

> [!IMPORTANT]
> If your app declares custom uniform type identifiers, include corresponding entries in the app’s `Info.plist`. For more information, see [defining-file-and-data-types-for-your](/documentation/UniformTypeIdentifiers/defining-file-and-data-types-for-your-app). Also, remember to specify the supported Document types in the Info.plist as well.

## Editing a document backed by a persistent store

- [init(editing:migrationPlan:editor:prepareDocument:)](/documentation/swiftui/documentgroup/init(editing:migrationplan:editor:preparedocument:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
