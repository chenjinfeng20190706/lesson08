*** Settings ***
Library      pyLib.keywords.WebOpAdmin
#Suite Setup  run keywords    AddCourse   初中语文    初中语文描述  1   AND     AddCourse   初中数学    初中数学描述      2
*** Test Cases ***
用例2：添加老师功能tc002
   [Setup]       DeleteAllTeachers
   ${teacherCourses}    evaluate    ["初中语文"]
   AddTeacher    陈锦峰     chenjinfeng     陈锦峰老师   2    ${teacherCourses}
   sleep    1
   ${teacherCourses}    evaluate    ["初中数学"]
   AddTeacher    陈惠       chenhui         陈惠老师     1    ${teacherCourses}
   sleep    1
   ${teacherList}   ListTeachers
   log to console   ${teacherList}
   should be true  $teacherList==['陈惠','陈锦峰']
   [Teardown]  DeleteAllTeachers

用例3：添加培训班tc003
    [Setup]     DeleteAllClasses
    ${belongCourses}    evaluate  ["初中语文","初中数学"]
    AddClass    初中班     初中班描述   1   ${belongCourses}
    ${courseList}   ListClassses
    should be true  $courseList==["初中班"]
    [Teardown]  DeleteAllClasses
#用例2和用例3的初始化条件是一样的，可以放在一个测试用例文件里面。