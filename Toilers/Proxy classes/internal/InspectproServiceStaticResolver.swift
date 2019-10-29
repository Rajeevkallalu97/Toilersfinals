//# xsc 19.1.5-b4e07e-20190905

import Foundation
import SAPOData

internal class InspectproServiceStaticResolver {
    static func resolve() -> Void {
        InspectproServiceStaticResolver.resolve1()
    }

    private static func resolve1() -> Void {
        Ignore.valueOf_any(InspectproServiceMetadata.EntityTypes.allComponentsType)
        Ignore.valueOf_any(InspectproServiceMetadata.EntityTypes.allocatedListType)
        Ignore.valueOf_any(InspectproServiceMetadata.EntityTypes.inspectorType)
        Ignore.valueOf_any(InspectproServiceMetadata.EntityTypes.supervisorType)
        Ignore.valueOf_any(InspectproServiceMetadata.EntitySets.allComponents)
        Ignore.valueOf_any(InspectproServiceMetadata.EntitySets.allocatedList)
        Ignore.valueOf_any(InspectproServiceMetadata.EntitySets.inspector)
        Ignore.valueOf_any(InspectproServiceMetadata.EntitySets.supervisor)
        Ignore.valueOf_any(AllComponentsType.id)
        Ignore.valueOf_any(AllComponentsType.name)
        Ignore.valueOf_any(AllComponentsType.systemName)
        Ignore.valueOf_any(AllComponentsType.make)
        Ignore.valueOf_any(AllComponentsType.model)
        Ignore.valueOf_any(AllComponentsType.partNumber)
        Ignore.valueOf_any(AllComponentsType.serialNumber)
        Ignore.valueOf_any(AllComponentsType.barCode)
        Ignore.valueOf_any(AllComponentsType.compartment)
        Ignore.valueOf_any(AllComponentsType.condition)
        Ignore.valueOf_any(AllComponentsType.photo)
        Ignore.valueOf_any(AllocatedListType.id)
        Ignore.valueOf_any(AllocatedListType.name)
        Ignore.valueOf_any(AllocatedListType.systemName)
        Ignore.valueOf_any(AllocatedListType.make)
        Ignore.valueOf_any(AllocatedListType.model)
        Ignore.valueOf_any(AllocatedListType.partNumber)
        Ignore.valueOf_any(AllocatedListType.serialNumber)
        Ignore.valueOf_any(AllocatedListType.barCode)
        Ignore.valueOf_any(AllocatedListType.compartment)
        Ignore.valueOf_any(AllocatedListType.condition)
        Ignore.valueOf_any(AllocatedListType.photo)
        Ignore.valueOf_any(AllocatedListType.date)
        Ignore.valueOf_any(AllocatedListType.inspectorID)
        Ignore.valueOf_any(InspectorType.id)
        Ignore.valueOf_any(InspectorType.name)
        Ignore.valueOf_any(InspectorType.address)
        Ignore.valueOf_any(InspectorType.password)
        Ignore.valueOf_any(InspectorType.phoneNumber)
        Ignore.valueOf_any(SupervisorType.id)
        Ignore.valueOf_any(SupervisorType.name)
        Ignore.valueOf_any(SupervisorType.address)
        Ignore.valueOf_any(SupervisorType.password)
        Ignore.valueOf_any(SupervisorType.phoneNumber)
    }
}
