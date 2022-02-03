
*** Settings ***
Documentation       TEST suite to test Music festival
Library             String
Variables           ${config_dir}/{env}.yaml
Library             REST		${URL}	   ssl_verify=false
Library             Collections
Library             String
Library             RequestsLibrary


*** Variables ***

${ music_request}                      /api/v1/festivals
${expected_response_dict}       Create Dictionary	name='abc'	bands='xyz'	


*** Test Cases ***

Test API Access
    [Tags]  get
    ${resp}=            GET  ${URL}/${music_request} 
    Status Should Be    OK  ${resp}
    
    
Music Festival Data Validation 
    ${resp}=            GET  ${HTTP_LOCAL_SERVER}/anything  ${params}
    Dictionaries Should Be Equal  ${expected_response_dict}  ${resp.json()}[args]
