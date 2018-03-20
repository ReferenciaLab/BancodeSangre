unit ConfirmarCoberturaTardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit;

type
  TfrmConfirmarCoberturaTardia = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    BtAceptar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    edcoberturavalor: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Confirmado, Rechazado : Integer;
    Aprobacion, ConfirmadoPor, Seguroid, Nombre, Origen : String;

    procedure Run;
    Procedure Rechazar;
  end;

var
  frmConfirmarCoberturaTardia: TfrmConfirmarCoberturaTardia;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta;

{$R *.dfm}

procedure TfrmConfirmarCoberturaTardia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = Vk_F12) then Rechazar;

  If (key = Vk_F9) Then btAceptar.Click;

  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmConfirmarCoberturaTardia.Run;
begin
 Confirmado := 1;
 Rechazado := 0;
 Origen  := frmMain.frmTmp.qrEntradaPacienteOrigen.Value;
 Seguroid := frmMain.frmTmp.qrEntradaPacienteClienteId.Value;
 Nombre := frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value;
 Aprobacion := frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value;
 ConfirmadoPor := frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value;

 frmMain.frmTmp.qrEntradaPaciente.Edit;
 frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
 frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
 frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value;
 showmodal;

 if ModalResult = mrOk then
   begin
    if (Rechazado = 1) then
     Begin
       //Cobertura Rechazada.
       frmMain.frmTmp.Operacion := 'E';
       frmMain.frmTmp.qrEntradaPaciente.Edit;
       frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := '';
       frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := '';
       frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 1;
       frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
       frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
       frmMain.frmTmp.qrEntradaPacienteClienteId.Value := frmMain.frmTmp.qrEntradaPacientePacienteId.Value;

       frmMain.frmTmp.Buscar_Cliente;
       frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := frmMain.frmTmp.qfindCltParams.FieldByName('Nombre').AsString;
       frmMain.frmTmp.qrEntradaPacienteOrigen.Value := frmMain.frmTmp.qfindCltParams.FieldByName('GrupoCliente').AsString;

//       frmMain.frmTmp.ActTotales;
       frmMain.frmTmp.RefrescarInterface;
     End;

    if (Confirmado = 1) then
     Begin
       //Cobertura Confirmada.
       If (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value < 1) Or
          (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.IsNull) then
         Begin
          //Dejando Igual Por Cobertura en Cero.
          frmMain.frmTmp.qrEntradaPaciente.Edit;
          frmMain.frmTmp.qrEntradaPacienteOrigen.Value := Origen;
          frmMain.frmTmp.qrEntradaPacienteClienteId.Value := Seguroid;
          frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := Nombre;
          frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
          frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
          frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
          frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          DM.Error('El Monto de Cobertura Esta en Cero. Por Favor Verifique.!!!');
         end
       Else
        Begin
          //Actualizando la Cobertura Confirmada.
          frmMain.frmTmp.Operacion := 'E';
          frmMain.frmTmp.qrEntradaPaciente.Edit;
          frmMain.frmTmp.qrEntradaPacienteOrigen.Value := Origen;
          frmMain.frmTmp.qrEntradaPacienteClienteId.Value := Seguroid;
          frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := Nombre;
          frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
          frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 1;
          frmMain.frmTmp.qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
          frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);

//          frmMain.frmTmp.valorND := 0;
          frmMain.frmTmp.valorNC := 0;
//          frmMain.frmTmp.valorND := (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value +
          frmMain.frmTmp.valorNC := (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value +
                                     frmMain.frmTmp.qrEntradaPacienteTotalPagado.Value) -
                                     frmMain.frmTmp.qrEntradaPacienteSubtotal.Value;
//                                     frmMain.frmTmp.qrEntradaPacienteNeto.Value;

          if (frmMain.frmTmp.valorNC > 1) then
            Begin
              frmMain.frmTmp.seg_late := True;
              frmMain.frmTmp.ConceptoNC := 'Confirmacion de Cobertura Tardia.';
            End;

          If (frmMain.frmTmp.qrEntradaPacienteSubtotal.Value <> 0) Then
            frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value * 100 /
                                                                   frmMain.frmTmp.qrEntradaPacienteSubtotal.Value;
//          frmMain.frmTmp.ActTotales;
//          frmMain.frmTmp.CrearNotaDebito;
//          frmMain.frmTmp.ActNotaDebito;

          frmMain.frmTmp.RefrescarInterface;

          if (frmMain.frmTmp.valorNC > 1) then
            frmMain.frmTmp.CrearNotaCredito;

          frmMain.frmTmp.btgrabarClick(nil);
        End;
     End;
   End
 else
   begin
    //Dejando Igual Por Proceso Cancelado.
    frmMain.frmTmp.Operacion := 'E';
    frmMain.frmTmp.qrEntradaPaciente.Edit;
    frmMain.frmTmp.qrEntradaPacienteOrigen.Value := Origen;
    frmMain.frmTmp.qrEntradaPacienteClienteId.Value := Seguroid;
    frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := Nombre;
    frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
    frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
    frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
    frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
   end;
end;


//Cobertura Rechazada por el Seguro.
procedure TfrmConfirmarCoberturaTardia.Rechazar;
begin
 If DM.Mensaje('Desea Marcar Como Rechazada la Cobertura de Este Registro?',mb_yesno) = id_yes then
   Begin
     Rechazado := 1;
     Confirmado := 0;

     frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
     frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
   End;
end;


END.


