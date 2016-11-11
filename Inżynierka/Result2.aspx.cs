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
    public partial class Result2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dtgetselectedRecords1 = new DataTable();
            dtgetselectedRecords1.Columns.AddRange(new DataColumn[] { 
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
                    RadioButton cbSelect = (gvrow.Cells[0].FindControl("cbSelect") as RadioButton);
                    // Checking which checkbox are selected
                    if (cbSelect.Checked)
                    {
                        // assigning the records to a string to the cells
                        string Data = gvrow.Cells[1].Text;



                        string MiastoWylotu = gvrow.Cells[2].Text;


                        string MiastoPrzylotu = gvrow.Cells[3].Text;


                        string Cena = gvrow.Cells[4].Text;


                        string Linia = gvrow.Cells[5].Text;


                        string GodzinaWylotu = gvrow.Cells[6].Text;


                        string GodzinaPrzylotu = gvrow.Cells[7].Text;

                        dtgetselectedRecords1.Rows.Add();
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["Data"] = (Data);
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["MiastoWylotu"] = (MiastoWylotu);
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["MiastoPrzylotu"] = (MiastoPrzylotu);
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["Cena"] = (Cena);
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["Linia"] = (Linia);
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["GodzinaWylotu"] = (GodzinaWylotu);
                        dtgetselectedRecords1.Rows[dtgetselectedRecords1.Rows.Count - 1]["GodzinaPrzylotu"] = (GodzinaPrzylotu);

                        //dtgetselectedRecords1.Rows.Add(MiastoPrzylotu);
                        //dtgetselectedRecords1.Rows.Add(Cena);
                        //dtgetselectedRecords1.Rows.Add(Linia);
                        //dtgetselectedRecords1.Rows.Add(GodzinaWylotu);
                        //dtgetselectedRecords1.Rows.Add(GodzinaPrzylotu);
                        dtgetselectedRecords1.AcceptChanges();
                    }
                }

            }
            




            DataTable dtgetselectedRecords2 = new DataTable();
            dtgetselectedRecords2.Columns.AddRange(new DataColumn[] { 
                new DataColumn("Data"),
                new DataColumn("MiastoWylotu"),
                new DataColumn("MiastoPrzylotu"),
                new DataColumn("Cena"),
                new DataColumn("Linia"),
                new DataColumn("GodzinaWylotu"),
                new DataColumn("GodzinaPrzylotu"), });

            foreach (GridViewRow gvrow2 in GridView2.Rows)
            {

                if (gvrow2.RowType == DataControlRowType.DataRow)
                {
                    //Finding the Checkbox in the Gridview
                    RadioButton cbSelect1 = (gvrow2.Cells[0].FindControl("cbSelect1") as RadioButton);
                    // Checking which checkbox are selected
                    if (cbSelect1.Checked)
                    {
                        // assigning the records to a string to the cells
                        string Data = gvrow2.Cells[1].Text;



                        string MiastoWylotu = gvrow2.Cells[2].Text;


                        string MiastoPrzylotu = gvrow2.Cells[3].Text;


                        string Cena = gvrow2.Cells[4].Text;


                        string Linia = gvrow2.Cells[5].Text;


                        string GodzinaWylotu = gvrow2.Cells[6].Text;


                        string GodzinaPrzylotu = gvrow2.Cells[7].Text;

                        dtgetselectedRecords2.Rows.Add();
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["Data"] = (Data);
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["MiastoWylotu"] = (MiastoWylotu);
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["MiastoPrzylotu"] = (MiastoPrzylotu);
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["Cena"] = (Cena);
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["Linia"] = (Linia);
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["GodzinaWylotu"] = (GodzinaWylotu);
                        dtgetselectedRecords2.Rows[dtgetselectedRecords2.Rows.Count - 1]["GodzinaPrzylotu"] = (GodzinaPrzylotu);

                        //dtgetselectedRecords2.Rows.Add(MiastoPrzylotu);
                        //dtgetselectedRecords2.Rows.Add(Cena);
                        //dtgetselectedRecords2.Rows.Add(Linia);
                        //dtgetselectedRecords2.Rows.Add(GodzinaWylotu);
                        //dtgetselectedRecords2.Rows.Add(GodzinaPrzylotu);
                        dtgetselectedRecords2.AcceptChanges();
                    }
                }

            }

            Session.Add("dtgetselectedRecords1", dtgetselectedRecords1);
            Session.Add("dtgetselectedRecords2", dtgetselectedRecords2);
            Server.Transfer("~/ProductsForSupplierDetails2.aspx");
            
            Server.Transfer("~/ProductsForSupplierDetails2.aspx");
        }

        //protected void rbtnSelect_CheckedChanged(object sender, EventArgs e)
        //{
        //    RadioButton selectButton = (RadioButton)sender;
        //    GridViewRow row = (GridViewRow)selectButton.Parent.Parent;
        //    int a = row.RowIndex;
        //    foreach (GridViewRow rw in GridView1.Rows)
        //    {
        //        if (selectButton.Checked)
        //        {
        //            if (rw.RowIndex != a)
        //            {
        //                RadioButton rd = rw.FindControl("RowSelector") as RadioButton;
        //                rd.Checked = false;
        //            }
        //        }
        //    }
        //}

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
                        RadioButton rd = rw.FindControl("cbSelect") as RadioButton;
                        rd.Checked = false;
                    }
                }
            }
        }

        protected void rbtnSelect_CheckedChanged1(object sender, EventArgs e)
        {
            RadioButton selectButton = (RadioButton)sender;
            GridViewRow row = (GridViewRow)selectButton.Parent.Parent;
            int a = row.RowIndex;
            foreach (GridViewRow rw in GridView2.Rows)
            {
                if (selectButton.Checked)
                {
                    if (rw.RowIndex != a)
                    {
                        RadioButton rd = rw.FindControl("cbSelect1") as RadioButton;
                        rd.Checked = false;
                    }
                }
            }
        }

        
    }
}