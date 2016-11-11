using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Inżynierka
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        
        }
              

        

        


        //private void SetSelectedRecord()
        //{
        //    for (int i = 0; i < GridView1.Rows.Count; i++)
        //    {
        //        RadioButton rb = (RadioButton)GridView1.Rows[i].Cells[0]
        //                                        .FindControl("cbSelect");
        //        if (rb != null)
        //        {
        //            HiddenField hf = (HiddenField)GridView1.Rows[i]
        //                                .Cells[0].FindControl("HiddenField1");
        //            if (hf != null && ViewState["SelectedContact"] != null)
        //            {
        //                if (hf.Value.Equals(ViewState["SelectedContact"].ToString()))
        //                {
        //                    rb.Checked = true;
        //                    break;
        //                }
        //            }
        //        }
        //    }
        //}


        protected void Button1_Click(object sender, EventArgs e)
        {
            //foreach (GridViewRow row in Products.Rows)
            //{
          
            //    CheckBox cb = (CheckBox)row.FindControl("ProductSelector");
            //    if (cb != null && cb.Checked)
            //    {

            //        if (PreviousPage.Master != null)
            //        {
            //            ContentPlaceHolder cph = (ContentPlaceHolder)PreviousPage.Master.FindControl("MainContent");
            //            TextBox txtName = (TextBox)cph.FindControl("txtName");
            //            lblName.Text = txtName.Text;
            //        }


                    // Delete row! (Well, not really...)
                    //atLeastOneRowDeleted = true;
                    // First, get the ProductID for the selected row
                    //int productID =
                       // Convert.ToInt32(Products.DataKeys[row.RowIndex].Value);
                    // "Delete" the row
                    //DeleteResults.Text += string.Format(
                    //    "This would have deleted ProductID {0}<br />", productID);

            //string selectedValue = Request.Form["RadioButton"];
            //lblMsg.Text = "You choose : " + selectedValue;

            //string selectedValue = Request.Form["RowSelector"];
            //lblMsg.Text = selectedValue;


            //this.Response.Redirect("ProductsForSupplierDetails.aspx?PodanyTekst=" + this.lblMsg.Text);
           // this.Server.Transfer("ProductsForSupplierDetails.aspx"); 

            // creation of data table
            
            // Adding Dynamic Column to the datatable using the add range method
           // dtgetselectedRecords.Columns.AddRange(new DataColumn[7] { new DataColumn("Data", "MiastoWylotu", "MiastoPrzylotu", "Cena", "Linia", "GodzinaWylotu", "GodzinaPrzylotu") });
           
           

            
            
            
            DataTable dtgetselectedRecords = new DataTable();
            dtgetselectedRecords.Columns.AddRange(new DataColumn[] { 
                new DataColumn("Data"),
                new DataColumn("MiastoWylotu"),
                new DataColumn("MiastoPrzylotu"),
                new DataColumn("Cena"),
                new DataColumn("Linia"),
                new DataColumn("GodzinaWylotu"),
                new DataColumn("GodzinaPrzylotu"), });

                 foreach (GridViewRow gvrow in GridView1.Rows)
            {

                if (gvrow.RowType == DataControlRowType.DataRow)
                {
                    //Finding the Checkbox in the Gridview
                    RadioButton RowSelector = (gvrow.Cells[0].FindControl("RowSelector") as RadioButton);
                    // Checking which checkbox are selected
                    if (RowSelector.Checked)
                    {
                        // assigning the records to a string to the cells
                        string Data = gvrow.Cells[1].Text;
                       
                        

                       string MiastoWylotu = gvrow.Cells[2].Text;
                       
                        
                       string MiastoPrzylotu = gvrow.Cells[3].Text;
                       

                        string Cena = gvrow.Cells[4].Text;
                        
                        
                        string Linia = gvrow.Cells[5].Text;
                       
                        
                        string GodzinaWylotu = gvrow.Cells[6].Text;
                       
                        
                        string GodzinaPrzylotu = gvrow.Cells[7].Text;

                        dtgetselectedRecords.Rows.Add();
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["Data"] = (Data);
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["MiastoWylotu"] = (MiastoWylotu);
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["MiastoPrzylotu"] = (MiastoPrzylotu);
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["Cena"] = (Cena);
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["Linia"] = (Linia);
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["GodzinaWylotu"] = (GodzinaWylotu);
                        dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["GodzinaPrzylotu"] = (GodzinaPrzylotu);
                     
                        //dtgetselectedRecords.Rows.Add(MiastoPrzylotu);
                        //dtgetselectedRecords.Rows.Add(Cena);
                        //dtgetselectedRecords.Rows.Add(Linia);
                        //dtgetselectedRecords.Rows.Add(GodzinaWylotu);
                        //dtgetselectedRecords.Rows.Add(GodzinaPrzylotu);
                        dtgetselectedRecords.AcceptChanges();
                           }
                }

            }
            // Adding the Data table to Session for passing it to another page.


            Session.Add("dtgetselectedRecords", dtgetselectedRecords);
            Server.Transfer("~/ProductsForSupplierDetails.aspx");
 }

            //RadioButton RowSelector = (gvrow.Cells[0].FindControl("RowSelector") as RadioButton);
            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
                //if (RowSelector.Checked)
                //{
                //    dtgetselectedRecords = AddRow(GridView1.Rows[i], dtgetselectedRecords);
                //}
                //else
                //{
                //    RadioButton RowSelector = (RadioButton)GridView1.Rows[i]
                //                    .Cells[0].FindControl("RowSelector");


    //           

                    //if (RowSelector.Checked)
                    //{
                    //    dtgetselectedRecords = AddRow(GridView1.Rows[i], dtgetselectedRecords);
                    //}
                    //else
                    //{
                    //    dtgetselectedRecords = RemoveRow(GridView1.Rows[i], dtgetselectedRecords);
                    //}



                //}
        

    //        public DataTable AddRow(GridViewRow gvrow, DataTable dtgetselectedRecords)
    //        {
    //DataRow[] dr = dtgetselectedRecords.Select("Data = '" + gvrow.Cells[1].Text + "'");
    //if (dr.Length <= 0)
    //{
    //    dtgetselectedRecords.Rows.Add();
    //    //Data", "MiastoWylotu", "MiastoPrzylotu", "Cena", "Linia", "GodzinaWylotu", "GodzinaPrzylotu") });
           
    //    dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["Data"] = gvrow.Cells[1].Text;
    //   dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["MiastoWylotu"] = gvrow.Cells[2].Text;
    //    dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["MiastoPrzylotu"] = gvrow.Cells[3].Text;
    //    dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["Cena"] = gvrow.Cells[4].Text;
    //    dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["Linia"] = gvrow.Cells[5].Text;
    //    dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["GodzinaWylotu"] = gvrow.Cells[6].Text;
    //    dtgetselectedRecords.Rows[dtgetselectedRecords.Rows.Count - 1]["GodzinaPrzylotu"] = gvrow.Cells[7].Text;
    //    dtgetselectedRecords.AcceptChanges();
    //}
    //return dtgetselectedRecords;
    //          }




       
    //    public DataTable RemoveRow(GridViewRow gvrow, DataTable dtgetselectedRecords)
    //     {
    //DataRow[] dr = dtgetselectedRecords.Select("Data = '" + gvrow.Cells[1].Text + "'");
    //if (dr.Length > 0)
    //{
    //    dtgetselectedRecords.Rows.Remove(dr[0]);
    //    dtgetselectedRecords.AcceptChanges();
    //}
    //return dtgetselectedRecords;
    //      }
            
    //}
        
