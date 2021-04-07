*** Settings ***
Library      pyLib.keywords.WebOpAdmin

*** Test Cases ***
用例4：添加培训班期tc004
    [Setup]  DeleteAllClassDatas
    AddClassData  初中班1期     初中班1期描述     1       初中班
    sleep  1
    ${classDataList}    ListClassDatas
    should be true  $classDataList==["初中班1期"]
    [Teardown]  DeleteAllClassDatas

