*** Settings ***
Library      pyLib.keywords.WebOpAdmin


*** Test Cases ***
用例3：添加学生tc0003
    [Setup]  DeleteAllStudents
    AddStudent      关羽      guanyu      青龙偃月刀       初中班     初中班1期
    sleep   1
    AddStudent      张飞      zhangfei      什么武器来着忘了       初中班     初中班1期
    sleep   1
    ${studentList}      ListStudents
    should be true  $studentList==["张飞","关羽"]
    [Teardown]  DeleteAllStudents