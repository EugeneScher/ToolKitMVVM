   M S B A M L   `   `   `  ����K  GCsMvvmToolkit_CP, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:CsMvvmToolkit_CPCsMvvmToolkit_CP  5   	   !    CsMvvmToolkit_CP.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:CsMvvmToolkit_CP     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  66     � Title$  C# MVVM Toolkit Demo��5      $	��700��6.   $
��1000��6;    � WindowStartupLocation$ CenterScreen=�6H   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ Loaded��6   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 6$   �� *ParamCommandMainWnd+   CommandParameter 5   @   ��  �� Mode$ OneWay=� �� RelativeSource �� *FindAncestor+	 �� AncestorType!   CsMvvmToolkit_CP.MainWindow"	  5        5   
   $ Loaded��6   . 5         6$   �� *ParamCommandRibn+ 5   @   �� 
 �� ElementName$
 	RibbonWPF��$ OneWay=�5        5   
   $ Closing��6   . 5         6$   �� *	ExitApp+$ OneWay=�5        5   
   $ Loaded��6   . 5         6$   �� *	Apploaded+$ OneWay=�5      .��5#      � -   5         �Name$ MyLayout��5#      $��0q�6   .+�5$   
   ]� .+�5%      +  %System.Windows.Controls.Ribbon.Ribbon  -   5          Name$ 	RibbonWPF��5%       J� RenderTransformOrigin$	 0,0&�6(   $��14(�6D   $��0q�6R   $	��Top=�6]      ApplicationMenu 5'      :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5(      5  /System.Windows.Controls.Ribbon.RibbonMenuButton)   "CanAddToQuickAccessToolBarDirectly . .@�5)      >	  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem	  -   5         	 Name$ 	AppCmdNew��5)   4   $	��New��6G    m� IsCheckable .  3
  -System.Windows.Controls.Ribbon.RibbonMenuItem 
  ImageSource$ Images/newdocument32.png��5+   4   $ 
  QuickAccessToolBarImageSource$ Images/newdocument32.png��5,   4   ) 
  "CanAddToQuickAccessToolBarDirectly .   m� Command 5*   4   �� *	NewFile+$ OneWay=�5-   4   	  5.      -   5        $ 
AppCmdOpen��5.   4   $
��Open��6H    .  $ Images/open16.png��5/   �   $ Images/open16.png��50   4    .   5/   4   �� *OpenFileDlgCommand+$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�50   f   	  51      -   5        $ AppCmdSaveAs��51   4   $��Save As��6J    .  $ Images/save16.png��52   �   $ Images/save16.png��53   4    .   52   4   �� *SaveAsFileDlgCommand+$ OneWay=�$ PropertyChanged=�53   f   	  54      -   5        $ AppCmdPrint��54   4   $��Print��6I    .  $ Images/PrintHS.png��55   o   $ Images/PrintHS.png��56   4    .   55   4   �� *Print+$ OneWay=�56   g   	  57      -   5        $ AppCmdClose��57   4   $��	Close App��6I   $ Images/close.png��58   ]   $ Images/close.png��59   4    .   58   4   �� *	ExitApp+$ OneWay=�59   e   5:       J� InputBindings 5<      �� 5=       �� Command$
 Save��6!   
 �� Key$ S��62    �� 	Modifiers$
 Ctrlf�6:      QuickAccessToolBar 5@      =  7System.Windows.Controls.Ribbon.RibbonQuickAccessToolBar  5A      $��Right=�6/   $	��120��6K   .@�5B      1  +System.Windows.Controls.Ribbon.RibbonButton  -   5          Name$ AppCmdNewQAT��5B   '      SmallImageSource$ Images\newdocument32.png��5C   '      KeyTip$ N��6S   ��5B   =   �� *	NewFile+$ OneWay=�5C   S     5D      -	   5        $ AppCmdOpenQAT��5D   '   $ Images\open16.png��6�   $ O��6�   ��6>   �� *OpenFileDlgCommand+$ OneWay=�$ PropertyChanged=�6�     5E      -
   5        $ AppCmdSaveAsQAT��5E   '   $ Images\save16.png��6�   $ S��6�   ��6@   �� *SaveAsFileDlgCommand+$ OneWay=�$ PropertyChanged=�6�     5F      -   5        $ AppCmdCloseQAT��5F   '   $ Images\close.png��5G   '   ��5F   ?   �� *	ExitApp+$ OneWay=�5G   '   5H      .@�5K      .  (System.Windows.Controls.Ribbon.RibbonTab  -   5          Name$ 	EditorTab��5K      $��Start��6/   $��97��6>   $��	0,0,-2,-9q�6J   $ 	0.5,0.682&�5L          KeyTip$   ��6>   .@�5M      0  *System.Windows.Controls.Ribbon.RibbonGroup  $
��File��6"   $��92��60   $��0q�6<   $	��Top=�6G   $��Arial)�6_   )!   "CanAddToQuickAccessToolBarDirectly! .  $	��188��5N   M   .@�5O        -   5        $	 New��5O   '   $��RibbonButton��64   $
��Left=�6K   $��53��6f   $��10,2,-86,-53q�5P   '   $	��Top=�6=   $��80��6U   "   Label$	" New��6`   #   LargeImageSource$# Images/newdocument32.png��5Q   '   $   ToolTipTitle$	$ New��6S   % � ToolTip$	% New��6f   $ N��6t   )&   "CanAddToQuickAccessToolBarDirectly& .  ��5S   '   �� *	NewFile+$ OneWay=�  5T      -   5        $
 Open��5T   '   $��RibbonButton��65   $
