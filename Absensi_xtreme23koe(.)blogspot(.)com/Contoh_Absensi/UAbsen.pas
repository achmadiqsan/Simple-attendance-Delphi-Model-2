unit UAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TFAbsen = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdID: TEdit;
    EdNama: TEdit;
    Shape1: TShape;
    Label5: TLabel;
    DTTanggal: TDateTimePicker;
    Label6: TLabel;
    EdKeterangan: TEdit;
    Label7: TLabel;
    Timer1: TTimer;
    Label8: TLabel;
    LblStatus: TLabel;
    RBMasuk: TRadioButton;
    RBPulang: TRadioButton;
    RBSakit: TRadioButton;
    RBIzin: TRadioButton;
    BitAbsen: TBitBtn;
    DBGrid1: TDBGrid;
    BitKeluar: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOTampil: TADOQuery;
    ADOKaryawan: TADOQuery;
    DataSource1: TDataSource;
    ADOTampilNIK: TWideStringField;
    ADOTampilMasuk: TDateTimeField;
    ADOTampilKeluar: TDateTimeField;
    ADOTampilK_Masuk: TWideStringField;
    ADOTampilK_Izin: TWideStringField;
    ADOTampilK_Sakit: TWideStringField;
    ADOTampilKeterangan: TWideStringField;
    ADOKaryawanNIK: TWideStringField;
    ADOKaryawanNama: TWideStringField;
    ADOKaryawanJenisKelamin: TWideStringField;
    ADOKaryawanTempat_Lahir: TWideStringField;
    ADOKaryawanTanggal_Lahir: TDateTimeField;
    ADOKaryawanAlamat: TWideStringField;
    ADOKaryawanNoTelepon: TWideStringField;
    ADOKaryawanStatus: TBooleanField;
    ADOTampilNamaKaryawan: TStringField;
    ADOSimpan: TADOQuery;
    ADOCari: TADOQuery;
    ADOTampilTanggalAbsen: TDateTimeField;
    BitLookUp: TBitBtn;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel2: TPanel;
    BitCetak: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure BitKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdIDKeyPress(Sender: TObject; var Key: Char);
    procedure BitAbsenClick(Sender: TObject);
    procedure DTTanggalChange(Sender: TObject);
    procedure DTTanggalCloseUp(Sender: TObject);
    procedure BitLookUpClick(Sender: TObject);
    procedure BitCetakClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure TampilkanAbsen;
    PROCEDURE ABSENMASUK;
    PROCEDURE ABSENKELUAR;
    PROCEDURE ABSENIZIN;
    PROCEDURE ABSENSAKIT;
  public
    { Public declarations }
  end;

var
  FAbsen: TFAbsen;

implementation

uses UListKaryawan, UMenu;

{$R *.dfm}
Procedure TFAbsen.TampilkanAbsen;
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan');
ADOKaryawan.Open;

ADOTampil.Close;
ADOTampil.SQL.Clear;
ADOTampil.SQL.Add('select * from tbl_absen where tanggalabsen=#'+FormatDateTime('yyyy/MM/dd',DTTanggal.DateTime)+'#');
ADOTampil.Open;
end;

Procedure TFAbsen.ABSENMASUK;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+EdID.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"'+FormatDateTime('HH:mm',now)+'","00:00","Ya","","","'+EdKeterangan.Text+'")');
   ADOSIMPAN.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
   LblStatus.Caption:='';
END;

Procedure TFAbsen.ABSENIZIN;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+EdID.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"00:00","00:00","","Ya","","'+EdKeterangan.Text+'")');
   ADOSIMPAN.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
   LblStatus.Caption:='';
END;

Procedure TFAbsen.ABSENSAKIT;
BEGIN
   ADOSIMPAN.Close;
   ADOSIMPAN.SQL.Clear;
   ADOSIMPAN.SQL.Add('INSERT INTO TBL_ABSEN VALUES ("'+EdID.Text+'","'+FormatDateTime('dd-MM-yyyy',DTTanggal.Date)+'",'+
   '"00:00","00:00","","","Ya","'+EdKeterangan.Text+'")');
   ADOSIMPAN.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
   LblStatus.Caption:='';
END;

