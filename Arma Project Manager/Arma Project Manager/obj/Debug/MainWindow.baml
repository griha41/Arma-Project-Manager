   M S B A M L   `   `   `  ����O  KArma Project Manager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Arma_Project_ManagerArma_Project_Manager  5   	   %    Arma_Project_Manager.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Arma_Project_Manager     5   	   $	��470��5   	   $	��720��5	   	     � UseLayoutRounding  .  � AllowsTransparency .  � WindowStyle$
 None=�5   	   
������ 
������ .��5      �  � ColumnDefinitions 5   
   �� 5      $	��53* �6   �� 5      $	��39* �6   �� 5      $	��52* �6   .+�5   
   �� -   5         ��Name$ 
TitleBarBG��5      
������ $��0q�6?   ���#f5f8f9$��45��6h   $	��Top=�6t    �� CornerRadius$ 5,5,0,0��6�   $��3��6�   �� 5   
   -   5        $ LeftPannelBG��5      ���#00bdf5$��0,1,0,0q�6=   ���#ffffff$ 0,0,0,5��6l   $��0,45,1,0q�6�   �� 5   
   -   5        $ 	ContentBG��5      ���#00bdf5$��0,1,0,0q�6:   ���#f5f8f9$ 0,0,5,0��6i   $��0,45,0,0q�6�   $��1��6�   $��2��6�   �� 5   
   -   5         ��Name$ TitleBarText��5      $��Arma Project Manager��6*   $��239,6,239,0q�6F   ���#6d7a86$1��+/Arma Project Manager;component/Fonts/#Lato)�6p   $��24(�6�   $��32��6�   $	��Top=�6�   $��3��6  ��6�   Z� 6  �� 5   
   -   5        $��CloseBtn��5      $��	0,10,10,0q�6!   $��0q�64      TitleBarBtn#��[  6@   $��26��6~   $	��Top=�6�   $��Right=�6�   $��26��6�   $��2��6�   ��5      �� 5       �� ImageSource$ Images/Close.png��6    j� Stretch$ UniformToFill=�6<   5       �� 5!   
   -   5        $��MinimizeBtn��5!      $��	0,10,36,0q�6$   $��0q�67   #��[  6C   $��26��6�   $	��Top=�6�   $��Right=�6�   $��26��6�   $��2��6�   ��5"      �� 5#      $ Images/Minimize.png��6   $ UniformToFill=�6?   5%      �� 5&   
   -   5        	 ��Name$	 SettingsBtn��5&        SettingsButton#��[ 6&   $��43��6N   $��Bottom=�6Z   $��Right=�6u   $��43��6�   
 � ToolTip$
 Settings��6�   $��2��6�   �� 5'   
   -   5        $	 CreateNewProjectBtn��5'        CreateNewProjectButton#��[ 6.   $��43��6^   $��Bottom=�6j   $
��Left=�6�   $��43��6�   $��45,0,0,0q�6�   $
 Create New Project��6�   $��1��6�   $��2��6  �� 5(   
   -	   5        $	 
RefreshBtn��5(        RefreshButton#��[ 6%   $��43��6L   $��Bottom=�6X   $
��Left=�6s   $��43��6�   $��2,0,0,0q�6�   $
 Refresh Project View��6�   $��1��6�   $��2��6�   �� 5)   
   -
   5        $	 DeleteProjectBtn��5)        DeleteProjectButton#��[ 6+   $��43��6X   $��Bottom=�6d   $
��Left=�6   $��43��6�   $��88,0,0,0q�6�   $
 Delete Project��6�   $��1��6�   $��2��6�   �� 5*   
   -   5        $ ProjectNameLabel��5*       �� TextAlignment$ Center=�6.   ���#6d7a86$��17(�6Z   $1��+/Arma Project Manager;component/Fonts/#Lato)�6h   $��
0,45,0,400q�6�   R� 5+   
   -   5         R�Name$ ProjectTreeView��5+      $��0q�6,   
������ $��0,70,0,0q�6Y   ��6k   �� 6�   �� 5,   
   -   5         ��Name$ ProjectsCombo��5,      $��
134,0,44,1q�6*   $��16(�6>   $1��+/Arma Project Manager;component/Fonts/#Lato)�6L   $��41��6�   $��Bottom=�6�   $
 Choose Active Project��6�   $��1��6�   $��2��6  �� 5-   
   $��1��6   ���	#FF00BDF5$��0,45,0,0q�68   � 50   
   -   5         �Name$ SettingsStack��50      $��	5,160,0,0q�6&   $y�	Collapsed=�69   {�.  $��2��6b   .+�51      �� ���#57cef6$��-1,0,1,0q�6*   $��39��6<   $	��Top=�6H   �� 52      ���#43494d$ 0,0,5,0��6*   $��	-1,39,1,1q�6A    �� Padding$ 1q�6T   �� 53      $��Settings��6   $��
10,9,160,0q�6(   $��Calibri)�6<   $��16(�6Q   
�������$
��Bold"�6r   $��	Underline{�6�   $��25��6�   $	��Top=�6�   �� 54      -   5        $	 CloseSettingsBtn��54        SettingsCloseButton#��[ 6/   $��Right=�6\   $��41��6x   $��0,-1,0,0q�6�   $��41��6�   $	��Top=�6�   �� 55      -   5         ��Name$# RemoveSingleLineCommentsCheck��55      $!��Remove Single Line Comments��6>   $��Right=�6d   $��	0,0,50,89q�6�   $��Bottom=�6�   
�������$	��199��6�   $1��+/Arma Project Manager;component/Fonts/#Lato)�6�   $
��Bold"�6  6  �� 56      -   5        $" RemoveMultiLineCommentsCheck��56      $ ��Remove Multi Line Comments��6=   $��Right=�6b   $��	0,0,50,54q�6~   $��Bottom=�6�   
�������$	��199��6�   $1��+/Arma Project Manager;component/Fonts/#Lato)�6�   $
��Bold"�6  6  �� 57      -   5        $ ObfuscateMissionCheck��57      $��Obfuscate Mission��66   $��Right=�6R   $��
0,0,110,19q�6n   $��Bottom=�6�   
�������$	��139��6�   $1��+/Arma Project Manager;component/Fonts/#Lato)�6�   $
��Bold"�6�   6  �� 58      -   5         ��Name$ SourcePathLabel��58      $��Source Path��6-   $��Right=�6C   ���#FFFFFF$��0,0,174,244q�6t   $��Bottom=�6�   $1��+/Arma Project Manager;component/Fonts/#Lato)�6�   �� 59      -   5         ��Name$ SourcePathBox��59       �� TextWrapping$ NoWrap=�6-   ���#FFFFFF
������ $�� ��6q   $��
0,0,10,222q�6y   $��Right=�6�   $	��239��6�   $��21��6�   $��Bottom=�6�   6�   �� 5:      -   5        $ OutputPathLabel��5:      $��Output Path��6-   $��Right=�6C   ���#FFFFFF$��0,0,174,196q�6t   $��Bottom=�6�   $1��+/Arma Project Manager;component/Fonts/#Lato)�6�   �� 5;      -   5        $ OutputPathBox��5;      $ NoWrap=�6-   ���#FFFFFF
������ $�� ��6q   $��
0,0,10,173q�6y   $��Right=�6�   $	��239��6�   $��21��6�   $��Bottom=�6�   6�   �� 5<      -   5        $ MakePBOPathLabel��5<      $��MakePBO Path��6.   $��Right=�6E   ���#FFFFFF$��0,0,157,147q�6v   $��Bottom=�6�   $1��+/Arma Project Manager;component/Fonts/#Lato)�6�    J� RenderTransformOrigin$ 	0.6,0.667&�6�   �� 5=      -   5        $ MakePBOPathBox��5=      $ NoWrap=�6.   ���#FFFFFF
������ $�� ��6r   $��
0,0,10,124q�6z   $��Right=�6�   $	��239��6�   $��21��6�   $��Bottom=�6�   6�   5>      5?      5@      