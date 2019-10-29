//# xsc 19.1.5-b4e07e-20190905

import SAPOData
import Foundation

open class AllocatedListType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "ID")

    private static var name_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Name")

    private static var systemName_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "SystemName")

    private static var make_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Make")

    private static var model_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Model")

    private static var partNumber_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "PartNumber")

    private static var serialNumber_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "SerialNumber")

    private static var barCode_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "BarCode")

    private static var compartment_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Compartment")

    private static var condition_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Condition")

    private static var photo_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Photo")

    private static var date_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Date")

    private static var inspectorID_: Property = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "InspectorId")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: InspectproServiceMetadata.EntityTypes.allocatedListType)
    }

    open class func array(from: EntityValueList) -> Array<AllocatedListType> {
        return ArrayConverter.convert(from.toArray(), Array<AllocatedListType>())
    }

    open class var barCode: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.barCode_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.barCode_ = value
            }
        }
    }

    open var barCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.barCode))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.barCode, to: StringValue.of(optional: value))
        }
    }

    open class var compartment: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.compartment_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.compartment_ = value
            }
        }
    }

    open var compartment: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.compartment))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.compartment, to: StringValue.of(optional: value))
        }
    }

    open class var condition: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.condition_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.condition_ = value
            }
        }
    }

    open var condition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.condition))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.condition, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AllocatedListType {
        return CastRequired<AllocatedListType>.from(self.copyEntity())
    }

    open class var date: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.date_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.date_ = value
            }
        }
    }

    open var date: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AllocatedListType.date))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.date, to: value)
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.id_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.id))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.id, to: StringValue.of(optional: value))
        }
    }

    open class var inspectorID: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.inspectorID_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.inspectorID_ = value
            }
        }
    }

    open var inspectorID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.inspectorID))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.inspectorID, to: StringValue.of(optional: value))
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
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.make_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.make_ = value
            }
        }
    }

    open var make: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.make))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.make, to: StringValue.of(optional: value))
        }
    }

    open class var model: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.model_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.model_ = value
            }
        }
    }

    open var model: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.model))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.model, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.name_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.name))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.name, to: StringValue.of(optional: value))
        }
    }

    open var old: AllocatedListType {
        get {
            return CastRequired<AllocatedListType>.from(self.oldEntity)
        }
    }

    open class var partNumber: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.partNumber_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.partNumber_ = value
            }
        }
    }

    open var partNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.partNumber))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.partNumber, to: StringValue.of(optional: value))
        }
    }

    open class var photo: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.photo_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.photo_ = value
            }
        }
    }

    open var photo: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.photo))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.photo, to: StringValue.of(optional: value))
        }
    }

    open class var serialNumber: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.serialNumber_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.serialNumber_ = value
            }
        }
    }

    open var serialNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.serialNumber))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.serialNumber, to: StringValue.of(optional: value))
        }
    }

    open class var systemName: Property {
        get {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                return AllocatedListType.systemName_
            }
        }
        set(value) {
            objc_sync_enter(AllocatedListType.self)
            defer { objc_sync_exit(AllocatedListType.self); }
            do {
                AllocatedListType.systemName_ = value
            }
        }
    }

    open var systemName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AllocatedListType.systemName))
        }
        set(value) {
            self.setOptionalValue(for: AllocatedListType.systemName, to: StringValue.of(optional: value))
        }
    }
}
