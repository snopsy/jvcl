unit JvPanelDemoFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, JvPanel, StdCtrls, ComCtrls, Mask, JvToolEdit,
  JvComponent, JvFormPlacement;

type
  TForm1 = class(TForm)
    JvPanel1: TJvPanel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Animate1: TAnimate;
    JvFilenameEdit1: TJvFilenameEdit;
    Label1: TLabel;
    JvFormStorage1: TJvFormStorage;
    CheckBox2: TCheckBox;
    Panel1: TPanel;
    Label2: TLabel;
    LeftMaskEdit: TMaskEdit;
    Panel2: TPanel;
    Label3: TLabel;
    TopMaskEdit: TMaskEdit;
    Panel3: TPanel;
    Label4: TLabel;
    HorizontalMaskEdit: TMaskEdit;
    Panel4: TPanel;
    Label5: TLabel;
    VerticalMaskEdit: TMaskEdit;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure LeftMaskEditChange(Sender: TObject);
    procedure TopMaskEditChange(Sender: TObject);
    procedure HorizontalMaskEditChange(Sender: TObject);
    procedure VerticalMaskEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  JvPanel1.Transparent := CheckBox1.Checked;
  if JvPanel1.Transparent then
    Edit1.Top := 8
  else
    Edit1.Top := JvPanel1.Height - 35;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  JvPanel1.ArrangeSettings.AutoArrange := CheckBox2.Checked;
end;

procedure TForm1.LeftMaskEditChange(Sender: TObject);
begin
  JvPanel1.ArrangeSettings.BorderLeft := strtoint(LeftMaskEdit.Text);
end;

procedure TForm1.TopMaskEditChange(Sender: TObject);
begin
  JvPanel1.ArrangeSettings.BorderTop:= strtoint(TopMaskEdit.Text);
end;

procedure TForm1.HorizontalMaskEditChange(Sender: TObject);
begin
  JvPanel1.ArrangeSettings.DistanceHorizontal := strtoint(HorizontalMaskEdit.Text);
end;

procedure TForm1.VerticalMaskEditChange(Sender: TObject);
begin
  JvPanel1.ArrangeSettings.DistanceVertical := strtoint(VerticalMaskEdit.Text);
end;

end.

