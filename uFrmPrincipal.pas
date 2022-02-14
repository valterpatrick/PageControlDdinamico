unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    PnPageControl: TPanel;
    PnControles: TPanel;
    BtnCriarPageControl: TBitBtn;
    BtnCriaAbaDinamica: TBitBtn;
    BtnExcPriAbaDinamica: TBitBtn;
    procedure BtnCriarPageControlClick(Sender: TObject);
    procedure BtnCriaAbaDinamicaClick(Sender: TObject);
    procedure BtnExcPriAbaDinamicaClick(Sender: TObject);
  private
    P: TPageControl;
    IndPag: Integer;
  public

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}


procedure TFrmPrincipal.BtnCriaAbaDinamicaClick(Sender: TObject);
var
  TabSheet: TTabSheet;
begin
  IndPag := IndPag + 1;

  TabSheet := TTabSheet.Create(P);
  TabSheet.PageControl := P;
  TabSheet.Name := 'Tab' + IntToStr(IndPag);
  TabSheet.Caption := ' Atendimento ' + IntToStr(IndPag) + ' ';
end;

procedure TFrmPrincipal.BtnCriarPageControlClick(Sender: TObject);
begin
  P := TPageControl.Create(Self);
  P.Parent := PnPageControl;
  P.DoubleBuffered := True;
  P.Align := alClient;
  P.AlignWithMargins := True;
  P.Margins.Bottom := 3;
  P.Margins.Top := 3;
  P.Margins.Left := 3;
  P.Margins.Right := 3;

  IndPag := 0;
end;

procedure TFrmPrincipal.BtnExcPriAbaDinamicaClick(Sender: TObject);
begin
  if Assigned(P) and (P.PageCount > 0) then
    P.Pages[0].Destroy;
end;

end.
