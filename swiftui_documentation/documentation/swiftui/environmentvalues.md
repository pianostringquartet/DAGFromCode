---
title: EnvironmentValues
description: A collection of environment values propagated through a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/environmentvalues
timestamp: 2025-10-29T00:14:44.120Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EnvironmentValues

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A collection of environment values propagated through a view hierarchy.

```swift
struct EnvironmentValues
```

## Overview

SwiftUI exposes a collection of values to your app’s views in an `EnvironmentValues` structure. To read a value from the structure, declare a property using the [Environment](/documentation/swiftui/environment) property wrapper and specify the value’s key path. For example, you can read the current locale:

```swift
@Environment(\.locale) var locale: Locale
```

Use the property you declare to dynamically control a view’s layout. SwiftUI automatically sets or updates many environment values, like [pixel Length](/documentation/swiftui/environmentvalues/pixellength), [scene Phase](/documentation/swiftui/environmentvalues/scenephase), or [locale](/documentation/swiftui/environmentvalues/locale), based on device characteristics, system state, or user settings. For others, like [line Limit](/documentation/swiftui/environmentvalues/linelimit), SwiftUI provides a reasonable default value.

You can set or override some values using the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier:

```swift
MyView()
    .environment(\.lineLimit, 2)
```

The value that you set affects the environment for the view that you modify — including its descendants in the view hierarchy — but only up to the point where you apply a different environment modifier.

SwiftUI provides dedicated view modifiers for setting some values, which typically makes your code easier to read. For example, rather than setting the [line Limit](/documentation/swiftui/environmentvalues/linelimit) value directly, as in the previous example, you should instead use the [lineLimit(_:)](/documentation/swiftui/view/linelimit(_:)) modifier:

```swift
MyView()
    .lineLimit(2)
```

In some cases, using a dedicated view modifier provides additional functionality. For example, you must use the [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:)) modifier rather than setting [color Scheme](/documentation/swiftui/environmentvalues/colorscheme) directly to ensure that the new value propagates up to the presenting container when presenting a view like a popover:

```swift
MyView()
    .popover(isPresented: $isPopped) {
        PopoverContent()
            .preferredColorScheme(.dark)
    }
```

Create a custom environment value by declaring a new property in an extension to the environment values structure and applying the [Entry()](/documentation/swiftui/entry()) macro to the variable declaration:

```swift
extension EnvironmentValues {
    @Entry var myCustomValue: String = "Default value"
}

extension View {
    func myCustomValue(_ myCustomValue: String) -> some View {
        environment(\.myCustomValue, myCustomValue)
    }
}
```

Clients of your value then access the value in the usual way, reading it with the [Environment](/documentation/swiftui/environment) property wrapper, and setting it with the `myCustomValue` view modifier.

## Conforms To

- [CustomStringConvertible](/documentation/Swift/CustomStringConvertible)

## Creating and accessing values

- [init()](/documentation/swiftui/environmentvalues/init()) Creates an environment values instance.
- [subscript(_:)](/documentation/swiftui/environmentvalues/subscript(_:)) Accesses the environment value associated with a custom key.
- [description](/documentation/swiftui/environmentvalues/description) A string that represents the contents of the environment values instance.

## Accessibility

