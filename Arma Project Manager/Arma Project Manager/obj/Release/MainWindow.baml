   M S B A M L   `   `   `  ���� O  KArma Project Manager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Arma_Project_ManagerArma_Project_Manager  %    Arma_Project_Manager.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4local"clr-namespace:Arma_Project_Manager     $	��470��$	��720��  � UseLayoutRounding  .  � AllowsTransparency .  � WindowStyle$
 None=�
������ 
������ .���  � ColumnDefinitions �� $	��53* ��� $	��39* ��� $	��52* �.+��� -    ��Name$ 
TitleBarBG��
������ $��0q����#f5f8f9$��45��$	��Top=� �� CornerRadius$ 5,5,0,0��$��3���� -   $ LeftPannelBG�����#00bdf5$��0,1,0,0q����#ffffff$ 0,0,0,5��$��0,45,1,0q��� -   $ 	ContentBG�����#00bdf5$��0,1,0,0q����#f5f8f9$ 0,0,5,0��$��0,45,0,0q�$��1��$��2���� -   $��Arma Project Manager��$��239,6,239,0q����#6d7a86$1��+/Arma Project Manager;component/Fonts/#Lato)�$��24(�$��32��$	��Top=�$��3����Z� �� -   $��CloseBtn��$��	0,10,10,0q�$��0q�   TitleBarBtn#��[  $��26��$	��Top=�$��Right=�$��26��$��2������  �� ImageSource$ Images/Close.png�� j� Stretch$ UniformToFill=��� -   $��MinimizeBtn��$��	0,10,36,0q�$��0q�#��[  $��26��$	��Top=�$��Right=�$��26��$��2������ $ Images/Minimize.png��$ UniformToFill=��� -    ��Name$ SettingsBtn��  SettingsButton#��[ $��43��$��Bottom=�$��Right=�$��43��	 � ToolTip$	 Settings��$��2���� -   $ CreateNewProjectBtn��  CreateNewProjectButton#��[ $��43��$��Bottom=�$
��Left=�$��43��$��45,0,0,0q�$	 Create New Project��$��1��$��2���� -	   $ 
RefreshBtn��  RefreshButton#��[ $��43��$��Bottom=�$
��Left=�$��43��$��2,0,0,0q�$	 Refresh Project View��$��1��$��2���� -
   $ DeleteProjectBtn��  DeleteProjectButton#��[ $��43��$��Bottom=�$
��Left=�$��43��$��88,0,0,0q�$	 Delete Project��$��1��$��2���� -   
 ��Name$
 ProjectNameLabel�� �� TextAlignment$ Center=����#6d7a86$��17(�$1��+/Arma Project Manager;component/Fonts/#Lato)�$��
0,45,0,400q�R� -    R�Name$ ProjectTreeView��$��0q�
������ $��0,70,0,0q����� �� -    ��Name$ ProjectsCombo��$��
134,0,44,1q�$��16(�$1��+/Arma Project Manager;component/Fonts/#Lato)�$��41��$��Bottom=�$	 Choose Active Project��$��1��$��2���� $��1�����	#FF00BDF5$��0,45,0,0q�� -    �Name$ SettingsStack��$��	5,160,0,0q�$y�	Collapsed=�{�.  $��2��.+��� ���#57cef6$��-1,0,1,0q�$��39��$	��Top=��� ���#43494d$ 0,0,5,0��$��	-1,39,1,1q� �� Padding$ 1q��� $��Settings��$��
10,9,160,0q�$��Calibri)�$��16(�
�������$
��Bold"�$��	Underline{�$��25��$	��Top=��� -   $ CloseSettingsBtn��  SettingsCloseButton#��[ $��Right=�$��41��$��0,-1,0,0q�$��41��$	��Top=��� -    ��Name$# RemoveSingleLineCommentsCheck��$!��Remove Single Line Comments��$��Right=�$��	0,0,50,89q�$��Bottom=�
�������$	��199��$1��+/Arma Project Manager;component/Fonts/#Lato)�$
��Bold"��� -   $" RemoveMultiLineCommentsCheck��$ ��Remove Multi Line Comments��$��Right=�$��	0,0,50,54q�$��Bottom=�
�������$	��199��$1��+/Arma Project Manager;component/Fonts/#Lato)�$
��Bold"��� -   $ ObfuscateMissionCheck��$��Obfuscate Mission��$��Right=�$��
0,0,110,19q�$��Bottom=�
�������$	��139��$1��+/Arma Project Manager;component/Fonts/#Lato)�$
��Bold"��� -    ��Name$ SourcePathLabel��$��Source Path��$��Right=����#FFFFFF$��0,0,174,244q�$��Bottom=�$1��+/Arma Project Manager;component/Fonts/#Lato)��� -    ��Name$ SourcePathBox�� �� TextWrapping$ NoWrap=����#FFFFFF
������ $�� ��$��
0,0,10,222q�$��Right=�$	��239��$��21��$��Bottom=��� -   $ OutputPathLabel��$��Output Path��$��Right=����#FFFFFF$��0,0,174,196q�$��Bottom=�$1��+/Arma Project Manager;component/Fonts/#Lato)��� -   $ OutputPathBox��$ NoWrap=����#FFFFFF
������ $�� ��$��
0,0,10,173q�$��Right=�$	��239��$��21��$��Bottom=��� -   $ MakePBOPathLabel��$��MakePBO Path��$��Right=����#FFFFFF$��0,0,157,147q�$��Bottom=�$1��+/Arma Project Manager;component/Fonts/#Lato)� J� RenderTransformOrigin$ 	0.6,0.667&��� -   $ MakePBOPathBox��$ NoWrap=����#FFFFFF
������ $�� ��$��
0,0,10,124q�$��Right=�$	��239��$��21��$��Bottom=