��Left=�6L   $��22��6g   $��95,0,-176,-26q�5U   '   $	��Top=�6>   $��85��6V   $"  Open��5V   '   $ Images/open16.png��65   $$  ��6Z   $
% Open��6j   $ O��6y   & .  ��5W   R   �� *OpenFileDlgCommand+$ OneWay=�$ PropertyChanged=�  5X      -   5        $ SaveAs��5X   '   $��RibbonButton��67   $
��Left=�6N   $
��Auto��6i   $��94,24,-162,-70q�5Y   '   $	��Top=�6?   $��80��6W   $"  Save As��6b   $ S��6t   4  .System.Windows.Automation.AutomationProperties'   	AccessKey$' S��5Z   '   (   AcceleratorKey$( S��6J   $ Images/save16.png��5[   '   & .  $$ Save As��5\   '   ��6>   �� *SaveAsFileDlgCommand+  5]      -   5        $
 Save��5]   '   $��RibbonButton��65   $
��Left=�6L   $
��Auto��6g   $��94,46,-162,-70q�5^   '   $	��Top=�6?   $��80��6W   $"  Save��6b   $ S��6q   $' S��5_   '   $( S��6J   $ Images/save16.png��5`   '   $y�Hidden=�6L   & .  5a   '   5b        5c      $��	Clipboard��6"   $��0q�65   $��Arial)�6@   $	��Top=�6S   $��92��6k   ! .  $��88��5d   M   .@�5e        -   5        $ ClipboardCmdCut��5e   '   $
"  Cut��6@   $ Images/cut16.png��6M   $��0,2,0,0q�6q   & .  $��ApplicationCommands.Cut��5f   R     5g      -   5        $ ClipboardCmdCopy��5g   '   $"  Copy��6A   $ Images/copy16.png��6O   $ C��6t   $��0,2,-1.708,0q�5h   '   $
��Auto��6=   & .  $��ApplicationCommands.Copy��5i   R     5j      -   5        $ ClipboardCmdPaste��5j   '   $"  Paste��6B   $ Images/paste16.png��6Q   $��0,2,0,0q�6w   & .  $��ApplicationCommands.Paste��6�   5k        5l      -   5        )  Name$) 	Paragraph��5l   "   $��Arial)�65   $��	Paragraph��6H   $��92��6[   $��0,0,-2,0q�6g   $	��Top=�5m   "   ! .  $	��199��6e   $	��199��6t   $
��Left=�5n   "   .@�5o      �� -   5        * ��Name$* StackpanelRT1��5o   %   $��	3,2,0,-22q�6<   $	��Top=�6O   + �� Orientation$+ 
Horizontal=�6g   $��22��6�   .+�5p        -   5        $ LeftAlignRibbonButton��5p   +   $��RibbonButton��6J   $��22��6a   $��0q�6m   $ Images/LeftAlign.png��6x   $	��Top=�6�   $$ 	LeftAlign��6�   $��EditingCommands.AlignLeft��6�     5q      -   5        $ CenterRibbonButton��5q   +   $��RibbonButton��6G   $��22��6^   $��0q�6j   $ Images/center.png��6u   $$ Center��6�   $!��EditingCommands.AlignCenter��6�     5r      -   5        $ RightAlignRibbonButton��5r   +   $��RibbonButton��6K   $��22��6b   $��0q�6n   $ Images/RightAlign.png��6y   $$ 
RightAlign��6�   $ ��EditingCommands.AlignRight��6�     5s      -   5        $ BoldRibbonButton��5s   +   $��RibbonButton��6E   $��22��6\   $��0q�6h   $ Images/bold.png��6s   $	��Top=�6�   $
$ Bold��6�   $ ��EditingCommands.ToggleBold��6�     5t      -   5        $ ItalicRibbonButton��5t   +   $��RibbonButton��6G   $��22��6^   $��0q�6j   $ Images/italic.png��6u   $	��Top=�6�   $$ Italic��6�   $"��EditingCommands.ToggleItalic��6�     5u      -   5        $ UnderlineRibbonButton��5u   +   $��RibbonButton��6J   $��22��6a   $��0q�6m   $ Images/underline16.png��6x   $	��Top=�6�   $$ 	Underline��6�   $%��EditingCommands.ToggleUnderline��6�     5v      -   5        $ BulletsRibbonButton��5v   +   $��RibbonButton��6H   $��22��6_   $��0q�6k   $	��Top=�6w   $$ Bullets��6�   $
��Bold"�6�   $"  ��6�   $ Images/bullets.png��6�   $#��EditingCommands.ToggleBullets��6�     5w      $%��EditingCommands.ToggleNumbering��6,   $% 	Numbering��6V   $ Images/Numbered.png��6j   5x      �� 5y      -   5        $* StackpanelRT2��5y   %   $��3,24,-120,-22q�6<   $	��Top=�6S   $+ 
Horizontal=�5z   %   $��22��6>   .+�5{        -   5        $ UndoRibbonButton��5{   +   $��RibbonButton��6E   $��22��6\   $��0q�6h   $ Images/undo16.png��5|   +   $
$ Undo��6P   $��ApplicationCommands.Undo��5}   +   $
��Left=�6N     5~      -   5        $ RedoRibbonButton��5~   +   $��RibbonButton��6E   $��22��6\   $��0q�6h   $ Images/Redo.png��5   +   $
$ Redo��6N   $��ApplicationCommands.Redo��5�   +   $��Right=�6N   5�      5�        5�      $
��Edit��6"   $��0q�60   $��92��6;   $��14(�6G   $	��Top=�6U   $��Arial)�6m   ! .  $��99��5�   M   .@�5�      �� -    5        $* StackpanelFontGroup��5�   %   $��Right=�6B   $��-9,0,11,-82q�6^   $��Bottom=�6s   $	��140��6�   $��79��6�   .+�5�        -!   5        $ FontsDlgRibbonButton��5�   +   $��	9,-4,3,33q�6J   $	��122��6]   $ Images/goto16.png��6i   $" Fonts Dialog��6�   ��6�   �� *FontDlgCommand+  5�      -"   5        $ SearchRibbonButton��5�   +   $��RibbonButton��6G   $
��Left=�6^   $��
11,-33,0,0q�5�   '   $	��Top=�6;   $��90��6S   $��28��6^   $" Search��6j   $$ Search��5�   '   $ Images/search.png��6=   & .  ,   ToolTipDescription$, ToolTip Test ��6�   -   ToolTipImageSource$- Images/search.png��6�   ��6�   �� *SearchDlgCommand+5�      5�        5�      $��
Test Group��6"   $��0q�66   $��92��6A   $��14(�6M   $	��Top=�6[   $��Arial)�6s   ! .  $	��133��5�   E   $	��225��6T   .@�5�      2  ,System.Windows.Controls.Ribbon.RibbonTextBox  -#   5        .  Name$. ribbonTextBox��5�   (   $��Right=�5�       $��0,0,-90,-30q�6<   / �� TextWrapping$
/ Wrap=�6Q   $��Bottom=�6e   $	��120��5�       0 �� 	UndoLimit$0 10��6,   $��12(�6;   ��5�   ?   �� *OnPropertyChangedTest+$ PropertyChanged=�5�   ;     5�      -$   5        $. NotifyTextBox��5�   (   $��Right=�6�   $��0,0,-90,-53q�6�   $
/ Wrap=�5�       $��Bottom=�64   $	��120��6O   $0 10��6[   $��12(�6j   ��5�   ?   �� *OnPropertyChangedTest+$ PropertyChanged=�5�   j     5�      -%   5        $. 
MsgTextBox��5�   (   $��Right=�6[   $��0,0,-90,-76q�6w   $
/ Wrap=�5�       $��Bottom=�64   $	��120��6O   $0 10��6[   $��12(�6j   #��� ��5�       ��5�   <   �� *DialogMessage+5�         5�      -&   5        $ SendMsgRibbonButton��5�   '   $��99��6D   $��21��6O   $��102,0,0,-130q�6[   $" Send Msg��6q   $��99��5�      $y�Hidden=�6-   � 5�      .+�5�      �� $��	100,9,0,0q�6)   $��21��6<   $��99��6H   .+�5�   "     $��Open Dialog��6/   $��0q�6o   $��99��6z   $��21��6�   $" 
Add Credit��6�   ��6F   �� *OpenUserInputCommand+6�   5�      5�      5�      5�        5�      -'   5        $ RibbonSettings��5�      $��Ribbon Settings��64   $��Arial)�6M   $��98��6`   $��	0,0,-2,-9q�6l   .@�5�        $��Settings | Options��6"   $��92��6>   $��0q�6J   $	��Top=�6U   $	��200��6m   $��Arial)�6y   ! .  .@�5�        -(   5        $ RestoreQATRibbonButton��5�   '   $��RibbonButton��6G   $
��Left=�6^   $��
10,5,-76,0q�6y   $" Restore QAT��6�   $��22��6�   & .  $ Images/undo16.png��6�   $"$ Restore Quick Access Toolbar��6�   ��6)  �� *
RestoreQAT+  5�      -)   5        $! BackgroundWhiteRibbonButton��5�   '   $��RibbonButton��6L   $
��Left=�6c   $��22��6~   $��10,0,-138,-14q�6�   $��Bottom=�6�   $	��144��6�   $" Background White��6�   & .  $ Images/config.png��62  ��6W  �� *WhiteBackground+  5�      -*   5        $! BackgroundGreenRibbonButton��5�   '   $��RibbonButton��6L   $
��Left=�6c   $��22��6~   $��10,0,-138,-36q�6�   $��Bottom=�6�   $	��144��6�   $" Background Green��6�   & .  $ Images/config.png��62  ��6W  �� *GreenBackground+5�      5�        5�      -+   5        $ TabHelp��5�      $
��Help��6-   $ 0.523,0.551&�6;   $��0,0,-11,-22q�6_   #��� ��6t   .@�5�        -,   5        $
 Info��5�   #   $
" Info��61   $ Images/help_icon.png��6>   $��
0,-44,0,22q�6f   $��Center=�6z   $��Center=�6�   $
��Auto��6�   & .  ��6�   �� *Info+$ OneWay=�5�      5�      �� 5�      $��Bottom=�6   ��.  #��� ��5�   '   .@�5�      �� $��Right=�6    .��5�      �� --   5        1 ��Name$1 StatBarText��5�       2 �� TextAlignment$
2 Left=�5�      $��0 0 30 0q�5�      $	��985��6/   ��5�      �� *DialogMessage+$ OneWay=�$ PropertyChanged=�5�   /   5�      5�      �� 5�      -.   5        3 ��Name$3 
tabControl��5�      4 �� TabStripPlacement$4 Bottom=�6-   $	��0,5q�6H   .@�5�      �� -/   5        5 ��Name$5 
tabTesting��5�      $��MVVM Toolkit Testing��6.   .��5�      � ���	#FFE5E5E5$��
0,2,0,-105q�62   6 � ColumnDefinitions6 5�      �� 5�      $
��349* �6/   �� 5�      $
��637* �6/   .+�5�      �� $��0,24,160,93q�6%   $��1��6:   $��Right=�5�   %   $��85��6A   .+�5�      �� -0   5        7 ��Name$7 myTestMsgButton��5�   %   $��Send Msg��6>   $��
0,0,-108,0q�5�   %   $��22��69   $ 0.533,-8.223&�5�   %   ��5�   %   �� *	SendMsg+$ OneWay=�5�   %   �� 5�      -1   5        $7 myGetErrrorButton��5�   %   $��	Get Error��6@   $��22��5�   %   $��
0,2,-108,0q�61   ��5�   %   �� *
GetError+$ OneWay=�5�   1   �� 5�      -2   5        $7 myClearListboxButton��5�   %   $��Clear Listbox��6C   $��22��5�   %   $��
0,2,-108,0q�61   ��5�   %   �� *ClearListbox+$ OneWay=�5�   1   �� 5�      -3   5        $7 myReadXmlListboxButton��5�   %   $��Read Xml to Listbox��6E   $��22��5�   %   $��
0,2,-108,0q�61   ��6E   �� *	ReadXml+$ OneWay=�$ PropertyChanged=��� 5�      -4   5        $7 myReadLogButton��5�   %   $��22��5�   %   $��
0,2,-108,0q�61   $��Read Log��6�   ��6E   �� *	ReadLog+$ OneWay=�$ PropertyChanged=�6�   �� 5�      -5   5        $7 myClearTextBoxButton��5�   %   $��Clear TextBox��6C   $��22��5�   %   $��
0,2,-108,0q�61   ��6E   �� *	NewFile+$ OneWay=�$ PropertyChanged=�5�      �� 5�      -6   5        8 ��Name$8 	myTextBox��5�   "   $	��145��65   $��
0,24,264,0q�6B   $
/ Wrap=�5�   "   $	��Top=�5�   "   $��2��6:   9 �� AcceptsReturn9 . ��5�   "   �� *	GetText+$ TwoWay=�$ PropertyChanged=�.��6m    5�        5�   "   $ 
MouseWheel��61   . 5�   &      6<   �� *ParamCommandTBx+ 5�   @   �� $
 	myTextBox��$ OneWay=�5�   #     5�   "   $ MouseDoubleClick��61   . 5�   &      6<   �� *ParamCommandTBx+ 5�   @   �� $
 	myTextBox��$ OneWay=�5�   #     5�   "   $ TextChanged��61   . 5�   &      6<   �� *ParamCommandTBx+ 5�   @   �� $
 	myTextBox��$ OneWay=�5�   #     5�   "   $ 
MouseEnter��61   . 5�   &      6<   �� *ParamCommandTBx+ 5�   @   �� $
 	myTextBox��$ OneWay=�5�   #   .��5�   6   5�      �� 5�      -7   5        : ��Name$: 
lstCredits��5�   #   $��0,204,5,114q�67   $��0��5�   #   $��2��60   ��5�   #   �� *
GetCredits+$ OneWay=�$ PropertyChanged=�; �� View; 5�      �� 5�   "   -8   5        grdNames��< �� AllowsColumnReorder< .  .P�5�   &   �� $
��Item��65   = �� DisplayMemberBinding= 5�   5   �� *Item+�� 5�   &   $
��Note��65   = 5   5   �� *Note+�� 5  &   $
��Link��65   = 5  5   �� *Link+5  #   5     �� 5     -9   5        > ��Name$> label��5      $��Credits:��6/   $��	2,174,0,0q�5      $	��Top=�63   $��25��5      $
��Bold"�6,   $
��Left=�5	      $	��140��6;   5
     5     �� 5     -:   5        $5 
tabNothing��5     $��	Rich Text��6.   .��5     � ���	#FFE5E5E5.+�5     �� -;   5        ? ��Name$? myRichTextBox��5  &   @ �� IsDocumentEnabled@ . $��14(�6~    5       5  "   $ 
MouseWheel��61   . 5  &      6<   �� *ParameterisedCommand+ 5  <   �� $
 myRichTextBox��$ OneWay=�5  #     5  "   $ MouseDoubleClick��61   . 5  &      6<   �� *ParameterisedCommand+ 5  <   �� $
 myRichTextBox��$ OneWay=�5  #     5  "   $ TextChanged��61   . 5  &      6<   �� *ParameterisedCommand+ 5  <   �� $
 myRichTextBox��$ OneWay=�5  #     5  "   $ 
MouseEnter��61   . 5  &      6<   �� *ParameterisedCommand+ 5  <   �� $
 myRichTextBox��$ OneWay=�5  #   5!     5"     5#     5$     5%     5&     5'     