- [accessibilityAssistiveAccessEnabled](/documentation/swiftui/environmentvalues/accessibilityassistiveaccessenabled) A Boolean value that indicates whether Assistive Access is in use.
- [accessibilityDimFlashingLights](/documentation/swiftui/environmentvalues/accessibilitydimflashinglights) Whether the setting to reduce flashing or strobing lights in video content is on. This setting can also be used to determine if UI in playback controls should be shown to indicate upcoming content that includes flashing or strobing lights.
- [accessibilityDifferentiateWithoutColor](/documentation/swiftui/environmentvalues/accessibilitydifferentiatewithoutcolor) Whether the system preference for Differentiate without Color is enabled.
- [accessibilityEnabled](/documentation/swiftui/environmentvalues/accessibilityenabled) A Boolean value that indicates whether the user has enabled an assistive technology.
- [accessibilityInvertColors](/documentation/swiftui/environmentvalues/accessibilityinvertcolors) Whether the system preference for Invert Colors is enabled.
- [accessibilityLargeContentViewerEnabled](/documentation/swiftui/environmentvalues/accessibilitylargecontentviewerenabled) Whether the Large Content Viewer is enabled.
- [accessibilityPlayAnimatedImages](/documentation/swiftui/environmentvalues/accessibilityplayanimatedimages) Whether the setting for playing animations in an animated image is on. When this value is false, any presented image that contains animation should not play automatically.
- [accessibilityPrefersHeadAnchorAlternative](/documentation/swiftui/environmentvalues/accessibilityprefersheadanchoralternative) Whether the system setting to prefer alternatives to head-anchored content is on.
- [accessibilityQuickActionsEnabled](/documentation/swiftui/environmentvalues/accessibilityquickactionsenabled) A Boolean that indicates whether the quick actions feature is enabled.
- [accessibilityReduceMotion](/documentation/swiftui/environmentvalues/accessibilityreducemotion) Whether the system preference for Reduce Motion is enabled.
- [accessibilityReduceTransparency](/documentation/swiftui/environmentvalues/accessibilityreducetransparency) Whether the system preference for Reduce Transparency is enabled.
- [accessibilityShowButtonShapes](/documentation/swiftui/environmentvalues/accessibilityshowbuttonshapes) Whether the system preference for Show Button Shapes is enabled.
- [accessibilitySwitchControlEnabled](/documentation/swiftui/environmentvalues/accessibilityswitchcontrolenabled) A Boolean value that indicates whether the Switch Control motor accessibility feature is in use.
- [accessibilityVoiceOverEnabled](/documentation/swiftui/environmentvalues/accessibilityvoiceoverenabled) A Boolean value that indicates whether the VoiceOver screen reader is in use.
- [legibilityWeight](/documentation/swiftui/environmentvalues/legibilityweight) The font weight to apply to text.

## Actions

- [dismiss](/documentation/swiftui/environmentvalues/dismiss) An action that dismisses the current presentation.
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch) An action that ends the current search interaction.
- [dismissWindow](/documentation/swiftui/environmentvalues/dismisswindow) A window dismissal action stored in a view’s environment.
- [openImmersiveSpace](/documentation/swiftui/environmentvalues/openimmersivespace) An action that presents an immersive space.
- [dismissImmersiveSpace](/documentation/swiftui/environmentvalues/dismissimmersivespace) An immersive space dismissal action stored in a view’s environment.
- [newDocument](/documentation/swiftui/environmentvalues/newdocument) An action in the environment that presents a new document.
- [openDocument](/documentation/swiftui/environmentvalues/opendocument) An action in the environment that presents an existing document.
- [openURL](/documentation/swiftui/environmentvalues/openurl) An action that opens a URL.
- [openWindow](/documentation/swiftui/environmentvalues/openwindow) A window presentation action stored in a view’s environment.
- [pushWindow](/documentation/swiftui/environmentvalues/pushwindow) A window presentation action stored in a view’s environment.
- [purchase](/documentation/swiftui/environmentvalues/purchase) An action that starts an in-app purchase.
- [refresh](/documentation/swiftui/environmentvalues/refresh) A refresh action stored in a view’s environment.
- [rename](/documentation/swiftui/environmentvalues/rename) An action that activates the standard rename interaction.
- [resetFocus](/documentation/swiftui/environmentvalues/resetfocus) An action that requests the focus system to reevaluate default focus.
- [openSettings](/documentation/swiftui/environmentvalues/opensettings) A Settings presentation action stored in a view’s environment.

## Authentication

- [authorizationController](/documentation/swiftui/environmentvalues/authorizationcontroller) A value provided in the SwiftUI environment that views can use to perform authorization requests.
- [webAuthenticationSession](/documentation/swiftui/environmentvalues/webauthenticationsession) A value provided in the SwiftUI environment that views can use to authenticate a user through a web service.

## Controls and input

