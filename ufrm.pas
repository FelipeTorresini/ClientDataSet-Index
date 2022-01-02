unit ufrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    ClientDataSetId: TIntegerField;
    ClientDataSetDescricao: TStringField;
    ClientDataSetValor: TWordField;
    ClientDataSettotal: TAggregateField;
    DBEdit1: TDBEdit;
    dsEdit: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ClientDataSet.Append;
  ClientDataSet.FieldByName('ID').AsInteger := 1;
  ClientDataSet.FieldByName('DESCRICAO').AsString := 'PRODUTO';
  ClientDataSet.FieldByName('VALOR').AsCurrency := 102.23;
  ClientDataSet.Post;

  ClientDataSet.Append;
  ClientDataSet.FieldByName('ID').AsInteger := 1;
  ClientDataSet.FieldByName('DESCRICAO').AsString := 'AGULHA';
  ClientDataSet.FieldByName('VALOR').AsCurrency := 12.23;
  ClientDataSet.Post;

  ClientDataSet.Append;
  ClientDataSet.FieldByName('ID').AsInteger := 3;
  ClientDataSet.FieldByName('DESCRICAO').AsString := 'ALGODAO';
  ClientDataSet.FieldByName('VALOR').AsCurrency := 1.23;
  ClientDataSet.Post;

  ClientDataSet.Append;
  ClientDataSet.FieldByName('ID').AsInteger := 4;
  ClientDataSet.FieldByName('DESCRICAO').AsString := 'GAZE';
  ClientDataSet.FieldByName('VALOR').AsCurrency := 2.23;
  ClientDataSet.Post;
end;

end.
