//# xsc 19.1.5-b4e07e-20190905

import SAPOData
import Foundation

internal class InspectproServiceMetadataText {
    internal static let xml: String = "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?><edmx:Edmx Version=\"1.0\" xmlns:edmx=\"http://schemas.microsoft.com/ado/2007/06/edmx\"><edmx:DataServices xmlns:m=\"http://schemas.microsoft.com/ado/2007/08/dataservices/metadata\" m:DataServiceVersion=\"2.0\"><Schema Namespace=\"inspectpro.InspectproService\" xmlns:d=\"http://schemas.microsoft.com/ado/2007/08/dataservices\" xmlns:m=\"http://schemas.microsoft.com/ado/2007/08/dataservices/metadata\" xmlns=\"http://schemas.microsoft.com/ado/2008/09/edm\"><EntityType Name=\"SupervisorType\"><Key><PropertyRef Name=\"ID\" /></Key><Property Name=\"ID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"Name\" Type=\"Edm.String\" MaxLength=\"32\" /><Property Name=\"Address\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"Password\" Type=\"Edm.String\" MaxLength=\"30\" /><Property Name=\"PhoneNumber\" Type=\"Edm.String\" MaxLength=\"30\" /></EntityType><EntityType Name=\"InspectorType\"><Key><PropertyRef Name=\"ID\" /></Key><Property Name=\"ID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"Name\" Type=\"Edm.String\" MaxLength=\"32\" /><Property Name=\"Address\" Type=\"Edm.String\" MaxLength=\"256\" /><Property Name=\"Password\" Type=\"Edm.String\" MaxLength=\"30\" /><Property Name=\"PhoneNumber\" Type=\"Edm.String\" MaxLength=\"30\" /></EntityType><EntityType Name=\"AllComponentsType\"><Key><PropertyRef Name=\"ID\" /></Key><Property Name=\"ID\" Type=\"Edm.String\" Nullable=\"false\" MaxLength=\"36\" /><Property Name=\"Name\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"SystemName\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"Make\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"Model\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"PartNumber\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"SerialNumber\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"BarCode\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"Compartment\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"Condition\" Type=\"Edm.String\" MaxLength=\"100\" /><Property Name=\"Photo\" Type=\"Edm.String\" MaxLength=\"100\" /></EntityType><EntityContainer Name=\"InspectproService\" m:IsDefaultEntityContainer=\"true\"><EntitySet Name=\"Supervisor\" EntityType=\"inspectpro.InspectproService.SupervisorType\" /><EntitySet Name=\"Inspector\" EntityType=\"inspectpro.InspectproService.InspectorType\" /><EntitySet Name=\"AllComponents\" EntityType=\"inspectpro.InspectproService.AllComponentsType\" /></EntityContainer></Schema></edmx:DataServices></edmx:Edmx>\n"
}
