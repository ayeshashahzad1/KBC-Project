% for evaluating association constraint violations
ooasp_instantiation("v1", "testInst").
ooasp_isa("testInst", "ClassA", "object1").

ooasp_associated("testInst", "association", "object1", "object2").