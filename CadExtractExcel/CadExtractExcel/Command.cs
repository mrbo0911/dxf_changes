using Autodesk.AutoCAD.DatabaseServices;
using Autodesk.AutoCAD.Runtime;
using System.Windows;

namespace CadExtractExcel
{
    public class Command
    {
        [CommandMethod("EC")]
        public void Extract()
        {
            try
            {
                string dxfPath = @"D:\Projects\Freelancer\Jose Miguel Soto\RenameLayer\Documentation\UPWORK FOLDER\UPWork\Example 1_1683655303\SG_fresno-bruma+particle_board+fresno-bruma_16.0\pt-4-1.01-Right End.dxf";
                string dxfPath1 = @"D:\Projects\Freelancer\Jose Miguel Soto\RenameLayer\Documentation\UPWORK FOLDER\UPWork\Example 1_1683655303\SG_fresno-bruma+particle_board+fresno-bruma_16.0\1.dxf";
                string dxfLog = @"D:\Projects\Freelancer\Jose Miguel Soto\RenameLayer\Documentation\UPWORK FOLDER\UPWork\Example 1_1683655303\SG_fresno-bruma+particle_board+fresno-bruma_16.0\1.log";

                using (Database db = new Database(false, true))
                {
                    db.DxfIn(dxfPath, dxfLog);

                    using (Transaction tr = db.TransactionManager.StartTransaction())
                    {
                        // Open the Layer table for write
                        LayerTable lt = tr.GetObject(db.LayerTableId, OpenMode.ForWrite) as LayerTable;

                        // Get the LayerTableRecord for the layer to be modified
                        if (lt.Has("Label"))
                        {
                            LayerTableRecord ltr = tr.GetObject(lt["Label"], OpenMode.ForWrite) as LayerTableRecord;

                            // Change the layer name
                            ltr.Name = "FVH";
                        }

                        // Commit the transaction
                        tr.Commit();
                    }
                    db.DxfOut(dxfPath1, 0, true);
                    db.CloseInput(true);
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }
    }
}