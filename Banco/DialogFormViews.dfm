�
 TFRMDLGFORMVIEWS 0%  TPF0�TfrmDlgFormViewsfrmDlgFormViewsLeftTopSCaptionManejador de VistasClientHeight(ClientWidth�OldCreateOrder	ExplicitWidth�ExplicitHeightEPixelsPerInch`
TextHeight �TdxLayoutControllcDialogWidth�Height(ExplicitWidth�ExplicitHeight( �	TcxButton
btCancelarTopCaptionCerrarTabOrderExplicitTop  �	TcxButton	btAceptarTopCaptionAbrirTabOrderOnClickbtAceptarClick
Glyph.Data
:  6  BM6      6   (                  S  S          � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �#��!��!��!��!��!��!��!��&�>!��,��/��� �� �� �$��%��,��1��5��A��K��K��!�9K�jx1�����9��� �� �$��0��J��[��j��{����!�9K�j2�I-�Ax1���9��� �� �$��7��d��������!�9!�9!�9!�9!�9!�9&�>9��� �� �$��9��~������������!�9K�j"�5�����9��� �� �$��9�Ν������������!�9K�j&�>������9��� �� �$��9��������������������!�9&�>�ڽ������9��� �� �$��9��9��9��9��)�����!�9&�>�ѩ���������9��� �� �$��+��6��T��n��i��!�9&�>9��9��9��9��9��9��� �� �$��C�܀���������������������T��� �� �� �$��N�۪��������������9��� �� �� �� �� �� �� �� �� �9��9��9��9��9��9��� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �ExplicitTop  �TcxGridcxGrid1LeftTop$Width�Height� TabOrder  TcxGridDBTableViewtvViewsNavigatorButtons.ConfirmDelete"NavigatorButtons.PriorPage.Visible!NavigatorButtons.NextPage.Visible NavigatorButtons.Refresh.Visible%NavigatorButtons.SaveBookmark.Visible%NavigatorButtons.GotoBookmark.VisibleNavigatorButtons.Filter.VisibleDataController.DataSourcedsVistas/DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups  OptionsCustomize.ColumnFilteringOptionsData.Appending	OptionsView.Navigator	OptionsView.ColumnAutoWidth	OptionsView.GroupByBoxOptionsView.Indicator	OptionsView.NewItemRow	OptionsView.NewItemRowInfoText%Haga clic para grabar la vista actual TcxGridDBColumntvViewsViewNameCaptionVistaDataBinding.FieldNameViewNameWidth;  TcxGridDBColumntvViewsDBColumn1CaptionPor DefectoDataBinding.FieldNameDefaultPropertiesClassNameTcxCheckBoxPropertiesOptions.EditingOptions.FocusingWidthC   TcxGridLevelcxGrid1Level1GridViewtvViews   �	TcxButton	cxButton1Left� TopWidthKHeightCaptionPor Defecto	PopupMenufrmDatosModule.pmCustomTabOrderDropDownMenupmSetDefaultKindcxbkDropDown  �TdxLayoutGrouplcDialogGroup_Root �TdxLayoutGrouplcDialogGroup1 TdxLayoutItemlcDialogItem3
AutoAlignsaaHorizontal 	AlignVertavClientControlcxGrid1ControlOptions.ShowBorder   �TdxLayoutGrouplcDialogGroup2 TdxLayoutItemlcDialogItem4Caption	cxButton1ShowCaptionControl	cxButton1ControlOptions.ShowBorder     TDataSourcedsVistasDataSetqrVistasLeftlTopL  TJvStrHolderstrView	MacroChar|Macros LeftTopdInternalVer  
TPopupMenupmSetDefaultOnPopuppmSetDefaultPopupLeftxTop�  	TMenuItemmiSetAsDefaultCaptionUsar esta vistaOnClickmiSetAsDefaultClick  	TMenuItemmiRestoreDefaultCaption	RestaurarOnClickmiRestoreDefaultClick   TADOCommandcmdDelDefaultCommandTextfDELETE FROM 
  SysUserFormView
WHERE UserId = :pUser
   AND FormName = :pForm
   AND Tipo = :pTipo
ConnectionDM.DataBase
ParametersNamepUserDataTypeftStringNumericScale� 	Precision� Size
Value  NamepFormDataTypeftStringNumericScale� 	Precision� Size2Value  NamepTipo
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   Left\Top\  TADOCommandcmdSetDefaultCommandTextqINSERT INTO 
  SysUserFormView (UserId, FormName, ViewName, Tipo )
VALUES
  ( :pUser, :pForm, :pView, :pTipo )
ConnectionDM.DataBase
ParametersNamepUserDataTypeftStringNumericScale� 	Precision� Size
Value  NamepFormDataTypeftStringNumericScale� 	Precision� Size2Value  NamepViewDataTypeftStringNumericScale� 	Precision� SizeValue  NamepTipo
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   Left� Top\  	TADOQueryqrDefaultView
ConnectionDM.DataBase
CursorTypectStatic
ParametersNamepUserDataTypeftStringNumericScale� 	Precision� Size
Value  NamepFormDataTypeftStringNumericScale� 	Precision� Size2Value  NamepTipo
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT *   FROM SysUserFormViewWHERE UserID = :pUser   AND FormName = :pForm   AND Tipo = :pTipo Left8Top�   	TABSQueryqrVistasCurrentVersion5.04 DatabaseNamePymeCoopInMemoryReadOnly	
BeforePostqrVistas1BeforePostBeforeDeleteqrVistas1BeforeDeleteOnCalcFieldsqrVistas1CalcFieldsOnNewRecordqrVistas1NewRecordRequestLive	SQL.StringsSELECT *   FROM SysFormViewsWHERE FormName = :pForm     AND Tipo = :pTipo Left4TopP	ParamDataDataType	ftUnknownNamepForm	ParamType	ptUnknown DataType	ftUnknownNamepTipo	ParamType	ptUnknown   TIntegerFieldqrVistasTipo	FieldNameTipo  TStringFieldqrVistasFormName	FieldNameFormNameSize2  TStringFieldqrVistasViewName	FieldNameViewNameSize  
TMemoFieldqrVistasSavedView	FieldName	SavedViewBlobTypeftMemo  TBooleanFieldqrVistasDefault	FieldKindfkCalculated	FieldNameDefault
Calculated	    