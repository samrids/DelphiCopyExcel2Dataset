unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus,
  System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BtnPaste: TButton;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    FDMemTable1Batch_No: TStringField;
    FDMemTable1Batch_Date: TDateField;
    FDMemTable1Color: TStringField;
    FDMemTable1Quantity: TIntegerField;
    Paste1: TMenuItem;
    Paste_Action: TAction;
    procedure Paste_ActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Inital;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ClipBrd;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Inital;
end;

procedure TForm1.Inital;
begin
  FDMemTable1.Open;
end;

procedure TForm1.Paste_ActionExecute(Sender: TObject);
var
  ClipBrdData: TStrings;
  i: Integer;
  SplittedData: TArray<String>;
begin
  try
    ClipBrdData := TStringList.Create;
    ClipBrdData.Text := Clipboard.AsText;

    FDMemTable1.DisableControls;

    for i := 0 to Pred(ClipBrdData.Count) do
    begin
      SplittedData := ClipBrdData.Strings[i].Split([Chr(9)]);
      if Length(SplittedData) = 4 then
      begin
        try
          FDMemTable1.Append;
          FDMemTable1.FieldByName('Batch_No').AsString := SplittedData[0];
          FDMemTable1.FieldByName('Batch_Date').AsString := SplittedData[1];
          FDMemTable1.FieldByName('Color').AsString := SplittedData[2];
          FDMemTable1.FieldByName('Quantity').AsString := SplittedData[3];
          FDMemTable1.Post;
        except
          FDMemTable1.Cancel;
          raise;
        end;
      end;
    end;
    FDMemTable1.EnableControls;
  finally
    ClipBrdData.free;
  end;
end;

end.