- [buttonRepeatBehavior](/documentation/swiftui/environmentvalues/buttonrepeatbehavior) Whether buttons with this associated environment should repeatedly trigger their actions on prolonged interactions.
- [controlSize](/documentation/swiftui/environmentvalues/controlsize) The size to apply to controls within a view.
- [defaultWheelPickerItemHeight](/documentation/swiftui/environmentvalues/defaultwheelpickeritemheight) The default height of an item in a wheel-style picker, such as a date picker.
- [keyboardShortcut](/documentation/swiftui/environmentvalues/keyboardshortcut) The keyboard shortcut that buttons in this environment will be triggered with.
- [menuIndicatorVisibility](/documentation/swiftui/environmentvalues/menuindicatorvisibility) The menu indicator visibility to apply to controls within a view.
- [menuOrder](/documentation/swiftui/environmentvalues/menuorder) The preferred order of items for menus presented from this view.
- [searchSuggestionsPlacement](/documentation/swiftui/environmentvalues/searchsuggestionsplacement) The current placement of search suggestions.
- [preferredPencilDoubleTapAction](/documentation/swiftui/environmentvalues/preferredpencildoubletapaction) The action that the user prefers to perform after double-tapping their Apple Pencil, as selected in the Settings app.
- [preferredPencilSqueezeAction](/documentation/swiftui/environmentvalues/preferredpencilsqueezeaction) The action that the user prefers to perform when squeezing their Apple Pencil, as selected in the Settings app.

## Display characteristics

- [appearsActive](/documentation/swiftui/environmentvalues/appearsactive) Whether views and styles in this environment should prefer an active appearance over an inactive appearance.
- [colorScheme](/documentation/swiftui/environmentvalues/colorscheme) The color scheme of this environment.
- [colorSchemeContrast](/documentation/swiftui/environmentvalues/colorschemecontrast) The contrast associated with the color scheme of this environment.
- [displayScale](/documentation/swiftui/environmentvalues/displayscale) The display scale of this environment.
- [horizontalSizeClass](/documentation/swiftui/environmentvalues/horizontalsizeclass) The horizontal size class of this environment.
- [imageScale](/documentation/swiftui/environmentvalues/imagescale) The image scale for this environment.
- [pixelLength](/documentation/swiftui/environmentvalues/pixellength) The size of a pixel on the screen.
- [sidebarRowSize](/documentation/swiftui/environmentvalues/sidebarrowsize) The current size of sidebar rows.
- [verticalSizeClass](/documentation/swiftui/environmentvalues/verticalsizeclass) The vertical size class of this environment.
- [immersiveSpaceDisplacement](/documentation/swiftui/environmentvalues/immersivespacedisplacement) The displacement that the system applies to the immersive space when moving the space away from its default position, in meters.
- [labelsVisibility](/documentation/swiftui/environmentvalues/labelsvisibility) The labels visibility set by .
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance) The behavior materials should use for their active state, defaulting to .
- [TabBarPlacement](/documentation/swiftui/tabbarplacement) A placement for tabs in a tab view.
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle) The label style to apply to controls within a toolbar.

## Global objects

- [calendar](/documentation/swiftui/environmentvalues/calendar) The current calendar that views should use when handling dates.
- [documentConfiguration](/documentation/swiftui/environmentvalues/documentconfiguration) The configuration of a document in a .
- [locale](/documentation/swiftui/environmentvalues/locale) The current locale that views should use.
- [managedObjectContext](/documentation/swiftui/environmentvalues/managedobjectcontext)
- [modelContext](/documentation/swiftui/environmentvalues/modelcontext) The SwiftData model context that will be used for queries and other model operations within this environment.
- [timeZone](/documentation/swiftui/environmentvalues/timezone) The current time zone that views should use when handling dates.
- [undoManager](/documentation/swiftui/environmentvalues/undomanager) The undo manager used to register a view’s undo operations.

## Scrolling

