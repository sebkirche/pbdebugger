PBDebugger
----------

Rather of a true debugger, pbdebug is simply a proof of concept for an implementation in pbscript of a debugging api compliant application.

It can display more or less the same kind of information than DependencyWalker during a profiling:
- loading / unloading of modules
- debug messages

It can attach to an existing process (if you give it its pid) or start a new one an monitor it.
