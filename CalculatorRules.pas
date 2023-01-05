unit CalculatorRules;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TOperators = (opSum,opSub,opMult,opDiv);
  TOperations = array [1..2] of Currency;
  TForm1 = class(TForm)
    edtOp1: TEdit;
    edtOp2: TEdit;
    btnSum: TSpeedButton;
    btnSubtract: TSpeedButton;
    btnMultiply: TSpeedButton;
    btnDivide: TSpeedButton;
    labResult: TLabel;
    btnEqual: TSpeedButton;
    bevResult: TBevel;
    labOp: TLabel;
    procedure btnSumClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
  private
    function Calculate(Ops: TOperations; MOperator: Char): Currency;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnEqualClick(Sender: TObject);
var
  Ops: TOperations;
  MOperator: Char;
  MResult: Currency;
begin
  try
    Ops[1]:= StrToFloat(edtOp1.Text);
    Ops[2]:= StrToFloat(edtOp2.Text);
    {This pick up only the first char in the string of labOp}
    MOperator := labOp.Caption[1];
    MResult := Calculate(Ops, MOperator);
    with labResult do
    begin
      if MResult < 0 then
       begin
        {Colors : $BBGGRR}
        Font.Color := $2222B2; {RED}
       end
      else
        Font.Color := $008000; {GREEN}
      Caption := FloatToStr(MResult);
    end;
  except
    on E: EZeroDivide do
      raise EZeroDivide.Create('Cannot be divide a number by zero!');
    on E: Exception do
      ShowMessage('This cannot be calculate!bla');
  end;
end;

procedure TForm1.btnMultiplyClick(Sender: TObject);
begin
  labOp.Caption := '*';
end;

procedure TForm1.btnSubtractClick(Sender: TObject);
begin
  labOp.Caption := '-';
end;

procedure TForm1.btnSumClick(Sender: TObject);
begin
  labOp.Caption := '+';
end;

procedure TForm1.btnDivideClick(Sender: TObject);
begin
  labOp.Caption := '/';
end;

function TForm1.Calculate(Ops:TOperations; MOperator: Char): Currency;
  function Calculation(MOperator: Char): Currency;
  begin
    case MOperator of
      '+':  Result:= Ops[1] + Ops[2];
      '-':  Result:= Ops[1] - Ops[2];
      '*':  Result:= Ops[1] * Ops[2];
      '/':  Result:= Ops[1] / Ops[2];
    end;
  end;
begin
    Result := Calculation(MOperator);
end;

end.