- [isScrollEnabled](/documentation/swiftui/environmentvalues/isscrollenabled) A Boolean value that indicates whether any scroll views associated with this environment allow scrolling to occur.
- [horizontalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/horizontalscrollindicatorvisibility) The visibility to apply to scroll indicators of any horizontally scrollable content.
- [verticalScrollIndicatorVisibility](/documentation/swiftui/environmentvalues/verticalscrollindicatorvisibility) The visiblity to apply to scroll indicators of any vertically scrollable content.
- [scrollDismissesKeyboardMode](/documentation/swiftui/environmentvalues/scrolldismisseskeyboardmode) The way that scrollable content interacts with the software keyboard.
- [horizontalScrollBounceBehavior](/documentation/swiftui/environmentvalues/horizontalscrollbouncebehavior) The scroll bounce mode for the horizontal axis of scrollable views.
- [verticalScrollBounceBehavior](/documentation/swiftui/environmentvalues/verticalscrollbouncebehavior) The scroll bounce mode for the vertical axis of scrollable views.

## State

- [editMode](/documentation/swiftui/environmentvalues/editmode) An indication of whether the user can edit the contents of a view associated with this environment.
- [isActivityFullscreen](/documentation/swiftui/environmentvalues/isactivityfullscreen) A Boolean value that indicates whether the Live Activity appears in a full-screen presentation.
- [isEnabled](/documentation/swiftui/environmentvalues/isenabled) A Boolean value that indicates whether the view associated with this environment allows user interaction.
- [isFocused](/documentation/swiftui/environmentvalues/isfocused) Returns whether the nearest focusable ancestor has focus.
- [isFocusEffectEnabled](/documentation/swiftui/environmentvalues/isfocuseffectenabled) A Boolean value that indicates whether the view associated with this environment allows focus effects to be displayed.
- [isHoverEffectEnabled](/documentation/swiftui/environmentvalues/ishovereffectenabled) A Boolean value that indicates whether the view associated with this environment allows hover effects to be displayed.
- [isLuminanceReduced](/documentation/swiftui/environmentvalues/isluminancereduced) A Boolean value that indicates whether the display or environment currently requires reduced luminance.
- [isPresented](/documentation/swiftui/environmentvalues/ispresented) A Boolean value that indicates whether the view associated with this environment is currently presented.
- [isSceneCaptured](/documentation/swiftui/environmentvalues/isscenecaptured) The current capture state.
- [isSearching](/documentation/swiftui/environmentvalues/issearching) A Boolean value that indicates when the user is searching.
- [isTabBarShowingSections](/documentation/swiftui/environmentvalues/istabbarshowingsections) A Boolean value that determines whether a tab view shows the expanded contents of a tab section.
- [scenePhase](/documentation/swiftui/environmentvalues/scenephase) The current phase of the scene.
- [supportsMultipleWindows](/documentation/swiftui/environmentvalues/supportsmultiplewindows) A Boolean value that indicates whether the current platform supports opening multiple windows.

## StoreKit configuration

- [displayStoreKitMessage](/documentation/swiftui/environmentvalues/displaystorekitmessage)
- [requestReview](/documentation/swiftui/environmentvalues/requestreview)

## Text styles

- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening) A Boolean value that indicates whether inter-character spacing should tighten to fit the text into the available space.
- [autocorrectionDisabled](/documentation/swiftui/environmentvalues/autocorrectiondisabled) A Boolean value that determines whether the view hierarchy has auto-correction enabled.
- [dynamicTypeSize](/documentation/swiftui/environmentvalues/dynamictypesize) The current Dynamic Type size.
- [font](/documentation/swiftui/environmentvalues/font) The default font of this environment.
- [layoutDirection](/documentation/swiftui/environmentvalues/layoutdirection) The layout direction associated with the current environment.
- [lineLimit](/documentation/swiftui/environmentvalues/linelimit) The maximum number of lines that text can occupy in a view.
- [lineSpacing](/documentation/swiftui/environmentvalues/linespacing) The distance in points between the bottom of one line fragment and the top of the next.
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor) The minimum permissible proportion to shrink the font size to fit the text into the available space.
- [multilineTextAlignment](/documentation/swiftui/environmentvalues/multilinetextalignment) An environment value that indicates how a text view aligns its lines when the content wraps or contains newlines.
- [textCase](/documentation/swiftui/environmentvalues/textcase) A stylistic override to transform the case of  when displayed, using the environment’s locale.
- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode) A value that indicates how the layout truncates the last line of text to fit into the available space.
- [textSelectionAffinity](/documentation/swiftui/environmentvalues/textselectionaffinity) A representation of the direction or association of a selection or cursor relative to a text character. This concept becomes much more prominent when dealing with bidirectional text (text that contains both LTR and RTL scripts, like English and Arabic combined).

