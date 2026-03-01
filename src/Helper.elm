module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade list =
    List.map
        (\grade ->
            if grade < 0 then
                Pending

            else if grade >= 7 then
                Approved

            else
                Failed
        )
        list


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction action =
    if action == Cancelled then
        "Pedir reembolso"

    else if action == Delayed || action == OnTime then
        "Esperar"

    else
        "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map airplaneScheduleAction list
