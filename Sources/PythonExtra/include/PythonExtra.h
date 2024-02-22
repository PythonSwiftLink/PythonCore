//
//  Header.h
//  
//
//  Created by CodeBuilder on 21/01/2024.
//

#ifndef PythonExtra_h
#define PythonExtra_h
#include "Python.h"
PyObject* PyNone;
PyObject* PyTrue;
PyObject* PyFalse;

PyObject** PySequence_FastItems(PyObject *o);
Py_ssize_t PySequence_FastSize(PyObject *o);

Py_buffer *PyMemoryView_GetBuffer(PyObject *mview);




unsigned int PyUnicode_GetKind(PyObject *o);


PyTypeObject NewPyType(PyTypeObject *type) ;


#endif /* PythonExtra_h */
