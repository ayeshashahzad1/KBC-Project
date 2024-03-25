% It's not working for the case when the classes and objects are the same.
ooasp_instantiation("v1", "c1").
ooasp_isa("c1", "ClassA", "Object1").

ooasp_attribute_value("c1", "position", "Object1", 1). 
ooasp_attribute_value("c1", "position", "Object1", 6). 
