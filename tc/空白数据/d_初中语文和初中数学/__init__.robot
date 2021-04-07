*** Settings ***
Library      pyLib.keywords.WebOpAdmin
Suite Setup  run keywords    DeleteAllCourses
            ...       AND    AddCourse    初中语文     初中语文描述   1
            ...       AND    AddCourse    初中数学     初中数学描述   2
Suite Teardown  DeleteAllCourses