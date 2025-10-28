//
//  SwiftUIVisitors.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation
import SwiftSyntax

// MARK: - SwiftUI Helper Functions

// Helper functions for SwiftUI parsing (not extensions due to Swift limitations)
// These can be called from the main ProjectDataBuilderVisitor class

/// Detects if a syntax node represents a SwiftUI view
/// - Parameter node: The syntax node to analyze
/// - Returns: The corresponding PrototypeLayerKind if detected, nil otherwise
func detectSwiftUIView(_ node: SyntaxProtocol) -> PrototypeLayerKind? {
    guard let functionCall = node.as(FunctionCallExprSyntax.self) else {
        return nil
    }

    if let declRef = functionCall.calledExpression.as(DeclReferenceExprSyntax.self) {
        switch declRef.baseName.text {
        case "Rectangle":
            return .rectangle
        case "Ellipse":
            return .ellipse
        default:
            return nil
        }
    }

    return nil
}

/// Detects if a syntax node represents a SwiftUI view modifier
/// - Parameter node: The syntax node to analyze
/// - Returns: The corresponding PrototypeLayerInputKind if detected, nil otherwise
func detectViewModifier(_ node: SyntaxProtocol) -> PrototypeLayerInputKind? {
    if let memberAccess = node.as(MemberAccessExprSyntax.self) {
        return viewModifierKind(from: memberAccess.declName.baseName.text)
    }

    if let functionCall = node.as(FunctionCallExprSyntax.self),
       let calledExpression = functionCall.calledExpression.as(MemberAccessExprSyntax.self) {
        return viewModifierKind(from: calledExpression.declName.baseName.text)
    }

    return nil
}

/// Creates a PrototypeLayer for a SwiftUI view
/// - Parameters:
///   - nodeId: The UUID for the layer node
///   - layerKind: The kind of SwiftUI view
/// - Returns: A PrototypeLayer instance
func createPrototypeLayer(
    nodeId: UUID,
    layerKind: PrototypeLayerKind,
    modifiers: [PrototypeLayerModifier] = []
) -> PrototypeLayer {
    return PrototypeLayer(
        nodeId: nodeId,
        layer: layerKind,
        modifiers: modifiers
    )
}

/// Creates a DAGLayerInputNode for a view modifier
/// - Parameters:
///   - layerInput: The kind of view modifier
///   - input: The node input for the modifier
/// - Returns: A DAGNodeType for the layer input
func createLayerInputNode(layerInput: PrototypeLayerInputKind, input: NodeInput) -> DAGNodeType {
    return DAGNodeBuilder.createLayerInputNode(layerInput: layerInput, input: input)
}

/// Creates a prototype layer modifier with captured metadata
/// - Parameters:
///   - kind: The modifier kind
///   - argumentDescription: Optional string representation of the arguments
///   - numericPayloads: Optional numeric payloads extracted from the arguments
/// - Returns: A PrototypeLayerModifier instance
func createPrototypeLayerModifier(
    kind: PrototypeLayerInputKind,
    argumentDescription: String? = nil,
    numericPayloads: [Double] = [],
    typedPayload: DAGValue? = nil
) -> PrototypeLayerModifier {
    PrototypeLayerModifier(
        kind: kind,
        argumentDescription: argumentDescription,
        numericPayloads: numericPayloads,
        typedPayload: typedPayload
    )
}

/// Appends a modifier to the provided layer while preserving value semantics
/// - Parameters:
///   - modifier: The modifier to append
///   - layer: The layer that should receive the modifier
/// - Returns: A new PrototypeLayer that includes the modifier
func layer(_ layer: PrototypeLayer, appending modifier: PrototypeLayerModifier) -> PrototypeLayer {
    var updatedLayer = layer
    updatedLayer.modifiers.append(modifier)
    return updatedLayer
}

/// Extracts argument metadata for a view modifier call
/// - Parameter arguments: The argument list from a modifier invocation
/// - Returns: A tuple containing the string description and numeric payloads (if any)
func modifierArgumentMetadata(
    from arguments: LabeledExprListSyntax
) -> (argumentDescription: String?, numericPayloads: [Double]) {
    guard let firstArgument = arguments.first else {
        return (nil, [])
    }

    let expression = firstArgument.expression
    let description = expression.trimmedDescription

    if let literal = expression.as(FloatLiteralExprSyntax.self),
       let value = Double(literal.literal.text) {
        return (description, [value])
    }

    if let literal = expression.as(IntegerLiteralExprSyntax.self),
       let value = Double(literal.literal.text) {
        return (description, [value])
    }

    return (description, [])
}

private func viewModifierKind(from name: String) -> PrototypeLayerInputKind? {
    switch name {
    case "opacity":
        return .opacity
    case "scaleEffect":
        return .scaleEffect
    case "fill":
        return .fill
    default:
        return nil
    }
}

// MARK: - Future SwiftUI Integration

// These helper functions can be called from visitor methods in SwiftSyntaxVisitor.swift:
// - Call detectSwiftUIView() from visit(_ node: FunctionCallExprSyntax)
// - Call detectViewModifier() from visit(_ node: MemberAccessExprSyntax)
// - Create PrototypeLayer instances for views
// - Create DAGLayerInputNode instances for view modifiers
// - Link view modifiers to their parent views
