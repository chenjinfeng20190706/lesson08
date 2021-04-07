*** Settings ***
Library         pyLib.keywords.WebOpAdmin       #暂时搞不清楚就用点的方式吧。
#Library         pyLib/keywords/WebOpAdmin
Variables       cfg.py
Suite Setup     run keywords    setupWebTest    AND    loginWebSite    &{userAdmin}[userName]    &{userAdmin}[password]   AND  DeleteAllStudents    AND     DeleteAllClassDatas     AND  DeleteAllClasses    AND      DeleteAllTeachers       AND   DeleteAllCourses
Suite Teardown  tearDownWebTest