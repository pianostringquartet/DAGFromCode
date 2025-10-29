---
title: Making a view into a drag source
description: Adopt draggable API to provide items for drag-and-drop operations.
source: https://developer.apple.com/documentation/swiftui/making-a-view-into-a-drag-source
timestamp: 2025-10-29T00:11:00.552Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Making a view into a drag source

> Adopt draggable API to provide items for drag-and-drop operations.

## Overview

When someone drags an onscreen visual representation of an item in your app, such as a photo, a Maps location, a Calendar event, or a text selection, the drag operation has some data associated with it, as well as a preview of the data that the system displays. Add the [draggable(_:)](/documentation/swiftui/view/draggable(_:)) modifier to enable the view to function as a drag source, and provide a value that conforms to the [Transferable](/documentation/CoreTransferable/Transferable) protocol.

The `Transferable` protocol describes how you can serialize and deserialize your model object for sharing and data transfer. It provides a transfer representation by composing one or more of the Core Transferable framework’s built-in [Transfer Representation](/documentation/CoreTransferable/TransferRepresentation) types.

### Enable a view as a drag source

Use the `draggable(_:)` modifier to send or receive `Transferable` items within an app, among a collection of your own apps, or between your apps and other apps that support the import or export of a specified data format.

```swift
struct MyView: View {
    let name = "Mei Chen"
    
    var body: some View {
        Text(name)
            .draggable(name)
    }
}
```

Use the [draggable(_:preview:)](/documentation/swiftui/view/draggable(_:preview:)) modifier to define a custom preview for the dragged item.

```swift
    Text(name)
        .draggable(name) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.yellow.gradient)
                Text("Drop \(name)")
                    .font(.title)
                    .foregroundStyle(.red)
            }
        }
```

To customize the lift preview that the system shows as it transitions to displaying your custom `preview`, apply a [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) modifier with a [drag Preview](/documentation/swiftui/contentshapekinds/dragpreview) kind. For example, you can change the preview’s corner radius, as in the following code example:

```swift
    Text(name)
        .contentShape(.dragPreview, RoundedRectangle(cornerRadius: 7))
        .draggable(name) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.yellow.gradient)
                Text("Drop \(name)")
                    .font(.title)
                    .foregroundStyle(.red)
            }
        }
```

### Create a transferable item for drag-and-drop operations

To support drag operations of model objects, conform a model to the `Transferable` protocol to create a transferable item, and implement the [Transfer Representation](/documentation/CoreTransferable/TransferRepresentation) static property. Types like [String](/documentation/Swift/String), [Data](/documentation/Foundation/Data), [URL](/documentation/Foundation/URL), and [Image](/documentation/SwiftUI/Image) already conform to `Transferable`, making them easy to use in drag-and-drop operations.

Define a data model, representing a user profile, that is a type conforming to [Codable](/documentation/Swift/Codable) with the properties `name` and `phoneNumber`.

```swift
struct Profile: Codable, Identifiable {
    var id: UUID = UUID()
    var name: String
    var phoneNumber: String
}
```

Extend `Profile` to conform to the `Transferable` protocol to compose a transfer representation, and add [Codable Representation](/documentation/CoreTransferable/CodableRepresentation) with the custom uniform type identifier `com.example.profile` to represent the `Profile` data structure.

```swift
extension Profile: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .profile)
        ProxyRepresentation(exporting: \.name)
    }
}
```

Make sure to include the custom uniform type identifier in the app’s `Info.plist` file. For more information, see [defining-file-and-data-types-for-your](/documentation/UniformTypeIdentifiers/defining-file-and-data-types-for-your-app).

Declare new uniform type identifiers as convenience variables on [UTType-swift.struct](/documentation/UniformTypeIdentifiers/UTType-swift.struct). For an exported declaration, use the following code:

```swift
extension UTType {
    static var profile = UTType(exportedAs: "com.example.profile")
}
```

The other type of transfer representation in the previous code example is a [Proxy Representation](/documentation/CoreTransferable/ProxyRepresentation), which uses the `String` structure’s built-in `Transferable` conformance. `ProxyRepresentation` serves as an alternative that lets people drag and drop the profile item in any text editor that doesn’t support the `com.example.profile` content type, but works with text formats.

To add more transfer representations to a draggable item, specify one or more additional representations in order of preference. This ensures that the system uses the most suitable representation, depending on the content type that the receiver can accept for drag-and-drop operations. For more information, see [choosing-a-transfer-representation-for-a-model](/documentation/CoreTransferable/choosing-a-transfer-representation-for-a-model-type).

To use the `com.example.profile` content type for drag operations, pass in the profiles to the `draggable(_:)` modifier.

```swift
struct ContentView: View {
    @State private var profiles = [
        Profile(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
        Profile(name: "Mei Chen", phoneNumber: "(919) 555-2481")
    ]
    
    var body: some View {
        List {
            ForEach(profiles) { profile in
                Text(profile.name)
                    .draggable(profile)
            }
        }
    }
}
```

### Enable list reordering

Within a [List](/documentation/swiftui/list), you can use the `onMove(perform:)` modifier to enable reordering. The modifier allows you to reorder list items by using a long press on a row, and then dragging it to a new location. Add the `onMove(perform:)` modifier to a `List` to enable the interaction.

```swift
    List {
        ForEach(profiles) { profile in
            Text(profile.name)
        }
        .onMove { indices, newOffset in
            // Update the items array based on source and destination indices.
            profiles.move(fromOffsets: indices, toOffset: newOffset)
        }
    }
```

To conditionally disable item reordering on a specific row, set [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:)) to `true`.

## Essentials

- [Adopting drag and drop using SwiftUI](/documentation/swiftui/adopting-drag-and-drop-using-swiftui)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
