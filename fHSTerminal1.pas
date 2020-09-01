unit fHSTerminal1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CPort, Vcl.StdCtrls, CPortMonitor,
  CPortCtl;

type
  TForm1 = class(TForm)
    ComPort1: TComPort;
    ComDataPacket1: TComDataPacket;
    btnConnect: TButton;
    ComTerminal1: TComTerminal;
    Button1: TButton;
    sleCommand: TEdit;
    procedure btnConnectClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnConnectClick(Sender: TObject);
begin
  if btnConnect.Caption = 'Connect' then
  begin
    btnConnect.Caption := 'Disconnect';
    ComPort1.Connected := true;
  end
  else
  begin
    btnConnect.Caption := 'Connect';
    ComPort1.Connected := false;

  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ComPort1.WriteStr(sleCommand.Text);
end;

end.
