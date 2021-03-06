<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_LeaveCard.ascx.vb" Inherits="LC_LeaveCard" %>
    <script type="text/javascript">
    	function showLeaveCard(context) {
    		showProcessingMPV();
    		//PageMethods.ShowLeaveCard(context, ShowLeaveCard);
    		Sys.Net.WebServiceProxy.invoke('../../App_Services/_atnWebServices.asmx', 'ShowLeaveCard', false, { context: context }, ShowLeaveCard, ShowError);
    		return false;
    	}
    	function ShowLeaveCard(result) {
    		hideProcessingMPV();
    		backgroundColor('silver');
    		dynamicMessage(result);
    		showMessageMPV(result);
    	}
    	function ShowError(error) {
    		hideProcessingMPV();
    		backgroundColor('black');
    		dynamicMessage('<b>SERVER ERROR:</b> ' + error.get_message());
    		showMessageMPV();
    	}
    </script>
    
    <asp:Label ID="CTL_LeaveCard" runat="server" ToolTip="Click to view Leave card." onclick="showLeaveCard('');return false;" style="border:solid 1pt #940303;padding:6px; border-radius:8px; background-color:#e20101; color:white; cursor:pointer;font-weight:bold;font-size:14px;" Text="LEAVE CARD"></asp:Label>