Procedure TFAbsen.ABSENKELUAR;
BEGIN
ADOCari.Close;
ADOCari.SQL.Clear;
ADOCari.SQL.Add('select NIK,Keluar from tbl_absen where tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'# and NIK="'+EdID.Text+'"');
ADOCari.Open;
if (ADOCari.FieldByName('Keluar').IsNull) or (ADOCari.FieldByName('Keluar').Value='00:00') then
Begin
   ADOSimpan.Close;
   ADOSimpan.SQL.Clear;
   ADOSimpan.SQL.Add('UPDATE TBL_ABSEN SET KELUAR="'+FormatDateTime('HH:mm',now)+'" WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
   ADOSimpan.ExecSQL;
   EdID.Text:='';
   EdNama.Text:='';
   EdKeterangan.Text:='';
   LblStatus.Caption:='';
end
else
begin
end
END;

procedure TFAbsen.Timer1Timer(Sender: TObject);
begin
Label7.Caption:=FormatDateTime('HH:mm:ss',now);
end;

procedure TFAbsen.BitKeluarClick(Sender: TObject);
begin
Application.Terminate
end;

procedure TFAbsen.FormShow(Sender: TObject);
begin
EdID.Text:='';
EdNama.Text:='';
EdKeterangan.Text:='';
LblStatus.Caption:='-';
DTTanggal.Date:=now;

TampilkanAbsen;

RBMasuk.Checked:=true;
EdID.SetFocus
end;

procedure TFAbsen.EdIDKeyPress(Sender: TObject; var Key: Char);
begin
if key=char(13) then
begin
ADOKaryawan.Close;
ADOKaryawan.SQL.Clear;
ADOKaryawan.SQL.Add('select * from tbl_Karyawan where Nik="'+EdID.Text+'"');
ADOKaryawan.Open;
if not ADOKaryawan.Eof then
  begin
  BitAbsen.SetFocus;
  EdID.Text:=ADOKaryawanNIK.Value;
  EdNama.Text:=ADOKaryawanNama.Value;
  if ADOKaryawanStatus.Value=True then
    LblStatus.Caption:='Active'
    else
    LblStatus.Caption:='Not Active'
  end
  else
  MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],0)

end

end;

procedure TFAbsen.BitAbsenClick(Sender: TObject);
begin
  ADOKaryawan.Close;
  ADOKaryawan.SQL.Clear;
  ADOKaryawan.SQL.Add('select * from TBL_KARYAwan where NIK="'+EdID.Text+'" and status=True');
  ADOKaryawan.Open;
IF NOT ADOKaryawan.Eof THEN
BEGIN
  If RBMasuk.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN HARI INI !!',mtInformation,[mbOK],0)
      END
      ELSE
        ABSENMASUK;
    End
  ELSE
    If RBPulang.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN where NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',now)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      ABSENKELUAR
      ELSE
      MessageDlg('ANDA BELUM ABSEN, SILAHKAN ABSEN DULU !!',mtError,[mbOK],0)
    End
  ELSE
    If RBIzin.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN !!',mtInformation,[mbOK],0)
      END
      ELSE
        ABSENIZIN;
    End
  ELSE
    If RBSakit.Checked=TRUE Then
    Begin
      ADOCari.Close;
      ADOCari.SQL.Clear;
      ADOCari.SQL.Add('select * from TBL_ABSEN WHERE NIK="'+EdID.Text+'" and tanggalabsen=#'+FormatDateTime('yyyy-MM-dd',DTTanggal.DateTime)+'#');
      ADOCari.Open;
      IF NOT ADOCari.Eof THEN
      BEGIN
        MessageDlg('ANDA SUDAH ABSEN !!',mtInformation,[mbOK],0)
      END
      ELSE
        ABSENSAKIT;
    End;


TampilkanAbsen;
EdID.SetFocus;
END
ELSE
MessageDlg('ID KARYAWAN TIDAK DITEMUKAN ATAU STATUS ANDA SUDAH TIDAK AKTIF !!'+#13+'      silahkan cek lagi pastikan ID karyawan yang anda masukan benar',mtError,[mbOK],0)

end;

procedure TFAbsen.DTTanggalChange(Sender: TObject);
begin
TampilkanAbsen;
end;

procedure TFAbsen.DTTanggalCloseUp(Sender: TObject);
begin
if DTTanggal.DateTime>now then
begin
DTTanggal.Date:=now;
TampilkanAbsen;
RBMasuk.SetFocus;
end;
end;

procedure TFAbsen.BitLookUpClick(Sender: TObject);
begin
FListKaryawan.Label2.Caption:='Karyawan';
FListKaryawan.ShowModal;
end;

procedure TFAbsen.BitCetakClick(Sender: TObject);
begin
fmenu.ShowModal
end;

procedure TFAbsen.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if ADOTampilMasuk.Value > StrToTime('08:00')  then
     TDBGrid(sender).Columns[1].font.Color :=ClRed
     else
     TDBGrid(sender).Canvas.Font.Color := clBlack;
     TDBGrid(sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
