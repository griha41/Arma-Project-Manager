   M S B A M L   `   `   `  ���� O  KArma Project Manager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Arma_Project_ManagerArma_Project_Manager  G(clr-namespace:Arma_Project_Manager.ModelArma_Project_Manager.Model      Arma_Project_Manager.App   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     4local"clr-namespace:Arma_Project_Manager     :Model(clr-namespace:Arma_Project_Manager.Model       �� 	Resources     SettingsIconIdle �� ImageSource j� Stretch �� BitmapScalingMode �� EdgeMode  SettingsIconActive  SettingsCloseIconIdle  SettingsCloseIconActive  CreateNewProjectIconIdle  RefreshIconIdle  RefreshIconActive  CreateNewProjectIconActive  ImportProjectIconIdle 	 ImportProjectIconActive 
 DeleteProjectIconIdle  DeleteProjectIconActive  CPPIcon  
CreateIcon  
DeleteIcon  	EventIcon  FileIcon  
FolderIcon  HPPIcon  	OtherIcon  PBOIcon  
RenameIcon  SQFIcon  ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border  SettingsButton �� 
TargetType �� Property �� Value	 �� 
TargetType
 �� CornerRadius �� Triggers P� Property P� Value  CreateNewProjectButton  RefreshButton  ImportProjectButton  DeleteProjectButton  SettingsCloseButton   TitleBarBtn �� Padding �� Triggers �� 
Background �� Bullet ��Name F�Name �� Stretch �� StrokeEndLineCap �� StrokeStartLineCap �� 
TargetName ! RoundedProgressBar �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime  O� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame! $� KeyTime" $� Value# ��Name$ �� RadiusX% �� RadiusY& �� Angle " ComboBoxToggleButton' � ColumnDefinitions # ComboBoxTextBox( �� 	ClickMode) d� 	IsChecked* �� Path+ �� Mode, �� RelativeSource- J� IsHitTestVisible. �� SelectionBoxItem/ �� SelectionBoxItemTemplate0 ��Name1 �� 
IsReadOnly2 �� 
IsReadOnly3 �� IsDropDownOpen4 � AllowsTransparency5 J� SnapsToDevicePixels6 � ActualWidth7 �� MaxDropDownHeight8 K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation9   DirectionalNavigation: P� 
SourceName; �� DataType2  ,Arma_Project_Manager.Model.BaseDirectoryItem< �� ItemsSource= ��Name> � ToolTip? � ContextMenu@ m� Icon5  /Arma_Project_Manager.Model.MissionDirectoryItem1	  +Arma_Project_Manager.Model.PBODirectoryItem.
  (Arma_Project_Manager.Model.DirectoryItem)  #Arma_Project_Manager.Model.FileItem��%�%  &	        &	 [     &	 �     &	     &	 r    &	 �    &	 /    &	 �    &	 �    &		 P    &	
 �    &	     &	 t    &	 �    &	 �    &	 �    &	 $    &	 O    &	 |    &	 �    &	 �    &	 �    &	 %    &	 O    &	 d    &	 y    &	 �    7   7  &	 S    7  7  &	     7  7  &	 �    7  7 	 &	 �	    7 
 7  &	 a
    7  7  &	      '�� >    &	! �    7  7  7  &	" [    &	# �    '�� �    7 " 7 # '��     (�� �    *, +)7  (�� �    *, +)7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  (�� 9    *,	 +)7  7  7  7  7  7  7  7  (�� �     *,
 +)7  7  7  7  7  7  7  7  (�� e"    *, +)7  7  �� $! Images/SettingsIconIdle.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $# Images/SettingsIconActive.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $" Images/SettingsCloseIdle.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $$ Images/SettingsCloseActive.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $) #Images/CreateNewProjectIconIdle.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $  Images/RefreshIconIdle.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $" Images/RefreshIconActive.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $+ %Images/CreateNewProjectIconActive.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $&  Images/ImportProjectIconIdle.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $( "Images/ImportProjectIconActive.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $&  Images/DeleteProjectIconIdle.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $( "Images/DeleteProjectIconActive.png��$ UniformToFill=�$ HighQuality=�$ Aliased=��� $$��Images/ContextMenu/CPPIcon.png���� $'��!Images/ContextMenu/CreateIcon.png���� $'��!Images/ContextMenu/DeleteIcon.png���� $&�� Images/ContextMenu/EventIcon.png���� $%��Images/ContextMenu/FileIcon.png���� $'��!Images/ContextMenu/FolderIcon.png���� $$��Images/ContextMenu/HPPIcon.png���� $"��Images/ContextMenu/Other.png���� $$��Images/ContextMenu/PBOIcon.png���� $'��!Images/ContextMenu/RenameIcon.png���� $$��Images/ContextMenu/SQFIcon.png���� $ 	#FF06B025���� $ 	#FFE6E6E6���� $ 	#FFBCBCBC���� " ��.���  � ��8   ��  � �� �� "	 ��.R��� #��z��
������ $��1q�$
 0,0,5,0��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��8  �� " ��.���  � ��8   ��  � �� �� "	 ��.R��� #��z��
������ $��1q�$
 0,0,0,0��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��8  �� " ��.���  � ��8   ��  � �� �� "	 ��.R��� #��z��
������ $��1q�$
 0,0,0,5��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��8  �� " ��.���  � ��8   ��  � �� �� "	 ��.R��� #��z��
������ $��1q�$
 0��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��8  �� " ��.���  � ��8   ��  � �� �� "	 ��.R��� #��z��
������ $��1q�$
 0,0,0,0��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  � ��8  �� " ��.���  � ��8   ��  � �� �� "	 ��.R��� #��z��
������ $��1q�$
 0,0,0,0�� P�  �@J�IsMouseOver . . ���  � ��8  �� " ��.���  �@�OverridesDefaultStyle . ��  �@�Cursor$
 Hand����  �@��CornerRadius$ 0����  � �� �� "	 ��.R��� $��border��$��0q�$
 0��$ 0q�
���   �#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver . . ���  �@J�Opacity$	 0.5Q��� " ��.���  �@J�SnapsToDevicePixels .  ��  �@�OverridesDefaultStyle . ��  �@�FocusVisualStyle Z� ��  � ��
 �������  � �� �� "	 ��.R��� 
 ����  �� $ Border��$��30��$��30��#��z��
�������$��1q�$
 4,4,4,4��}�.  ._�F� $ 	CheckMark��$��16��$��16��$��Center=�$��Center=�F������- ��[ Ӏ� �� ��- ��[ ��[ `*� �@KL @]�  z ��-  � 	$ UniformToFill=����	#FF00BDF5$ Round=�$ Round=�$��2��._��� $��4,0,0,0q�$
