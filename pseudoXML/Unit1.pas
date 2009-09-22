unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pseudoXML;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    btnSave: TButton;
    btnLoad: TButton;
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEvaluateClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xml : TPseudoXML;
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.btnEvaluateClick(Sender: TObject);
begin
 //memo2.Lines.Text := xml.eval(edtEvaluate.Text);
end;

procedure TForm1.btnLoadClick(Sender: TObject);
begin
  xml.Free;
  xml := TPseudoXML.Create;
  xml.LoadFromFile('test.xml');
  memo1.Lines.Text := xml.ToString;
end;

procedure TForm1.btnSaveClick(Sender: TObject);
var xml2 : TPseudoXML;
begin
  xml2 := TPseudoXML.Create;
  xml2.setFromString(memo1.lines.text);
  memo1.Lines.Text := xml2.ToString;
  xml2.SaveToFile('test.xml');
  xml.free;
  xml := xml2;
end;

procedure TForm1.Button1Click(Sender: TObject);
var xml2 : TPseudoXML;
begin
  xml2 := TPseudoXML.Create;
  xml2.setFromString(memo1.lines.text);
  memo1.Lines.Text := xml2.ToString;
  xml.free;
  xml := xml2;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xml := TPseudoXML.Create;
  xml.setFromString('<test a="b" c="d"><test2 c="d"><test3>hello</test3></test2></test>');
  memo1.Lines.Text := xml.ToString;
  //edtEvaluate.Text := 'test2@c';
  //memo2.Lines.Text := xml.eval(edtEvaluate.Text);
end;

end.
