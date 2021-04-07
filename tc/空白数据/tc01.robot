*** Settings ***
Library         pyLib.keywords.WebOpAdmin
#Suite Setup     run keywords    setupWebTest    AND    loginWebSite    auto    sdfsdfsdf
#Suite Teardown  tearDownWebTest

*** Test Cases ***
用例1：添加课程功能tc001
    [Setup]     DeleteAllCourses
    #添加课程1
    AddCourse   java     java描述      2
    sleep  1
    #添加课程2
    AddCourse  python   python描述    1
    sleep  1
    #列出所有的课程，放在一个列表里面的
    ${courses}  ListCourses
    should be true  $courses==['python','java']

    [Teardown]  DeleteAllCourses