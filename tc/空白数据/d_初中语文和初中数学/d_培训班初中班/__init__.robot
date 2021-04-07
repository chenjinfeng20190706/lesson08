*** Variables ***
@{belongCourses}    初中语文    初中数学
#放在变量表中为什么会出错，找不到${belongCourses}？？？？？？

*** Settings ***
Library      pyLib.keywords.WebOpAdmin
#放在配置文件里面
#Variables    cfg.py
Suite Setup     AddClass    初中班     初中班描述   1       ${belongCourses}
Suite Teardown  DeleteAllClasses

