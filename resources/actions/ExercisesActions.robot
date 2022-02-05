*Settings*
Documentation    Exercises Actions

*Variables*
#Buttons
${BTN_ONE_BUTTONS}      xpath=//div[@id='panel_test_one']/..//button[contains(text(),'One')]
${BTN_TWO_BUTTONS}      xpath=//div[@id='panel_test_one']/..//button[contains(text(),'Two')]     #css=#panel_test_one #btn_two
${LINK_FOUR_BUTTONS}    xpath=//div[@id='panel_test_one']/..//button[contains(text(),'Four')]    #css=#panel_test_one #btn_link

${BTN_ONE_BUTTONS_NOT_VISIBLE}     xpath=//button[contains(text(),'One')]/..//button[@style="display: none;"]
${BTN_TWO_BUTTONS_NOT_VISIBLE}     xpath=//button[contains(text(),'Two')]/..//button[@style="display: none;"]
${BTN_FOUR_BUTTONS_NOT_VISIBLE}    xpath=//button[contains(text(),'Four')]/..//button[@style="display: none;"]

${CH_OPTION_THREE_BUTTONS}    xpath=//div[@id='panel_test_one']/..//input[@id='opt_three']
${CO_OPTION}                  xpath=//div[@id='panel_test_one']/..//select[@id='select_box']
${CO_OPTION_TWO_BUTTONS}      xpath=//div[@id='panel_test_one']/..//option[@value='option_two']

#IFrame Buttons
${BTN_ONE_IFRAME_BUTTONS}     xpath=/html[1]/body[1]/div[1]/p[1]/button[1]/..//button[contains(text(),'One')]
${BTN_TWO_IFRAME_BUTTONS}     xpath=/html[1]/body[1]/div[1]/p[2]/button[1]/..//button[contains(text(),'Two')]     
${BTN_FOUR_IFRAME_BUTTONS}    xpath=/html[1]/body[1]/div[1]/p[4]/button[1]/..//button[contains(text(),'Four')]

${BTN_ONE_IFRAME_BUTTONSNOT_VISIBLE}     xpath=/html[1]/body[1]/div[1]/p[1]/button[1]/..//button[@style="display: none;"]
${BTN_TWO_IFRAME_BUTTONSNOT_VISIBLE}     xpath=/html[1]/body[1]/div[1]/p[2]/button[1]/..//button[@style="display: none;"]
${BTN_FOUR_IFRAME_BUTTONSNOT_VISIBLE}    xpath=/html[1]/body[1]/div[1]/p[4]/button[1]/..//button[@style="display: none;"]

#Finds
${IMPUT_FIELDS_YOUR_FIRST_NAME}    xpath=//div[@id='form_group']/..//input[@id='first_name']
${IMG_SELENIUM}                    xpath=//img[@alt='selenium']


*Keywords*
Clica no Campo
    [Arguments]                      ${campo}
    Espera Elemento Estar Visível    ${campo}    
    Click                            ${campo}

Campo Nao Visivel
    [Arguments]          ${campo}    
    Get Element State    ${campo}    readonly    ==    False

Preenche Campo
    [Arguments]                      ${campo}    ${texto}
    Espera Elemento Estar Visível    ${campo}
    Fill Text                        ${campo}    ${texto}

Checkbox Click
    [Arguments]           ${campo}
    Clica no Campo        ${campo}
    Get Checkbox State    ${campo}    ==    checked

Espera Elemento Estar Visível
    [Arguments]                ${campo} 
    Wait For Elements State    ${campo}     visible    5