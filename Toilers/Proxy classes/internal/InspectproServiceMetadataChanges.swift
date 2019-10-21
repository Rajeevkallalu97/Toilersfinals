//# xsc 19.1.5-b4e07e-20190905

import SAPOData
import Foundation

internal class InspectproServiceMetadataChanges {
    static func merge(metadata: CSDLDocument) -> Void {
        metadata.hasGeneratedProxies = true
        InspectproServiceMetadata.document = metadata
        InspectproServiceMetadataChanges.merge1(metadata: metadata)
        try! InspectproServiceFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) -> Void {
        Ignore.valueOf_any(metadata)
        if !InspectproServiceMetadata.EntityTypes.allComponentsType.isRemoved {
            InspectproServiceMetadata.EntityTypes.allComponentsType = metadata.entityType(withName: "inspectpro.InspectproService.AllComponentsType")
        }
        if !InspectproServiceMetadata.EntityTypes.inspectorType.isRemoved {
            InspectproServiceMetadata.EntityTypes.inspectorType = metadata.entityType(withName: "inspectpro.InspectproService.InspectorType")
        }
        if !InspectproServiceMetadata.EntityTypes.supervisorType.isRemoved {
            InspectproServiceMetadata.EntityTypes.supervisorType = metadata.entityType(withName: "inspectpro.InspectproService.SupervisorType")
        }
        if !InspectproServiceMetadata.EntitySets.allComponents.isRemoved {
            InspectproServiceMetadata.EntitySets.allComponents = metadata.entitySet(withName: "AllComponents")
        }
        if !InspectproServiceMetadata.EntitySets.inspector.isRemoved {
            InspectproServiceMetadata.EntitySets.inspector = metadata.entitySet(withName: "Inspector")
        }
        if !InspectproServiceMetadata.EntitySets.supervisor.isRemoved {
            InspectproServiceMetadata.EntitySets.supervisor = metadata.entitySet(withName: "Supervisor")
        }
        if !AllComponentsType.id.isRemoved {
            AllComponentsType.id = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "ID")
        }
        if !AllComponentsType.name.isRemoved {
            AllComponentsType.name = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Name")
        }
        if !AllComponentsType.systemName.isRemoved {
            AllComponentsType.systemName = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "SystemName")
        }
        if !AllComponentsType.make.isRemoved {
            AllComponentsType.make = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Make")
        }
        if !AllComponentsType.model.isRemoved {
            AllComponentsType.model = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Model")
        }
        if !AllComponentsType.partNumber.isRemoved {
            AllComponentsType.partNumber = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "PartNumber")
        }
        if !AllComponentsType.serialNumber.isRemoved {
            AllComponentsType.serialNumber = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "SerialNumber")
        }
        if !AllComponentsType.barCode.isRemoved {
            AllComponentsType.barCode = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "BarCode")
        }
        if !AllComponentsType.compartment.isRemoved {
            AllComponentsType.compartment = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Compartment")
        }
        if !AllComponentsType.condition.isRemoved {
            AllComponentsType.condition = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Condition")
        }
        if !AllComponentsType.photo.isRemoved {
            AllComponentsType.photo = InspectproServiceMetadata.EntityTypes.allComponentsType.property(withName: "Photo")
        }
        if !InspectorType.id.isRemoved {
            InspectorType.id = InspectproServiceMetadata.EntityTypes.inspectorType.property(withName: "ID")
        }
        if !InspectorType.name.isRemoved {
            InspectorType.name = InspectproServiceMetadata.EntityTypes.inspectorType.property(withName: "Name")
        }
        if !InspectorType.address.isRemoved {
            InspectorType.address = InspectproServiceMetadata.EntityTypes.inspectorType.property(withName: "Address")
        }
        if !InspectorType.password.isRemoved {
            InspectorType.password = InspectproServiceMetadata.EntityTypes.inspectorType.property(withName: "Password")
        }
        if !InspectorType.phoneNumber.isRemoved {
            InspectorType.phoneNumber = InspectproServiceMetadata.EntityTypes.inspectorType.property(withName: "PhoneNumber")
        }
        if !SupervisorType.id.isRemoved {
            SupervisorType.id = InspectproServiceMetadata.EntityTypes.supervisorType.property(withName: "ID")
        }
        if !SupervisorType.name.isRemoved {
            SupervisorType.name = InspectproServiceMetadata.EntityTypes.supervisorType.property(withName: "Name")
        }
        if !SupervisorType.address.isRemoved {
            SupervisorType.address = InspectproServiceMetadata.EntityTypes.supervisorType.property(withName: "Address")
        }
        if !SupervisorType.password.isRemoved {
            SupervisorType.password = InspectproServiceMetadata.EntityTypes.supervisorType.property(withName: "Password")
        }
        if !SupervisorType.phoneNumber.isRemoved {
            SupervisorType.phoneNumber = InspectproServiceMetadata.EntityTypes.supervisorType.property(withName: "PhoneNumber")
        }
    }
}