## View attributes

- [allowedDynamicRange](/documentation/swiftui/environmentvalues/alloweddynamicrange) The allowed dynamic range for the view, or nil.
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial) The material underneath the current view.
- [backgroundProminence](/documentation/swiftui/environmentvalues/backgroundprominence) The prominence of the background underneath views associated with this environment.
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle) An optional style that overrides the default system background style when set.
- [badgeProminence](/documentation/swiftui/environmentvalues/badgeprominence) The prominence to apply to badges associated with this environment.
- [contentTransition](/documentation/swiftui/environmentvalues/contenttransition) The current method of animating the contents of views.
- [contentTransitionAddsDrawingGroup](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup) A Boolean value that controls whether views that render content transitions use GPU-accelerated rendering.
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight) The default minimum height of a header in a list.
- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight) The default minimum height of rows in a list.
- [headerProminence](/documentation/swiftui/environmentvalues/headerprominence) The prominence to apply to section headers within a view.
- [physicalMetrics](/documentation/swiftui/environmentvalues/physicalmetrics) The physical metrics associated with a scene.
- [realityKitScene](/documentation/swiftui/environmentvalues/realitykitscene)
- [realityViewCameraControls](/documentation/swiftui/environmentvalues/realityviewcameracontrols) The camera controls for the reality view.
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons) The current redaction reasons applied to the view hierarchy.
- [springLoadingBehavior](/documentation/swiftui/environmentvalues/springloadingbehavior) The behavior of spring loaded interactions for the views associated with this environment.
- [symbolRenderingMode](/documentation/swiftui/environmentvalues/symbolrenderingmode) The current symbol rendering mode, or  denoting that the mode is picked automatically using the current image and foreground style as parameters.
- [symbolVariants](/documentation/swiftui/environmentvalues/symbolvariants) The symbol variant to use in this environment.
- [worldTrackingLimitations](/documentation/swiftui/environmentvalues/worldtrackinglimitations) The current limitations of the device tracking the user’s surroundings.

## Widgets

- [showsWidgetContainerBackground](/documentation/swiftui/environmentvalues/showswidgetcontainerbackground) An environment variable that indicates whether the background of a widget appears.
- [showsWidgetLabel](/documentation/swiftui/environmentvalues/showswidgetlabel) A Boolean value that indicates whether an accessory family widget can display an accessory label.
- [widgetFamily](/documentation/swiftui/environmentvalues/widgetfamily) The template of the widget — small, medium, or large.
- [widgetRenderingMode](/documentation/swiftui/environmentvalues/widgetrenderingmode) The widget’s rendering mode, based on where the system is displaying it.
- [widgetContentMargins](/documentation/swiftui/environmentvalues/widgetcontentmargins) A property that identifies the content margins of a widget.

## Deprecated environment values

- [disableAutocorrection](/documentation/swiftui/environmentvalues/disableautocorrection) A Boolean value that determines whether the view hierarchy has auto-correction enabled.
- [sizeCategory](/documentation/swiftui/environmentvalues/sizecategory) The size of content.
- [presentationMode](/documentation/swiftui/environmentvalues/presentationmode) A binding to the current presentation mode of the view associated with this environment.
- [PresentationMode](/documentation/swiftui/presentationmode) An indication whether a view is currently presented by another view.
- [complicationRenderingMode](/documentation/swiftui/environmentvalues/complicationrenderingmode) The complication rendering mode for the current environment.
- [controlActiveState](/documentation/swiftui/environmentvalues/controlactivestate) The active appearance expected of controls in a window.

## Instance Properties