��Left=�$��Center=���.  P�  �@d�	IsChecked$ falseY�. ��� $ 	CheckMark�� � y�$ 	Collapsed=�P�  �@d�	IsChecked$
 trueY�. ���  � ��
 �����P�  �@J�	IsFocused . . ���  � ��
 �����P�  � {� .  . ���  � ��
 ������� $ 	CheckMark�� � ��
 ������� " �.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � �� �� "	 �.R�� $ TemplateRoot��   CommonStates��.   Determinate��  Indeterminate��. �� $ Forever��.��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 	Animation��.\�  $ 0��$
  0.25Q�  $ 0:0:1��$
  0.25Q�  $ 0:0:2��$
  0.25Q�*� $' !(UIElement.RenderTransformOrigin)�$ 	Animation��.'�  $! 0��$" -0.5,0.5&�  $! 0:0:1��$" 0.5,0.5&�  $! 0:0:2��$" 1.5,0.5&�.+��� #��z��#��z��#��z��$
 4���� $# 
PART_Track��� $ PART_Indicator��}�. $
��Left=�.+��� $# 	Indicator��#��z��$$ 5��$% 5���� $# 	Animation��#��z��$$ 5��$% 5�� P�  �@�Orientation$ Vertical=�. ��� $ TemplateRoot�� �@�LayoutTransform �� $	& -90Q�P�  �@�IsIndeterminate . . ��� $ 	Indicator�� � y�$ 	Collapsed=��� "	 d�.R�� ' �� �� $��20 �.+��� $ Border��$��2��$
 0�����	#FF00BDF5���	#FF00BDF5$��1q��� $��0��$
 0��$��1q�
