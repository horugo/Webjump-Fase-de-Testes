*Settings*
Documentation    Exercises Tests


Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Test


*Test Cases*
Validar ausência dos botões One, Two, e Four em Buttons ao clicados
    Clica no Campo    ${BTN_ONE_BUTTONS}
    Clica no Campo    ${BTN_TWO_BUTTONS}
    Clica no Campo    ${LINK_FOUR_BUTTONS}

    Campo Nao Visivel    ${BTN_ONE_BUTTONS_NOT_VISIBLE}
    Campo Nao Visivel    ${BTN_TWO_BUTTONS_NOT_VISIBLE}
    Campo Nao Visivel    ${BTN_FOUR_BUTTONS_NOT_VISIBLE}


Validar ausência dos botões One, Two, e Four em IFrame Buttons ao clicados
    Clica no Campo    ${BTN_ONE_IFRAME_BUTTONS}
    Clica no Campo    ${BTN_TWO_IFRAME_BUTTONS}
    Clica no Campo    ${BTN_FOUR_IFRAME_BUTTONS}

    Campo Não Visivel    ${BTN_ONE_IFRAME_BUTTONSNOT_VISIBLE}
    Campo Não Visivel    ${BTN_TWO_IFRAME_BUTTONSNOT_VISIBLE}
    Campo Não Visivel    ${BTN_FOUR_IFRAME_BUTTONSNOT_VISIBLE}

Validar ações em campos diversos
    Preenche Campo                   ${IMPUT_FIELDS_YOUR_FIRST_NAME}    Victor
    Clica no Campo                   ${BTN_ONE_BUTTONS}
    Checkbox Click                   ${CH_OPTION_THREE_BUTTONS}
    Clica no Campo                   ${CO_OPTION}
    Clica no Campo                   ${CO_OPTION_TWO_BUTTONS}
    Espera Elemento Estar Visível    ${IMG_SELENIUM}
