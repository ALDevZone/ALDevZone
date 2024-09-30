pageextension 50100 CustomerCardExt extends "Customer Card"
{
    actions
    {
        addlast("&Customer")
        {
            action(GetDate)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Day: Integer;
                    DateAux: Date;
                    TodayDate: Date;
                    TodayTime: Time;
                    CurrentDateTime: DateTime;
                    WorkDate: Date;
                begin
                    // Asignamos las fechas a variables segun el tipo que devuelven
                    TodayDate := Today();
                    TodayTime := Time();
                    CurrentDateTime := CurrentDateTime();

                    // La funcion WorkDate te devuelve la fecha configurada en el sistema
                    WorkDate();

                    // Asignamos la fecha de trabajo, se puede asignar de esta forma o mediante otra variable
                    WorkDate := WorkDate(20240820D);
                    Message('Fecha de trabajo: ' + Format(WorkDate));

                    // Se le suma 1 mes a la fecha actual
                    DateAux := CalcDate('1M', TodayDate);
                    // Message(Format(DateAux));

                    // Devuelve el dia del campo "DateAux"
                    Day := Date2DMY(DateAux, 1);

                    // Guardamos la fecha 20/10/2025 en una variable tipo Date
                    DateAux := DMY2Date(20, 10, 2025);

                end;
            }
        }
    }
}