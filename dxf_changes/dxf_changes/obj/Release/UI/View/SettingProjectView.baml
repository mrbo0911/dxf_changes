   M S B A M L   `   `   `  ����   CadExtractExcel0    *CadExtractExcel.UI.View.SettingProjectView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     
�������  � 	Resources     roundBtn15BackgroundLight �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius  smallBtn �� Padding��%0  &	        &	 �     �� " ��.���  � ��$	 170����  � ��$ 50����  � �� �� " ��.R��� 
�������$	��1.5q�$ 5��._��� $��Center=�$��Center=��� " ��.���  � �� �� " ��.R��� $ 5q�
�������
�������$��1q�$ 5��._��� $��Center=�$��Center=�.��� $��10q� � RowDefinitions �� �� $
��auto �.+��  � ColumnDefinitions �� �� .+��� $ 15,0,0,0q�
�������$��0q�$ 	10,0,0,10��._�]� $��0,0,15,0q�.+��� $	��Top=�	 �� Orientation$	 Vertical=�.+��� 
�������$��0,0,0,2q�._��� $��Center=�$��20(�$��DemiBold"�.��Project & Folder Setting�� .���� $��1��  ��%�   '��       ']� T     �� " ��.���  � ��$	 300����  � ��$ 30����  � ��$ Center=��� " ]�.���  � ��$	 0,4q�.+�]� .+��� $��	Xref tree��$��14(��� $��Center=�
�������$��1,0,0,1q�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *
XrefPhanLo+
 �� UpdateSourceTrigger$
 PropertyChanged=��� $��43,0,0,0q�$��Xref phân lô��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *XrefQH+$
 PropertyChanged=��� $��43,0,0,0q�$"��Xref thông số quy hoạch��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *XrefPK+$
 PropertyChanged=��� $��43,0,0,0q�$��Xref phân khu theo zone��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *XrefPiecesGroup+$
 PropertyChanged=��� $��43,0,0,0q�$��Xref tuyến theo zone��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *XrefTenLoDat+$
 PropertyChanged=��� $��43,0,0,0q�$$��Xref tên lô đất theo zone��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *	XrefSoNha+$
 PropertyChanged=��� $��43,0,0,0q�$��Xref số nhà theo zone��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *XrefLoaiNha+$
 PropertyChanged=��� $��43,0,0,0q�$ ��Xref loại nhà theo zone��$��14(�]� .+��� $��Right=�$��Right=�$	 
Horizontal=�.+��� $��0,0,7,0q�$��Center=�$��Center=�$��Xref tên lô�� d� 	IsChecked �� *HasXrefPieceName+�� $��Center=�$��Center=�$��Xref số nhà�� �� *HasXrefPieceNumber+]� .+��� $��Folder loại nhà ��$��14(��� $��Center=�
�������$��1,0,0,1q�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *FolderLoaiNha+$
 PropertyChanged=��� $��43,0,0,0q�$"��Folder loại nhà theo zone��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *FolderMauNha+$
 PropertyChanged=��� $��43,0,0,0q�$��Folder mẫu nhà��$��14(�]� .+��� $��Right=�$	 
Horizontal=�.+��� ���� *
FileMauNha+$
 PropertyChanged=��� $��43,0,0,0q�$��File loai nha theo Zone��$��14(�]� .+��� $��Folder export ��$��14(��� $��Center=�
�������$��1,0,0,1q�]� .+��� $��43,0,0,0q�$��Center=�$!��Folder export mặc định��$��14(�]� $��Right=�.+��� $��5,0,0,0q�$��Change��$��Right=�#��[ ���� *ChangeFolder+�� ���� *ExportFolder+$
 PropertyChanged=��� $��1��$ 	0,0,10,10q�
�������$��0q�$ 	0,10,10,0��._�]� .+��� 
�������$��0,0,0,2q�$	��Top=�._��� $��20(�$��DemiBold"�.��Layer setting]�  � IsSharedSizeScope .   ��%1   '��       �� " ��.���  � ��$ Center=�.+�� $��Stretch=�$	��Top=� �� $
��auto � z� SharedSizeGroup$	 gr1���� $
��Auto �$	 gr2���� .+��� $��0��$	��186��$	��185��$��0,0,1,0q�$��Center=�$��18(�.��
Nội dung�� $��1��$	��120��$��1,0,0,0q�$��Center=�$��18(�.��
CAD Object�� $��3��$	��185��$	��2,0q�$��Center=�$��18(�.��Layer/Attributes�� 
�������$
��Auto=�.����   ��%J   '��       �� " ��.���  � ��$ 0,0,0,1q���  � ��
 �����.+��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Đường bao Zone�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *	ZoneLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��	Tên Zone�� $��1��$��5q�.��Text�� $��3��$��5q����� *
ZoneName+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Đường bao PK�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *	PKLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��	Tên PK�� $��1��$��5q�.��MText�� $��3��$��5q����� *PKName+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Đường bao tuyến�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *PiecesGroupLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Tên Tuyến�� $��1��$��5q�.��MText�� $��3��$��5q����� *PiecesGroupName+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Ranh giới ô đất�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *	PlotLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Ranh giới lô đất�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *
PieceLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Tên lô đất�� $��1��$��5q�.��Text�� $��3��$��5q����� *	PieceName+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��)'Số nhà, xã phương, tên đường�� $��1��$��5q�.��Block�� $��3��$��5q����� *PieceNumber+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Tên mẫu nhà�� $��1��$��5q�.��Text�� $��3��$��5q����� *AparmentName+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Mũi tên chỉ hướng�� $��1��$��5q�.��Lead�� $��3��$��5q����� *DirectionLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Diện tích nhà nước�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *AreaStateLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Tên tầng pháp lý�� $��1��$��5q�.��MText�� $��3��$��5q����� *StateFloorNameLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Diện tích salekit�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *AreaSalekitLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Tên tầng salekit�� $��1��$��5q�.��MText�� $��3��$��5q����� *SalekitFloorName+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Diện tích phụ trợ�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *AreaSupportLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Diện tích thông tầng�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *AreaHoleOpenLayer+$
 PropertyChanged=��� ._��  �� $��* �$	 gr1���� $��* �$	 gr2���� .+��� $��5q�.��Diện tích lỗ mở thang�� $��1��$��5q�.��
Polyline�� $��3��$��5q����� *AreaHoleElevationLayer+$
 PropertyChanged=�]� $��1��$
��0,10q�.+��� $
��Left=�$	 
Horizontal=�.+��� $��Center=�#���   ���� *ImportSetting+.���� $	 
Horizontal=�.+��� $��25��$��../Resource/import.png���� $��Import setting��$��15(�$��DemiBold"��� $��10,0,0,0q�$��Center=�#���   ���� *ExportSetting+.���� $	 
Horizontal=�.+��� $��25��$��../Resource/export.png���� $��Export setting��$��15(�$��DemiBold"��� $��10,0,0,0q�$��Center=�#���   ���� *DeleteProject+.���� $	 
Horizontal=�.+��� $��25��$��../Resource/delete.png���� $��Delete Project��$��15(�$��DemiBold"��� $��10,0,0,0q�$��Center=�#���   ���� *	AddZone+����  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ WindowL�.���� $	 
Horizontal=�.+��� $��25��$��../Resource/create.png���� $��Create Zone��$��15(�$��DemiBold"��� $��10,0,0,0q�$��Center=�#���   ���� *
DeleteZone+����  �� $ FindAncestor=�$ WindowL�.���� $	 
Horizontal=�.+��� $��25��$��../Resource/delete.png���� $��Delete Zone��$��15(�$��DemiBold"��� $��36,0,0,0q�$��Right=�#��[  ���� *SaveSetting+����  �� $ FindAncestor=�$ WindowL�.���� $	 
Horizontal=�.+��� $��25��$��../Resource/save.png���� $��Save Setting��$��15(�$��DemiBold"