using CadExtractExcel.Data;
using CadExtractExcel.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            SeedDataToDatabase();
        }

        public static void SeedDataToDatabase()
        {
            var dataContext = new ApplicationData();
            var projectt = dataContext.Project.FirstOrDefault();
            if (projectt != null) {
                return;
            }

            var project = new Project {
                Name = "Deffault"
            };
            project.XrefSetting = new XrefSetting {
                XrefPhanLo = "Xr_G_Phan lo",
                XrefQH = "Xr_G_Thong so QH",
                XrefPK = "Xr_Key_{Zone}_PK",
                XrefTenLoDat = "Xr_G_Ten Lo Dat_{Zone}",
                XrefSoNha = "Xr_G_So Nha_{Zone}",
                XrefLoaiNha = "Xr_{Zone}_{Loại nhà}",

                FolderLoaiNha = "Xref_{Zone}",
                FolderMauNha = "XR_Mau nha",
                FileMauNha = "XR_{Tên mẫu nhà}_{chú thích}",
            };

            project.LayerSetting = new LayerSetting {
                ZoneLayer = "PK-RANH GIOI ZONE",
                ZoneName = "PK-TEN ZONE",
                PKLayer = "PK-DUONG BAO PHAN KHU",
                PKName = "PK-TEN PHAN KHU",
                PlotLayer = "OD-RANH GIOI O DAT",
                PieceLayer = "LD-RANH GIOI LO DAT",
                PieceName = "LD-TEN LO DAT",
                PieceNumber = "SN-SO NHA",
                AparmentName = "MN-TEN MAU NHA",
                DirectionLayer = "HN-MUI TEN CHI HUONG NHA",
                AreaStateLayer = "DT-DIEN TICH XAY DUNG CUA TANG",
                StateFloorNameLayer = "DT-TEN TANG PHAP LY",
                AreaSalekitLayer = "DT-DIEN TICH BAN HANG",
                SalekitFloorName = "DT-TEN TANG SALEKIT",
                AreaSupportLayer = "DT-PHU TRO",
                AreaHoleLayer = "DT-THONG TANG",
            };
            dataContext.Project.Add(project);
            dataContext.SaveChanges();
        }
    }
}