//}

            
       
    
// }


            

            //ViewState["SelectedRecords"] = dt;


         
           



                //}}



        protected void rbtnSelect_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton selectButton = (RadioButton)sender;
            GridViewRow row = (GridViewRow)selectButton.Parent.Parent;
            int a = row.RowIndex;
            foreach (GridViewRow rw in GridView1.Rows)
            {
                if (selectButton.Checked)
                {
                    if (rw.RowIndex != a)
                    {
                        RadioButton rd = rw.FindControl("RowSelector") as RadioButton;
                        rd.Checked = false;
                    }
                }
            }
        }



//   private int SuppliersSelectedIndex
//{
//    get
//    {
//        if (string.IsNullOrEmpty(Request.Form["SuppliersGroup"]))
//            return -1;
//        else
//            return Convert.ToInt32(Request.Form["SuppliersGroup"]);
//    }
//}

//protected void Suppliers_RowCreated(object sender, GridViewRowEventArgs e)
//{
//    if (e.Row.RowType == DataControlRowType.DataRow)
//    {
//        // Grab a reference to the Literal control
//        Literal output = (Literal)e.Row.FindControl("RadioButtonMarkup");
//        // Output the markup except for the "checked" attribute
//        output.Text = string.Format(
//            @"<input type="radio" name="SuppliersGroup" " +
//            @"id="RowSelector{0}" value="{0}"", e.Row.RowIndex);
//        // See if we need to add the "checked" attribute
//        if (SuppliersSelectedIndex == e.Row.RowIndex)
//            output.Text += @" checked="checked"";
//        // Add the closing tag
//        output.Text += " />";
//    }
//}

//protected void SendToProducts_Click(object sender, EventArgs e)
//{
//    // make sure one of the radio buttons has been selected
//    if (SuppliersSelectedIndex < 0)
//        ChooseSupplierMsg.Visible = true;
//    else
//    {
//        // Send the user to ~/Filtering/ProductsForSupplierDetails.aspx
//        int supplierID =
//            Convert.ToInt32(Suppliers.DataKeys[SuppliersSelectedIndex].Value);
//        Response.Redirect(
//            "~/Filtering/ProductsForSupplierDetails.aspx?SupplierID="
//            + supplierID);
//    }
//}




            }
        
      
    }
////}