�������
�������$��0,0,1,0q�F� $ Arrow��$��1��
�������$��Center=�$��Center=�=����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	�� "	 ��.R��� $ PART_ContentHost��|�.  
��������� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  � ��$	 120����  � ��$ 20����  � �� �	#FF6D7A86��  � �� �� "	 ��.R�� .+�d� $��ToggleButton��8��  $��2��|�.  $( Press=�) �� $* IsDropDownOpen�$+ TwoWay=�, �� *TemplatedParent+�� $��ContentSite��- .  #��z. #��z/ #��z��$��3,3,23,3q�$��Center=�$
��Left=��� $0 PART_EditableTextBox��8�� $
��Left=�$��Center=�$��3,3,23,3q�|�. 
����������#1a97c1$y�Hidden=�#2 z1 ��Z� � $��Popup��$��Bottom=�#��z3 4 . |�.  $��Slide=�.��� $��DropDown��5 . #��z6 #��z7 .+��� $ DropDownBorder��
�������$��2q����#1a97c1�� $��4,6,4,6q�5 . .���� 8 . $9 	Contained=� P�  �@��HasItems .  . ��� $ DropDownBorder�� � ��$ 95��P�  � {� .  . ���  � �� �#1a97c1P�  �@��
IsGrouping . . ���  � �� .  P� $: Popup�� �@�AllowsTransparency . . ��� $ DropDownBorder�� �@��CornerRadius$ 0���� $ DropDownBorder�� � ��$ 0,2,0,0q�P�  �@��
IsEditable . . ���  � �� .  �� $ PART_EditableTextBox�� � y�$ Visible=��� $ ContentSite�� � y�$ Hidden=� �� " ��.���  �@J�SnapsToDevicePixels . ��  � �� �	#FF6D7A86��  � �� �#1a97c1��  �@�OverridesDefaultStyle . ��  � �� �� "	 ��.R��� $��Border��$ 2q�$
 5,5,5,5��5 . ._���  P�  �@��IsHighlighted . . ��� $ Border�� � �� �#bdbbbbP�  � {� .  . ���  � �� �#1a97c1�� ";  < �� *Items+.R�� ' �� $
��Auto ��� $��5 ��� $��* �.+��� $	= img��$��20��$��20��$��Images/FolderIcon.png���� $��2������ $
* Name�> �� $
* Path�? �� .@�m� $��Create��@ �� $��16��$��16��$'��!Images/ContextMenu/CreateIcon.png��$��UniformToFill=�.@�m� -   $	��PBO��8@   �� ";  < �� *Items+.R�� ' �� $
��Auto ��� $��5 ��� $��* �.+��� $	= img��$��20��$��20��$��Images/FolderIcon.png���� $��2������ $
* Name�> �� $
* Path�? �� .@�m� $��Create��8@   .@�m� $��Folder��8@  m� $
��File��8@  m� $	��SQF��8@  m� $	��CPP��8@  m� $	��HPP��8@  m� $��Other��8@  m� $��Event Script��8@  .@�m� $
��init��8@  m� $��	initIntro��8@ 	 m� $��
initServer��8@ 
 m� $��initPlayerServer��8@  m� $��initPlayerLocal��8@  m� $��onPlayerKilled��8@  m� $��onPlayerRespawn��8@  �� "; 	 < �� *Items+.R�� ' �� $
��Auto ��� $��5 ��� $��* �.+��� $	= img��$��20��$��20��$��Images/FolderIcon.png���� $��2������ $
* Name�> �� $
* Path�? �� .@�m� $��Create..��8@   .@�m� $��Folder��8@  m� $��SQF File��8@  m� $��CPP File��8@  m� $��HPP File��8@  m� $��Other��8@  m� $��Rename��8@  m� $��Delete��8@  �� "; 
 < �� *Items+.R�� ' �� $
��Auto ��� $��5 ��� $��* �.+��� $	= img��$��20��$��20��$��Images/FolderIcon.png���� $��2������ $
* Name�> �� $
* Path�? �� .@�m� $��Create..��8@   .@�m� $��Folder��8@  m� $��SQF File��8@  m� $��CPP File��8@  m� $��HPP File��8@  m� $��Other��8@  m� $��Rename��8@  m� $��Delete��8@  �� ";  .R�� ' �� $
��Auto ��� $��5 ��� $��* �.+��� $	= img��$��24��$��24��$��Images/FileIcon.png���� $��2������ $
* Name�> �� $
* Path�? �� .@�m� $��Rename��8@   m� $��Delete��8@  