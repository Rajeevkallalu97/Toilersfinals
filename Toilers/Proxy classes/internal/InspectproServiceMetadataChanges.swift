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
        if !InspectproServiceMetadata.EntityTypes.allocatedListType.isRemoved {
            InspectproServiceMetadata.EntityTypes.allocatedListType = metadata.entityType(withName: "inspectpro.InspectproService.AllocatedListType")
        }
        if !InspectproServiceMetadata.EntityTypes.inspectedListType.isRemoved {
            InspectproServiceMetadata.EntityTypes.inspectedListType = metadata.entityType(withName: "inspectpro.InspectproService.InspectedListType")
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
        if !InspectproServiceMetadata.EntitySets.allocatedList.isRemoved {
            InspectproServiceMetadata.EntitySets.allocatedList = metadata.entitySet(withName: "AllocatedList")
        }
        if !InspectproServiceMetadata.EntitySets.inspectedList.isRemoved {
            InspectproServiceMetadata.EntitySets.inspectedList = metadata.entitySet(withName: "InspectedList")
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
        if !AllocatedListType.trackingID.isRemoved {
            AllocatedListType.trackingID = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "TrackingID")
        }
        if !AllocatedListType.id.isRemoved {
            AllocatedListType.id = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "ID")
        }
        if !AllocatedListType.inspectorID.isRemoved {
            AllocatedListType.inspectorID = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "InspectorId")
        }
        if !AllocatedListType.name.isRemoved {
            AllocatedListType.name = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Name")
        }
        if !AllocatedListType.systemname.isRemoved {
            AllocatedListType.systemname = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Systemname")
        }
        if !AllocatedListType.make.isRemoved {
            AllocatedListType.make = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Make")
        }
        if !AllocatedListType.model.isRemoved {
            AllocatedListType.model = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Model")
        }
        if !AllocatedListType.partNumber.isRemoved {
            AllocatedListType.partNumber = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "PartNumber")
        }
        if !AllocatedListType.serialNumber.isRemoved {
            AllocatedListType.serialNumber = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "SerialNumber")
        }
        if !AllocatedListType.barCode.isRemoved {
            AllocatedListType.barCode = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "BarCode")
        }
        if !AllocatedListType.compartment.isRemoved {
            AllocatedListType.compartment = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Compartment")
        }
        if !AllocatedListType.condition.isRemoved {
            AllocatedListType.condition = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Condition")
        }
        if !AllocatedListType.photo.isRemoved {
            AllocatedListType.photo = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Photo")
        }
        if !AllocatedListType.date.isRemoved {
            AllocatedListType.date = InspectproServiceMetadata.EntityTypes.allocatedListType.property(withName: "Date")
        }
        if !InspectedListType.trackingID.isRemoved {
            InspectedListType.trackingID = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "TrackingID")
        }
        if !InspectedListType.id.isRemoved {
            InspectedListType.id = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "ID")
        }
        if !InspectedListType.inspectorID.isRemoved {
            InspectedListType.inspectorID = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "InspectorId")
        }
        if !InspectedListType.name.isRemoved {
            InspectedListType.name = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Name")
        }
        if !InspectedListType.systemname.isRemoved {
            InspectedListType.systemname = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Systemname")
        }
        if !InspectedListType.make.isRemoved {
            InspectedListType.make = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Make")
        }
        if !InspectedListType.model.isRemoved {
            InspectedListType.model = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Model")
        }
        if !InspectedListType.partNumber.isRemoved {
            InspectedListType.partNumber = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "PartNumber")
        }
        if !InspectedListType.serialNumber.isRemoved {
            InspectedListType.serialNumber = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "SerialNumber")
        }
        if !InspectedListType.barCode.isRemoved {
            InspectedListType.barCode = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "BarCode")
        }
        if !InspectedListType.compartment.isRemoved {
            InspectedListType.compartment = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Compartment")
        }
        if !InspectedListType.comments.isRemoved {
            InspectedListType.comments = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Comments")
        }
        if !InspectedListType.priority.isRemoved {
            InspectedListType.priority = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Priority")
        }
        if !InspectedListType.taskCompleted.isRemoved {
            InspectedListType.taskCompleted = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "TaskCompleted")
        }
        if !InspectedListType.date.isRemoved {
            InspectedListType.date = InspectproServiceMetadata.EntityTypes.inspectedListType.property(withName: "Date")
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