- [accessibilityShowBorders](/documentation/swiftui/environmentvalues/accessibilityshowborders) Whether the system preference for Show Borders is enabled. On macOS this is true when Increased Contrast is enabled.
- [activityFamily](/documentation/swiftui/environmentvalues/activityfamily) The size family of the current Live Activity.
- [buttonSizing](/documentation/swiftui/environmentvalues/buttonsizing) The preferred sizing behavior of buttons in the view hierarchy.
- [credentialExportManager](/documentation/swiftui/environmentvalues/credentialexportmanager) This environment variable is for SwiftUI clients of the credential exchange API. An example usage might look like:
- [credentialImportManager](/documentation/swiftui/environmentvalues/credentialimportmanager) This environment variable is for SwiftUI clients of the credential exchange API. An example usage might look like:
- [devicePickerSupports](/documentation/swiftui/environmentvalues/devicepickersupports) Checks for support to present a DevicePicker.
- [findContext](/documentation/swiftui/environmentvalues/findcontext)
- [fontResolutionContext](/documentation/swiftui/environmentvalues/fontresolutioncontext) Information used to resolve a font.
- [imagePlaygroundAllowedGenerationStyles](/documentation/swiftui/environmentvalues/imageplaygroundallowedgenerationstyles)
- [imagePlaygroundPersonalizationPolicy](/documentation/swiftui/environmentvalues/imageplaygroundpersonalizationpolicy)
- [imagePlaygroundSelectedGenerationStyle](/documentation/swiftui/environmentvalues/imageplaygroundselectedgenerationstyle)
- [isActivityUpdateReduced](/documentation/swiftui/environmentvalues/isactivityupdatereduced) A Boolean value that indicates whether the Live Activity update synchronization rate is reduced.
- [isUserAuthenticationEnabled](/documentation/swiftui/environmentvalues/isuserauthenticationenabled) The current system user authentication enablement status.
- [labelIconToTitleSpacing](/documentation/swiftui/environmentvalues/labelicontotitlespacing) The spacing between the icon and title of a label.
- [labelReservedIconWidth](/documentation/swiftui/environmentvalues/labelreservediconwidth) The width reserved for icons in labels.
- [levelOfDetail](/documentation/swiftui/environmentvalues/levelofdetail) The level of detail the view is recommended to have.
- [lineHeight](/documentation/swiftui/environmentvalues/lineheight) The default line height for text influenced by this environment.
- [navigationLinkIndicatorVisibility](/documentation/swiftui/environmentvalues/navigationlinkindicatorvisibility) A value that says whether a built-in navigation link would show a disclosure indicator in the current context.
- [remoteDeviceIdentifier](/documentation/swiftui/environmentvalues/remotedeviceidentifier) An opaque object that identifies the device on which the scene (from which this value is accessed from) is being presented on.
- [requestAgeRange](/documentation/swiftui/environmentvalues/requestagerange) The property in the environment for adoption of the age range API.
- [supportedActivityFamilies](/documentation/swiftui/environmentvalues/supportedactivityfamilies) An environment value that that indicates potential rendered family for a Live Activity.
- [supportsImagePlayground](/documentation/swiftui/environmentvalues/supportsimageplayground) A Boolean value that indicates whether image generation is available on the current device.
- [supportsRemoteScenes](/documentation/swiftui/environmentvalues/supportsremotescenes) Indicates if the current device supports presenting a  on a remote device.
- [surfaceSnappingInfo](/documentation/swiftui/environmentvalues/surfacesnappinginfo) Provides information about the current snap state of the scene.
- [symbolColorRenderingMode](/documentation/swiftui/environmentvalues/symbolcolorrenderingmode) The property specifying how symbol images fill their layers, or nil to use the default fill style.
- [symbolVariableValueMode](/documentation/swiftui/environmentvalues/symbolvariablevaluemode) The current symbol variable value mode, or  denoting that the mode is picked automatically.
- [tabBarPlacement](/documentation/swiftui/environmentvalues/tabbarplacement) The current placement of the tab bar.
- [tabViewBottomAccessoryPlacement](/documentation/swiftui/environmentvalues/tabviewbottomaccessoryplacement) The current placement of the tab view bottom accessory.
- [windowClippingMargins](/documentation/swiftui/environmentvalues/windowclippingmargins)
- [writingToolsBehavior](/documentation/swiftui/environmentvalues/writingtoolsbehavior) The current Writing Tools behavior for text and text input.

## Accessing environment values

- [Environment](/documentation/swiftui/environment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
