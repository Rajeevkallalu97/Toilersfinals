//# xsc 19.1.5-b4e07e-20190905

import Foundation
import SAPOData

open class AllComponentsType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "ID")

    private static var name_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Name")

    private static var systemName_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "SystemName")

    private static var make_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Make")

    private static var model_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Model")

    private static var partNumber_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "PartNumber")

    private static var serialNumber_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "SerialNumber")

    private static var barCode_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "BarCode")

    private static var compartment_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Compartment")

    private static var condition_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Condition")

    private static var photo_: Property = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Photo")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: InspectproServiceMetadata.EntityTypes.allComponentsType)
    }

    open class func array(from: EntityValueList) -> Array<AllComponentsType> {
        return ArrayConverter.convert(from.toArray(), Array<AllComponentsType>())
    }

    open class var barCode: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.barCode_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.barCode_ = value
            }
        }
    }

    open var barCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.barCode))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.barCode, to: StringValue.of(optional: value))
        }
    }

    open class var compartment: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.compartment_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.compartment_ = value
            }
        }
    }

    open var compartment: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.compartment))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.compartment, to: StringValue.of(optional: value))
        }
    }

    open class var condition: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.condition_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.condition_ = value
            }
        }
    }

    open var condition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.condition))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.condition, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AllComponentsType {
        return CastRequired<AllComponentsType>.from(self.copyEntity())
    }

    open class var id: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.id_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.id))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.id, to: StringValue.of(optional: value))
        }
    }

    override open var isProxy: Bool {
        get {
            return true
        }
    }

    open class func key(id: String?) -> EntityKey {
        return EntityKey().with(name: "ID", value: StringValue.of(optional: id))
    }

    open class var make: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.make_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.make_ = value
            }
        }
    }

    open var make: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.make))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.make, to: StringValue.of(optional: value))
        }
    }

    open class var model: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.model_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.model_ = value
            }
        }
    }

    open var model: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.model))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.model, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.name_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.name))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.name, to: StringValue.of(optional: value))
        }
    }

    open var old: AllComponentsType {
        get {
            return CastRequired<AllComponentsType>.from(self.oldEntity)
        }
    }

    open class var partNumber: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.partNumber_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.partNumber_ = value
            }
        }
    }

    open var partNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.partNumber))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.partNumber, to: StringValue.of(optional: value))
        }
    }

    open class var photo: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.photo_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.photo_ = value
            }
        }
    }

    open var photo: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.photo))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.photo, to: StringValue.of(optional: value))
        }
    }

    open class var serialNumber: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.serialNumber_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.serialNumber_ = value
            }
        }
    }

    open var serialNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.serialNumber))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.serialNumber, to: StringValue.of(optional: value))
        }
    }

    open class var systemName: Property {
        get {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                return AllComponentsType.systemName_
            }
        }
        set(value) {
            objc_sync_enter(AllComponentsType.self)
            defer { objc_sync_exit(AllComponentsType.self); }
            do {
                AllComponentsType.systemName_ = value
            }
        }
    }

    open var systemName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllComponentsType.systemName))
        }
        set(value) {
            self.setOptionalValue(for: AllComponentsType.systemName, to: StringValue.of(optional: value))
        }
    }
}
