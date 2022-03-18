unit UListKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TFListKaryawan = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ADOList: TADOQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    BitCari: TBitBtn;
    ADOListNIK: TWideStringField;
    ADOListNama: TWideStringField;
    ADOListJenisKelamin: TWideStringField;
    ADOListTempat_Lahir: TWideStringField;
    ADOListTanggal_Lahir: TDateTimeField;
    ADOListAlamat: TWideStringField;
    ADOListNoTelepon: TWideStringField;
    ADOListStatus: TBooleanField;
    BitKeluar: TBitBtn;
    Label2: TLabel;
    BitTampil: TBitBtn;
    EdCari: TEdit;
    CBFilter: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitCariClick(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitTampilClick(Sender: TObject);
    procedure EdCariKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure TampilkanKaryawan;
  public
    { Public declarations }
  end;

var
  FListKaryawan: TFListKaryawan;

implementation
uses UAbsen,Unit1,umenu;
{$R *.dfm}
procedure TFListKaryawan.TampilkanKaryawan ;
begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select * from tbl_Karyawan order by nama');
ADOList.Open;
end;

procedure TFListKaryawan.FormShow(Sender: TObject);
begin
EdCari.Text:='';
CBFilter.ItemIndex:=1;
BitTampil.SetFocus;
ADOList.Close;
end;

procedure TFListKaryawan.BitCariClick(Sender: TObject);
begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select*from tbl_karyawan where '+CBFilter.Text+' like "%'+EdCari.Text+'%" ');
ADOList.Open;
end;

procedure TFListKaryawan.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFListKaryawan.DBGrid1DblClick(Sender: TObject);
begin
if Label2.Caption='Laporan' then
Begin
  if ADOList.IsEmpty then
  else
  begin
  FMenu.EdID.Text:=ADOListNIK.Value;
  FMenu.EdNama.Text:=ADOListNama.Value;
    if ADOListStatus.Value=True then
    FMenu.LblStatus.Caption:='Active'
    else
    FMenu.LblStatus.Caption:='Not Active';
  close
  end
End
Else
BEGIN
  if ADOList.IsEmpty then
  else
  begin
  Form1.Edit1.Text:=ADOListNIK.Value;
  Form1.Edit2.Text:=ADOListNama.Value;
  Form1.ComboBox1.Text:=ADOListJenisKelamin.Value;
  Form1.Edit3.Text:=ADOListTempat_Lahir.Value;
  Form1.DateTimePicker1.date:=ADOListTanggal_Lahir.AsDateTime;
  Form1.Memo1.Text:=ADOListAlamat.Value;
  Form1.Edit4.Text:=ADOListNoTelepon.Value;
  Form1.CHStatus.Checked:=ADOListStatus.Value;
  Form1.ShowModal
  end
END

end;

procedure TFListKaryawan.BitTampilClick(Sender: TObject);
begin
TampilkanKaryawan;
EdCari.Text:='';
CBFilter.ItemIndex:=1
end;

procedure TFListKaryawan.EdCariKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
Begin
ADOList.Close;
ADOList.SQL.Clear;
ADOList.SQL.Add('select*from tbl_karyawan where '+CBFilter.Text+' like "%'+EdCari.Text+'%" ');
ADOList.Open;
End
end;

end.
