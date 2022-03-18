unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TFMenu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdID: TEdit;
    Label8: TLabel;
    LblStatus: TLabel;
    EdNama: TEdit;
    Label5: TLabel;
    DTTanggalAwal: TDateTimePicker;
    DTTanggalAkhir: TDateTimePicker;
    Shape3: TShape;
    Shape1: TShape;
    BitProses: TBitBtn;
    BitKeluar: TBitBtn;
    ADOKaryawan: TADOQuery;
    ADOKaryawanNIK: TWideStringField;
    ADOKaryawanNama: TWideStringField;
    ADOKaryawanJenisKelamin: TWideStringField;
    ADOKaryawanTempat_Lahir: TWideStringField;
    ADOKaryawanTanggal_Lahir: TDateTimeField;
    ADOKaryawanAlamat: TWideStringField;
    ADOKaryawanNoTelepon: TWideStringField;
    ADOKaryawanStatus: TBooleanField;
    Label3: TLabel;
    Shape2: TShape;
    BitCari: TBitBtn;
    ADOProses: TADOQuery;
    ADOProsesNIK: TWideStringField;
    ADOProsesTanggalAbsen: TDateTimeField;
    ADOProsesMasuk: TDateTimeField;
    ADOProsesKeluar: TDateTimeField;
    ADOProsesK_Masuk: TWideStringField;
    ADOProsesK_Izin: TWideStringField;
    ADOProsesK_Sakit: TWideStringField;
    ADOProsesKeterangan: TWideStringField;
    ADOProsesNamakaryawan: TStringField;
    ADOIzin: TADOQuery;
    procedure BitKeluarClick(Sender: TObject);
    procedure EdIDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitCariClick(Sender: TObject);
    procedure BitProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation
uses UAbsen,Unit1,UListKaryawan, DateUtils, ULapAbsen1;
{$R *.dfm}

procedure TFMenu.BitKeluarClick(Sender: TObject);
begin
close
end;

procedure TFMenu.EdIDKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan where Nik="'+EdID.Text+'"');
ADOKaryawan.Open;
if not ADOKaryawan.Eof then
  begin
  EdID.Text:=ADOKaryawanNIK.Value;
  EdNama.Text:=ADOKaryawanNama.Value;
  BitProses.SetFocus;
  if ADOKaryawanStatus.Value=True then
    LblStatus.Caption:='Active'
    else
    LblStatus.Caption:='Not Active'
  end
  else
  begin
  MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
  EdID.SetFocus;
  end

end
end;

procedure TFMenu.FormShow(Sender: TObject);
begin
EdID.Text:='';
EdNama.Text:='';
LblStatus.Caption:='-';
EdID.SetFocus;
DTTanggalAwal.Date:=StartOfTheMonth(now);
DTTanggalAkhir.Date:=now;
end;

procedure TFMenu.BitCariClick(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Laporan';
FListKaryawan.ShowModal;
end;

procedure TFMenu.BitProsesClick(Sender: TObject);
begin
ADOProses.Close;
ADOProses.SQL.Clear;
ADOProses.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen>=#'+FormatDateTime('yyyy-MM-dd',DTTanggalAwal.Date)+'# and tanggalabsen<=#'+FormatDateTime('yyyy-MM-dd',DTTanggalAkhir.Date)+'# order by tanggalabsen');
ADOProses.Open;

if not ADOProses.Eof then
begin
flapabsen1.QuickRep1.Preview;
end
else
MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0);
end;

end.
