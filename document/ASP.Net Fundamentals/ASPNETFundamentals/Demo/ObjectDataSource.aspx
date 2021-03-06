﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjectDataSource.aspx.cs" Inherits="ASPNetFundamentals.Demo.ObjectDataSource" %>

<!DOCTYPE html>

<script runat="server">

  void EmployeesDetailsView_ItemInserted(Object sender, DetailsViewInsertedEventArgs e)
  {
    EmployeesGridView.DataBind();  
  }


  void EmployeesDetailsView_ItemUpdated(Object sender, DetailsViewUpdatedEventArgs e)
  {
    EmployeesGridView.DataBind();
  }


  void EmployeesDetailsView_ItemDeleted(Object sender, DetailsViewDeletedEventArgs e)
  {
    EmployeesGridView.DataBind();
  }

  void EmployeesGridView_OnSelectedIndexChanged(object sender, EventArgs e)
  {
    EmployeeDetailsObjectDataSource.SelectParameters["EmployeeID"].DefaultValue = 
      EmployeesGridView.SelectedDataKey.Value.ToString();
    EmployeesDetailsView.DataBind();
  }

  void EmployeeDetailsObjectDataSource_OnInserted(object sender, ObjectDataSourceStatusEventArgs e)
  {
    EmployeeDetailsObjectDataSource.SelectParameters["EmployeeID"].DefaultValue = 
      e.ReturnValue.ToString();
    EmployeesDetailsView.DataBind();
  }

  void EmployeeDetailsObjectDataSource_OnUpdated(object sender, ObjectDataSourceStatusEventArgs e)
  {
    if ((int)e.ReturnValue == 0)
      Msg.Text = "Employee was not updated. Please try again.";
  }

  void EmployeeDetailsObjectDataSource_OnDeleted(object sender, ObjectDataSourceStatusEventArgs e)
  {
    if ((int)e.ReturnValue == 0)
      Msg.Text = "Employee was not deleted. Please try again.";
  }

  void Page_Load()
  {
    Msg.Text = "";
  }

</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>ObjectDataSource Example</title>
</head>
<body>
    <form id="form1" runat="server">

      <h3>ObjectDataSource Example</h3>
      <asp:Label id="Msg" runat="server" ForeColor="Red" />

      <asp:ObjectDataSource 
        ID="EmployeesObjectDataSource" 
        runat="server" 
        TypeName="ASPNetFundamentals.Demo.NorthwindData" 
        SortParameterName="SortColumns"
        EnablePaging="true"
        SelectCountMethod="SelectCount"
        StartRowIndexParameterName="StartRecord"
        MaximumRowsParameterName="MaxRecords" 
        SelectMethod="GetAllEmployees" >
      </asp:ObjectDataSource>


      <asp:ObjectDataSource 
        ID="EmployeeDetailsObjectDataSource" 
        runat="server" 
        TypeName="ASPNetFundamentals.Demo.NorthwindData" 
        ConflictDetection="CompareAllValues"
        OldValuesParameterFormatString="original_{0}"
        SelectMethod="GetEmployee"
        InsertMethod="InsertEmployee"
        UpdateMethod="UpdateEmployee"
        DeleteMethod="DeleteEmployee"
        OnInserted="EmployeeDetailsObjectDataSource_OnInserted"
        OnUpdated="EmployeeDetailsObjectDataSource_OnUpdated"
        OnDeleted="EmployeeDetailsObjectDataSource_OnDeleted">
        <SelectParameters>
          <asp:Parameter Name="EmployeeID" Type="Int32" />  
        </SelectParameters>
      </asp:ObjectDataSource>


      <table cellspacing="10">
        <tr>
          <td valign="top">
            <asp:GridView ID="EmployeesGridView" 
              DataSourceID="EmployeesObjectDataSource" 
              AutoGenerateColumns="false"
              AllowSorting="true"
              AllowPaging="true"
              PageSize="5"
              DataKeyNames="EmployeeID" 
              OnSelectedIndexChanged="EmployeesGridView_OnSelectedIndexChanged"
              RunAt="server">

              <HeaderStyle backcolor="Orange" forecolor="black"/>

              <Columns>                
                <asp:ButtonField Text="Details..."
                                 HeaderText="Show Details"
                                 CommandName="Select"/>  

                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="FirstName"  HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName"   HeaderText="Last Name" SortExpression="LastName, FirstName" />                    
              </Columns>                
            </asp:GridView>            
          </td>
          <td valign="top">                
            <asp:DetailsView ID="EmployeesDetailsView"
              DataSourceID="EmployeeDetailsObjectDataSource"
              AutoGenerateRows="false"
              EmptyDataText="No records."      
              DataKeyNames="EmployeeID"     
              Gridlines="Both" 
              AutoGenerateInsertButton="true"
              AutoGenerateEditButton="true"
              AutoGenerateDeleteButton="true"
              OnItemInserted="EmployeesDetailsView_ItemInserted"
              OnItemUpdated="EmployeesDetailsView_ItemUpdated"
              OnItemDeleted="EmployeesDetailsView_ItemDeleted" 
              RunAt="server">

              <HeaderStyle backcolor="Navy" forecolor="White"/>

              <RowStyle backcolor="White"/>

              <AlternatingRowStyle backcolor="LightGray"/>

              <EditRowStyle backcolor="LightCyan"/>

              <Fields>                  
                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" InsertVisible="False" ReadOnly="true"/>                    
                <asp:BoundField DataField="FirstName"  HeaderText="First Name"/>
                <asp:BoundField DataField="LastName"   HeaderText="Last Name"/>                    
                <asp:BoundField DataField="Address"    HeaderText="Address"/>                    
                <asp:BoundField DataField="City"       HeaderText="City"/>                        
                <asp:BoundField DataField="Region"     HeaderText="Region"/>
                <asp:BoundField DataField="PostalCode" HeaderText="Postal Code"/>                    
              </Fields>                    
            </asp:DetailsView>
          </td>                
        </tr>            
      </table>
    </form>
  </body>
</html>
