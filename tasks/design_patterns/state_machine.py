statemachine TrafficLight:
    Red -> Amber
    Amber (if previous == Red) -> Green
    Green -> Amber
    Amber (if previous == Green) -> Red


Red.wait = sleep(2)
Amber.wait = sleep(1)
Green.wait = sleep(2)

