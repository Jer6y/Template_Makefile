# Template_Makefile

### 仓库结构

```c
|
|
|-- demo                         //[使用演示demo]
|	|-- Makefile.build           //[顶层文件Makefile.build]
|	|-- Makefile                 //[顶层Makefile] 【需要用户使用时修改】
|	|-- main.c                   //源C文件-1
|	|-- test.c                   //源C文件-2
|	|-- add_dir                  //包含源C文件的目录
|		|-- Makefile             //[子目录Makefile] 【需要用户使用时创建并添加内容】
|		|-- t4.c                 //源C文件-3
|	|-- include                  //头文件
|		|-- t1.h
|		|-- t2.h
|		|-- t3.h
|		|-- t4.h
|		|-- test.h
|	|-- sub_dir                 //包含源C文件的目录
|		|-- Makefile            //[子目录Makefile] 【需要用户使用时创建并添加内容】
|		|-- t1.c                //源C文件-3
|		|-- t2.c                //源C文件-4
|   	|-- sub                 //包含源C文件的目录
|			|-- Makefile        //[子目录Makefile] 【需要用户使用时创建并添加内容】
|			|-- t3.c            //源C文件-5
|
|-- src                         //[通用Makefile源代码]
	|-- Makefile.build          //[顶层Makefile.build]   【不需要用户修改】		
	|-- Makefile                //[顶层Makefile]         【需要用户使用时修改】
```

### 简介

这是一个通用的Makefile模板，用户可以通过添加简单的变量，引入需要编译的对象，实现对C项目的管理

### 功能

- **多级目录编译构建**
- **同一层多个目录编译构建**
- **用户指定某一个目录下[不包含其下面的子目录]的源C文件的编译选项**
- **用户指定所有源C文件的编译选项**
- **用户指定单个源C文件的编译选项**
- **用户指定链接选项**
- **用户指定特定编译器**
- **反汇编目标文件**
- **提取目标文件符号**

### 文档说明

- [用户使用说明](./doc/User_Manual.md)
- 技术文档说明
