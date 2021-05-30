/*! 
  \file interpreter.cpp
  \brief Main program
*/

/*!
 \mainpage Flex and Bison: Práctica final
 \author   
 \date     2021 - 5 - 30
 \version  2.0
 \note Novelties
	+ New statements: switch, for, do_while
	+ New operators: +:=, -:=, ++, --
	+ New macros
	+ New control errors
	+ New string type and string related functions
	+ many more
*/

// New in example 2
#include <stdio.h>
#include <string>
#include <unistd.h>
//

/////////////////////////////
/* 
  NEW in example 16 
  AST class
  IMPORTANT: must be written before interpreter.tab.h
*/
#include "ast/ast.hpp"
////////////////////////////////////////

#include "./parser/interpreter.tab.h"

int lineNumber = 1; //!< Line counter

/* NEW in example 15 */
bool interactiveMode; //!< Control the interactive mode of execution of the interpreter

/* NEW in example 17 */
int control = 0; //!< To control the interactive mode in "if" and "while" sentences

// New in example 2
extern FILE *yyin;	  //!< Standard input device for yylex()
std::string progname; //!<  Program name
//

//////////////////////////////////////////////
// NEW in example 6

// Use for recovery of runtime errors
#include <setjmp.h>
#include <signal.h>

// Error recovery functions
#include "error/error.hpp"

lp::AST *root; //!< Root of the abstract syntax tree AST
/////////////////////////////////////////////

//////////////////////////////////////////////
// NEW in example 10

#include "table/init.hpp"

/*
 jhmp_buf
    This is an array type capable of storing the information of a calling environment to be restored later.
   This information is filled by calling macro setjmp and can be restored by calling function longjmp.
*/
extern jmp_buf begin; //!<  It enables recovery of runtime errors

//////////////////////////////////////////////
// NEW in example 7

#include "table/table.hpp"

lp::Table table; //!< Table of Symbols

// cout.precision
#include <iostream>
//////////////////////////////////////////////////

//! \name Main program

/*! 
	\brief  Main function
	\param  argc: number of command line parameters
	\param  argv: values of command line parameters
	\return int
	\note   C++ requires that main returns an int value
	\sa     yyparse, yylex
*/
int main(int argc, char *argv[])
{
	/* Option -t needed to debug */
	/* 1, on; 0, off */
	yydebug = 0;

	/* 
   If the input file exists 
      then 
           it is set as input device for yylex();
      otherwise
            the input device is the keyboard (stdin)
 	*/

	switch (argc)
	{
	case 1:
		interactiveMode = true;
		break;

	case 2:
		std::string file = argv[1];
		if ((file[file.size() - 2] != '.') or (file[file.size() - 1] != 'e'))
		{
			std::cerr << "[ERROR] The extension of the file \'" << file << "\' is not \'.e\'"
					  << std::endl;
			exit(-1);
		}
		else if (file.size() < 3)
		{
			std::cerr << "[ERROR] The name \'" << file << "\' of the file is invalid"
					  << std::endl;
			exit(-1);
		}
		else if (access(argv[1], F_OK) != 0)
		{
			std::cerr << "[ERROR] The file \'" << file << "\' does not exist"
					  << std::endl;
			exit(-1);
		}

		yyin = fopen(argv[1], "r");
		interactiveMode = false;
	}

	// Copy the name of the interpreter
	progname = argv[0];

	/* Number of decimal places */
	std::cout.precision(7);

	/* 
   Table of symbols initialization 
   Must be written before the recovery sentence: setjmp
 */
	init(table);

	/* Sets a viable state to continue after a runtime error */
	setjmp(begin);

	/* The name of the function to handle floating-point errors is set */
	signal(SIGFPE, fpecatch);

	// Parser function
	yyparse();

	if (interactiveMode == false)
	{
		/* NEW in example 15 */
		/* root->print(); */
		root->evaluate();
	}

	/* End of program */
	return 0;
}
