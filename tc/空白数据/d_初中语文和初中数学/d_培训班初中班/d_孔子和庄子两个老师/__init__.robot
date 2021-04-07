*** Variables ***
@{teach1Courses}     初中语文
@{teach2Courses}     初中数学
*** Settings ***
Library      pyLib.keywords.WebOpAdmin
Suite Setup     run keywords     AddTeacher    孔子     kongzi   孔子老师      1       ${teach1Courses}    AND     AddTeacher    庄子     zhuangzi   庄子老师      2     ${teach2Courses}
Suite Teardown  DeleteAllTeachers