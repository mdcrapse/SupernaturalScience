///xPushableInit()
/// Initializes global pushable instances.
/// This script is called automatically with gml_pragma("global", "...").

// comment this line out if you don't want default initialization
gml_pragma("global", "xPushableInit()");

global._pushable = array_create(0);
global._pushable_num = 0;

