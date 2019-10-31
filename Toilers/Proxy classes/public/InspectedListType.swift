//# xsc 19.1.5-b4e07e-20190905

import SAPOData
import Foundation

open class InspectedListType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var trackingID_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "TrackingID")

    private static var id_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "ID")

    private static var inspectorID_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "InspectorId")

    private static var name_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Name")

    private static var systemname_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Systemname")

    private static var make_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Make")

    private static var model_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Model")

    private static var partNumber_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "PartNumber")

    private static var serialNumber_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "SerialNumber")

    private static var barCode_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "BarCode")

    private static var compartment_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Compartment")

    private static var comments_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Comments")

    private static var priority_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Priority")

    private static var taskCompleted_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "TaskCompleted")

    private static var date_: Property = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Date")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: InspectproServiceMetadata.EntityTypes.inspectedListType)
    }

    open class func array(from: EntityValueList) -> Array<InspectedListType> {
        return ArrayConverter.convert(from.toArray(), Array<InspectedListType>())
    }

    open class var barCode: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.barCode_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.barCode_ = value
            }
        }
    }

    open var barCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.barCode))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.barCode, to: StringValue.of(optional: value))
        }
    }

    open class var comments: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.comments_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.comments_ = value
            }
        }
    }

    open var comments: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.comments))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.comments, to: StringValue.of(optional: value))
        }
    }

    open class var compartment: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.compartment_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.compartment_ = value
            }
        }
    }

    open var compartment: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.compartment))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.compartment, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> InspectedListType {
        return CastRequired<InspectedListType>.from(self.copyEntity())
    }

    open class var date: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.date_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.date_ = value
            }
        }
    }

    open var date: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: InspectedListType.date))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.date, to: value)
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.id_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.id_ = value
            }
        }
    }

    open var id: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.id))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.id, to: StringValue.of(optional: value))
        }
    }

    open class var inspectorID: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.inspectorID_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.inspectorID_ = value
            }
        }
    }

    open var inspectorID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.inspectorID))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.inspectorID, to: StringValue.of(optional: value))
        }
    }

    override open var isProxy: Bool {
        get {
            return true
        }
    }

    open class func key(trackingID: String?) -> EntityKey {
        return EntityKey().with(name: "TrackingID", value: StringValue.of(optional: trackingID))
    }

    open class var make: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.make_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.make_ = value
            }
        }
    }

    open var make: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.make))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.make, to: StringValue.of(optional: value))
        }
    }

    open class var model: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.model_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.model_ = value
            }
        }
    }

    open var model: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.model))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.model, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.name_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.name))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.name, to: StringValue.of(optional: value))
        }
    }

    open var old: InspectedListType {
        get {
            return CastRequired<InspectedListType>.from(self.oldEntity)
        }
    }

    open class var partNumber: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.partNumber_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.partNumber_ = value
            }
        }
    }

    open var partNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.partNumber))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.partNumber, to: StringValue.of(optional: value))
        }
    }

    open class var priority: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.priority_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.priority_ = value
            }
        }
    }

    open var priority: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.priority))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.priority, to: StringValue.of(optional: value))
        }
    }

    open class var serialNumber: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.serialNumber_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.serialNumber_ = value
            }
        }
    }

    open var serialNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.serialNumber))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.serialNumber, to: StringValue.of(optional: value))
        }
    }

    open class var systemname: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.systemname_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.systemname_ = value
            }
        }
    }

    open var systemname: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.systemname))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.systemname, to: StringValue.of(optional: value))
        }
    }

    open class var taskCompleted: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.taskCompleted_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.taskCompleted_ = value
            }
        }
    }

    open var taskCompleted: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.taskCompleted))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.taskCompleted, to: StringValue.of(optional: value))
        }
    }

    open class var trackingID: Property {
        get {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                return InspectedListType.trackingID_
            }
        }
        set(value) {
            objc_sync_enter(InspectedListType.self)
            defer { objc_sync_exit(InspectedListType.self); }
            do {
                InspectedListType.trackingID_ = value
            }
        }
    }

    open var trackingID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: InspectedListType.trackingID))
        }
        set(value) {
            self.setOptionalValue(for: InspectedListType.trackingID, to: StringValue.of(optional: value))
        }
    }
}
