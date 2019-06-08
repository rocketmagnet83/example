/**
 * \author Steven Truppe
 * \copyright Copyright (C) 2019-2022
 * \mainpage main_page Introduction
 * \page main_page
 *
 * [TOC]
 *
 * = Introduction =
 * = Node Types =
 * The hole application is based on atomic operations so called *nodes*. With 
 * them you can do whatever you want without any programming (but you can 
 * create your own nodes with or without programming).
 *
 *  == Types Nodes ==
 * The backbone of the hole design are the type nodes. All possible variables
 * are defined as typenodes.
 *
 *  == Object Nodes ==
 *  Every object that is part of the application is an object node. A object node can have as many typenodes as it wants to store data. Every typenode can get connected to other nodes which must have the same type as the typenode.
 *
 *  == Operator Nodes ==
 *  Operator nodes are the working horses of the engine. They manipulate/create/update object or typenodes. They are the functions of the engine. You have a full set of default operator nodes and you can create your own nodes with 
 *  a programming language very similar to C++. There are plenty of operator nodes to choose from to build basic applications. Operator nodes can also handle user input events or system events.
 *
 *
 *
 *
 *
 **/
