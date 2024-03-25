% Partial instantiation
ooasp_instantiation("version1", "instance1").
ooasp_isa("instance1", "ClassA", "entity1").
ooasp_isa("instance1", "ClassB", "entity2").
ooasp_isa("instance1", "ClassB", "entity3").

% Associations
ooasp_associated("instance1", "asscn", "entity1", "entity2").
ooasp_associated("instance1", "asscn", "entity1", "entity3").

