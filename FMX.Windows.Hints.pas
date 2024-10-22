unit FMX.Windows.Hints;

interface

uses
  FMX.Controls, FMX.Forms;

type
  TCustomHint = class(THint)
  protected
    procedure SetEnabled(const Value: Boolean); override;
  public
    procedure SetPosition(const X, Y: Single); override;
    procedure SetHint(const AString: string); override;
  end;

  THintHelper = class helper for THint
    class procedure Clear;
  end;

implementation

{ THintHelper }

class procedure THintHelper.Clear;
begin
  with Self do
    FClassRegistry := [];
end;

{ TMyHint }

procedure TCustomHint.SetEnabled(const Value: Boolean);
begin
  inherited;
end;

procedure TCustomHint.SetHint(const AString: string);
begin
  inherited;
end;

procedure TCustomHint.SetPosition(const X, Y: Single);
begin
  inherited;
end;

initialization
  THint.Clear;
  THint.RegisterClass(TCustomHint);
  Application.OnHint := nil;

end.

