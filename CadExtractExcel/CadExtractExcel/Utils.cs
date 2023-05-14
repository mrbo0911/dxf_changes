using Autodesk.AutoCAD.ApplicationServices;
using Autodesk.AutoCAD.DatabaseServices;
using Microsoft.WindowsAPICodePack.Shell.Interop;
using System.IO;
using System.Windows;
using Application = Autodesk.AutoCAD.ApplicationServices.Application;

namespace CadExtractExcel
{
    public static class Utils
    {
        public static void ListLayers(Document doc)
        {
            Database db = doc.Database;

            // Start a transaction
            using (Transaction trans = db.TransactionManager.StartTransaction())
            {
                // Open the Layer table for read
                LayerTable lt = trans.GetObject(db.LayerTableId, OpenMode.ForRead) as LayerTable;

                // Iterate over the layer table and list the layer names
                foreach (ObjectId id in lt)
                {
                    LayerTableRecord ltr = trans.GetObject(id, OpenMode.ForRead) as LayerTableRecord;

                    MessageBox.Show("Layer name: " + ltr.Name);
                    //doc.Editor.WriteMessage("Layer name: " + ltr.Name);
                    //doc.Editor.WriteMessage("\n");
                }

                // Commit the transaction
                trans.Commit();
            }
        }

        public static void ChangeLayerName(Document doc, string newLayerName)
        {
            Database db = doc.Database;

            using (DocumentLock docLock = doc.LockDocument())
            {
                // Start a transaction
                using (Transaction trans = db.TransactionManager.StartTransaction())
                {
                    // Open the Layer table for write
                    LayerTable lt = trans.GetObject(db.LayerTableId, OpenMode.ForWrite) as LayerTable;

                    // Get the LayerTableRecord for the layer to be modified
                    if (lt.Has("Label"))
                    {
                        LayerTableRecord ltr = trans.GetObject(lt["Label"], OpenMode.ForWrite) as LayerTableRecord;

                        // Change the layer name
                        ltr.Name = newLayerName;
                    }

                    // Commit the transaction
                    trans.Commit();
                }
            }

        }

        public static Document LoadDrawing(string dxfPath)
        {
            // Create a variable for the DocumentsCollection
            DocumentCollection acDocMgr = Application.DocumentManager;
            Document doc = DocumentCollectionExtension.Open(acDocMgr, dxfPath, false);
            
            return doc;
        }
    }
}
