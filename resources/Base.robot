*Settings*
Documentation    Arquivo principal do projeto de automação

Library    Browser   70s

Resource    actions/ExercisesActions.robot

*Keywords*
Start Session
    New Browser          firefox        False 
    New Page             about:blank
    Set Viewport Size    1920           1080

    Go To    https://wejump-automation-test.github.io/qa-test/

Finish Test
    Take Screenshot


