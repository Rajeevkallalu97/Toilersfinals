//# xsc 19.1.5-b4e07e-20190905

import SAPOData
import Foundation

public class InspectproServiceMetadata {
    private static var document_: CSDLDocument = InspectproServiceMetadata.resolve()

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(InspectproServiceMetadata.self)
            defer { objc_sync_exit(InspectproServiceMetadata.self); }
            do {
                return InspectproServiceMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.self)
            defer { objc_sync_exit(InspectproServiceMetadata.self); }
            do {
                InspectproServiceMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! InspectproServiceFactory.registerAll()
        InspectproServiceMetadataParser.parsed.hasGeneratedProxies = true
        return InspectproServiceMetadataParser.parsed
    }

    public class EntityTypes {
        private static var allComponentsType_: EntityType = InspectproServiceMetadataParser.parsed.entityType(withName: "inspectpro.InspectproService.AllComponentsType")

        private static var allocatedListType_: EntityType = InspectproServiceMetadataParser.parsed.entityType(withName: "inspectpro.InspectproService.AllocatedListType")

        private static var inspectedListType_: EntityType = InspectproServiceMetadataParser.parsed.entityType(withName: "inspectpro.InspectproService.InspectedListType")

        private static var inspectorType_: EntityType = InspectproServiceMetadataParser.parsed.entityType(withName: "inspectpro.InspectproService.InspectorType")

        private static var supervisorType_: EntityType = InspectproServiceMetadataParser.parsed.entityType(withName: "inspectpro.InspectproService.SupervisorType")

        public static var allComponentsType: EntityType {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
                do {
                    return InspectproServiceMetadata.EntityTypes.allComponentsType_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
            do {
                InspectproServiceMetadata.EntityTypes.allComponentsType_ = value
            }
        }
        }

        public static var allocatedListType: EntityType {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
                do {
                    return InspectproServiceMetadata.EntityTypes.allocatedListType_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
            do {
                InspectproServiceMetadata.EntityTypes.allocatedListType_ = value
            }
        }
        }

        public static var inspectedListType: EntityType {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
                do {
                    return InspectproServiceMetadata.EntityTypes.inspectedListType_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
            do {
                InspectproServiceMetadata.EntityTypes.inspectedListType_ = value
            }
        }
        }

        public static var inspectorType: EntityType {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
                do {
                    return InspectproServiceMetadata.EntityTypes.inspectorType_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
            do {
                InspectproServiceMetadata.EntityTypes.inspectorType_ = value
            }
        }
        }

        public static var supervisorType: EntityType {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
                do {
                    return InspectproServiceMetadata.EntityTypes.supervisorType_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntityTypes.self); }
            do {
                InspectproServiceMetadata.EntityTypes.supervisorType_ = value
            }
        }
        }
    }

    public class EntitySets {
        private static var allComponents_: EntitySet = InspectproServiceMetadataParser.parsed.entitySet(withName: "AllComponents")

        private static var allocatedList_: EntitySet = InspectproServiceMetadataParser.parsed.entitySet(withName: "AllocatedList")

        private static var inspectedList_: EntitySet = InspectproServiceMetadataParser.parsed.entitySet(withName: "InspectedList")

        private static var inspector_: EntitySet = InspectproServiceMetadataParser.parsed.entitySet(withName: "Inspector")

        private static var supervisor_: EntitySet = InspectproServiceMetadataParser.parsed.entitySet(withName: "Supervisor")

        public static var allComponents: EntitySet {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
                do {
                    return InspectproServiceMetadata.EntitySets.allComponents_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
            do {
                InspectproServiceMetadata.EntitySets.allComponents_ = value
            }
        }
        }

        public static var allocatedList: EntitySet {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
                do {
                    return InspectproServiceMetadata.EntitySets.allocatedList_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
            do {
                InspectproServiceMetadata.EntitySets.allocatedList_ = value
            }
        }
        }

        public static var inspectedList: EntitySet {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
                do {
                    return InspectproServiceMetadata.EntitySets.inspectedList_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
            do {
                InspectproServiceMetadata.EntitySets.inspectedList_ = value
            }
        }
        }

        public static var inspector: EntitySet {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
                do {
                    return InspectproServiceMetadata.EntitySets.inspector_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
            do {
                InspectproServiceMetadata.EntitySets.inspector_ = value
            }
        }
        }

        public static var supervisor: EntitySet {
            get {
                objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
                do {
                    return InspectproServiceMetadata.EntitySets.supervisor_
                }
            }
        set(value) {
            objc_sync_enter(InspectproServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(InspectproServiceMetadata.EntitySets.self); }
            do {
                InspectproServiceMetadata.EntitySets.supervisor_ = value
            }
        }
        }
    }
}
