   M S B A M L   `   `   `  ����   CadExtractExcel/    )CadExtractExcel.UI.View.SettingExportView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � 	Resources   �� 
TargetType �� Property �� Value   roundBtn15BackgroundLight �� 
TargetType �� CornerRadius  roundBtn15BackgroundLightt  round15 �� BasedOn��%�  '��       &	  '     &	 �     &	 Q    7   �� " ��.���  � ��$ Center=��� " ��.���  � �� �� " ��.R�]� .+��� 
�������
�������$	��1.5q�$ 15��._��� $��Center=�$��Center=��� " ��.���  � ��$	 170����  � ��$ 50����  � �� �� " ��.R��� 
�������
�������$	��1.5q�$ 5��._��� $��Center=�$��Center=��� 8   " ��.���  � ��
 �����.��� $��10q� � RowDefinitions �� �� $
��auto �.+���  �� Padding$ 10q�
�������$ 10��._�� 	 � ColumnDefinitions	 �� �� .+�]� $��0��.+��� $	��Top=�$��20(�.��	Scan Data�� 
�������$��1q�$	��Top=�]� .+��� $	��Top=�
 �� Orientation$
 
Horizontal=�  ��%G   '��       �� " ��.���  � ��$ 75����  � ��$ Center=�.+��� -    ��Name$ total��$	��150��$��4q�$�� ���� -   $ numOfPieces��$��
Lô đất���� -   $ lk��$��Liền kề���� -   $ sl��$��
Song lập���� -   $ dl��$��Đơn lập���� -   $ sh��$��
Shop house���� 
�������$	��Top=�$
 
Horizontal=�  ��%1   '��       �� " ��.���  � ��$ Center=�.+��� $
��Left=�$��TotalSum������  �� ElementName$ total�� �� Path$ ActualWidth��� ���� $ numOfPieces��$ ActualWidth����� *TotalPieces+�� ���� $ lk��$ ActualWidth����� *	TotalLK+�� ���� $ sl��$ ActualWidth����� *	TotalSL+�� ���� $ dl��$ ActualWidth����� *	TotalDL+�� ���� $ sh��$ ActualWidth����� *	TotalSH+�� ��.  ���� *	PKItems+���� " ��.���  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  � ��$ Stretch=����� .R��� $��Stretch=�.+��� $��Stretch=�
�������$
 
Horizontal=�  ��%1   '��       �� " ��.���  � ��$ Center=�.+��� $
��Left=����� $ total��$ ActualWidth����� *Name+�� ���� $ numOfPieces��$ ActualWidth����� *NumberOfPieces+�� ���� $ lk��$ ActualWidth����� *
NumberOfLK+�� ���� $ sl��$ ActualWidth����� *
NumberOfSL+�� ���� $ dl��$ ActualWidth����� *
NumberOfDL+�� ���� $ sh��$ ActualWidth����� *
NumberOfSH+�� $��0q�{�.  ���� *Plots+���� " ��.���  � ��$ 0q���  � ��$ 0q���  � ��$ 0q����� .R��� $
 
Horizontal=�  ��%1   '��       �� " ��.���  � ��$ Center=�.+��� $
��Left=����� $ total��$ ActualWidth����� *Name+�� ���� $ numOfPieces��$ ActualWidth����� *NumberOfPieces+�� ���� $ lk��$ ActualWidth����� *
NumberOfLK+�� ���� $ sl��$ ActualWidth����� *
NumberOfSL+�� ���� $ dl��$ ActualWidth����� *
NumberOfDL+�� ���� $ sh��$ ActualWidth����� *
NumberOfSH+]� $��1��.+�]� $	��Top=�.+��� $��2,0,0,0q�
�������$��1q�$��Bottom=��� $��30��$��30��$��Bottom=�$��Right=����� *AddSet+.��New�� $��20(�.��Export Excel Setting�� $	��Top=�$
 
Horizontal=�.+��� $��Description: ������ $ numOfPieces��$ ActualHeight��� $��28��$	��200��$��Center=�$��Center=�$��12(����� *Description+ �� UpdateSourceTrigger$ PropertyChanged=��� ��.  ���� *Items+���� " ��.���  � ��$ Stretch=���  � ��$ Stretch=���  � ��
 �������  � ��$ 0,0,0,1q����� .R�]� .+�� $	��Top=�  ��%K   '��       �� " ��.���  � ��$ Center=���  � ��$ Center=�	 �� �� �� �� .+��� $��0��$	��300��$	��300������ *Set.SetName+$ PropertyChanged=��� $��3��$��20��$��20��$��Center=����� $ DataContext.RemoveSet� �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ ListViewL����� ���� .R��� 
�������$��0q�._��� $��20��$��../Resource/delete.png���� $��30��$��30��$��Right=�$	��Top=�$��+��$��Right=�#��[ ���� $ Set.AddPlot��� 
�������
�������$��0q����� $ Set.PlotsName����� .R�� ���� * (FrameworkElement.ActualWidth)+ �� $ ScrollContentPresenterL����� *	ItemWidth+ �� *Self+ � 
ItemHeight �� *(ListView.View).ItemHeight+ �� $ ListViewL� � 	ItemWidth �� *(ListView.View).ItemWidth+ �� $ ListViewL�  ��%�   '��       �� " ��.���  � ��
 �  ����  � �� �� " ��.R��� 
�������
�������$��1q�$ 3��._��� $��Center=�$��Center=����� .R�]� .+��� $��Center=�
�������
�������$��1q�$ 3,0,0,3��._�]� .+��� $��70��$��15,0,0,0q����� �� $��15,0,0,0q��� $��20��$��20��$��	-10,0,0,0q�$��Center=�$��Center=�$	��−������  �� $ FindAncestor=�$ ListViewL�$  DataContext.Set.RemoveItem����� ]� $��1��$��12,10q�$��24(�.+��� $��36,0,0,0q�$��Right=�#���  ���� *
BtnOkClick+����  �� $ FindAncestor=�$ WindowL�.���� $
 
Horizontal=�.+��� $��25��$��../Resource/export.png���� $��Export��$��15(�$��DemiBold"