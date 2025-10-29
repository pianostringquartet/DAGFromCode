---
title: Backyard Birds: Building an app with SwiftData and widgets
description: Create an app with persistent data, interactive widgets, and an all new in-app purchase experience.
source: https://developer.apple.com/documentation/swiftui/backyard-birds-sample
timestamp: 2025-10-29T00:12:00.123Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Sample Code**

# Backyard Birds: Building an app with SwiftData and widgets

**Available on:** iOS 17.2+, iPadOS 17.2+, macOS 14.2+, watchOS 10.2+, Xcode 15.1+

> Create an app with persistent data, interactive widgets, and an all new in-app purchase experience.

## Overview

Backyard Birds offers a rich environment in which you can watch the birds that visit your backyard garden. You can monitor their water and food supply to ensure they always have fresh water and plenty to eat, or upgrade the game using an in-app purchase to provide tastier food for the birds to eat.

The sample implements its data model using [Swift Data](/documentation/SwiftData) for persistence, and integrates seamlessly with SwiftUI using the [Observation](/documentation/Observation) protocol. The game’s widgets implement [App Intents](/documentation/AppIntents) for interactive and configurable widgets. The in-app purchase experience uses the [Product View](/documentation/StoreKit/ProductView) and [Subscription Store View](/documentation/StoreKit/SubscriptionStoreView) from StoreKit.

You can access the source code for this sample on [sample-backyard](https://github.com/apple/sample-backyard-birds).

> [!NOTE]
> This sample code project is associated with WWDC23 session 102: [](https://developer.apple.com/wwdc23/102/).

### Configure the sample code project

To configure the Backyard Birds app to run on your devices, follow these steps:

1. Open the project in Xcode 15 or later.
2. Edit the multiplatform target’s scheme, and on the Options tab, choose the `Store.storekit` file for StoreKit configuration.
3. Repeat the previous step for the watchOS target’s scheme.
4. Select the top-level Backyard Birds project.
5. For all targets, choose your team from the Team menu in the Signing & Capabilities pane so Xcode can automatically manage your provisioning profile.

### Create a data-driven app

The app defines its data model by conforming the model objects to [Persistent Model](/documentation/SwiftData/PersistentModel) using the [Model()](/documentation/SwiftData/Model()) macro. Using the [Attribute(_:originalName:hashModifier:)](/documentation/SwiftData/Attribute(_:originalName:hashModifier:)) macro with the [unique](/documentation/SwiftData/Schema/Attribute/Option/unique) option ensures that the `id` property is unique.

```swift
@Model public class BirdSpecies {
    @Attribute(.unique) public var id: String
    public var naturalScale: Double
    public var isEarlyAccess: Bool
    public var parts: [BirdPart]
    
    @Relationship(deleteRule: .cascade, inverse: \Bird.species)
    public var birds: [Bird] = []
    
    public var info: BirdSpeciesInfo { BirdSpeciesInfo(rawValue: id) }
    
    public init(info: BirdSpeciesInfo, naturalScale: Double = 1, isEarlyAccess: Bool = false, parts: [BirdPart]) {
        self.id = info.rawValue
        self.naturalScale = naturalScale
        self.isEarlyAccess = isEarlyAccess
        self.parts = parts
    }
}
```

### Construct interactive widgets

Backyard Birds displays interactive widgets by presenting a [Button](/documentation/swiftui/button) to refill a backyard’s supplies when the water and food are running low. The app does this by placing a `Button` in the widget’s view, and passing a `ResupplyBackyardIntent` instance to the [init(intent:label:)](/documentation/SwiftUI/Button/init(intent:label:)) initializer:

```swift
Button(intent: ResupplyBackyardIntent(backyard: BackyardEntity(from: snapshot.backyard))) {
    Label("Refill Water", systemImage: "arrow.clockwise")
        .foregroundStyle(.secondary)
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .background(.quaternary, in: .containerRelative)
}
```

The app allows for configuration of the widget by implementing the [Widget Configuration Intent](/documentation/AppIntents/WidgetConfigurationIntent) protocol:

```swift
struct BackyardWidgetIntent: WidgetConfigurationIntent {
    static let title: LocalizedStringResource = "Backyard"
    static let description = IntentDescription("Keep track of your backyards.")
    
    @Parameter(title: "Backyards", default: BackyardWidgetContent.all)
    var backyards: BackyardWidgetContent
    
    @Parameter(title: "Backyard")
    var specificBackyard: BackyardEntity?
    
    init(backyards: BackyardWidgetContent = .all, specificBackyard: BackyardEntity? = nil) {
        self.backyards = backyards
        self.specificBackyard = specificBackyard
    }
    
    init() {
    }
    
    static var parameterSummary: some ParameterSummary {
        When(\.$backyards, .equalTo, BackyardWidgetContent.specific) {
            Summary {
                \.$backyards
                \.$specificBackyard
            }
        } otherwise: {
            Summary {
                \.$backyards
            }
        }
    }
}
```

### Provide a new in-app purchase experience

The sample app uses [Product View](/documentation/StoreKit/ProductView) to display several different bird food upgrades available for purchase on a store shelf. To prominently feature an in-app purchase item, the app uses the [4202371](/documentation/storekit/productview/4202371-productviewstyle) modifier:

```swift
ProductView(id: product.id) {
    BirdFoodProductIcon(birdFood: birdFood, quantity: product.quantity)
        .bestBirdFoodValueBadge()
}
.padding(.vertical)
.background(.background.secondary, in: .rect(cornerRadius: 20))
.productViewStyle(.large)
```

The Backyard Birds Pass page displays renewable subscriptions using the [Subscription Store View](/documentation/StoreKit/SubscriptionStoreView) view. The app uses the `PassMarketingContent` view as the content of the `SubscriptionStoreView`:

```swift
SubscriptionStoreView(
    groupID: passGroupID,
    visibleRelationships: showPremiumUpgrade ? .upgrade : .all
) {
    PassMarketingContent(showPremiumUpgrade: showPremiumUpgrade)
        #if !os(watchOS)
        .containerBackground(for: .subscriptionStoreFullHeight) {
            SkyBackground()
        }
        #endif
}
```

## Creating an app

- [Destination Video](/documentation/visionOS/destination-video)
- [Hello World](/documentation/visionOS/World)
- [Food Truck: Building a SwiftUI multiplatform app](/documentation/swiftui/food-truck-building-a-swiftui-multiplatform-app)
- [Fruta: Building a feature-rich app with SwiftUI](/documentation/AppClip/fruta-building-a-feature-rich-app-with-swiftui)
- [Migrating to the SwiftUI life cycle](/documentation/swiftui/migrating-to-the-swiftui-life-cycle)
- [App](/documentation/swiftui/app)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
