% Encoding for instantiation and integrity constraints
ooasp_class(Instance_Id, Class_Id) :- ooasp_class(Instance_Id, Class_Id).

ooasp_subclass(Instance_Id, Class_Id, SuperClass_Id) :- ooasp_subclass(Instance_Id, Class_Id, SuperClass_Id).

ooasp_assoc(Model_Id, Assoc_Id, Class1_Id, MinC1, MaxC1, Class2_Id, MinC2, MaxC2) :-
    ooasp_assoc(Model_Id, Assoc_Id, Class1_Id, MinC1, MaxC1, Class2_Id, MinC2, MaxC2).

ooasp_attribute(Model_Id, Class_Id, Attribute_Id, Type) :-
    ooasp_attribute(Model_Id, Class_Id, Attribute_Id, Type).

ooasp_attribute_minInclusive(Model_Id, Class_Id, Attribute_Id, MinValue) :-
    ooasp_attribute_minInclusive(Model_Id, Class_Id, Attribute_Id, MinValue).

ooasp_attribute_maxInclusive(Model_Id, Class_Id, Attribute_Id, MaxValue) :-
    ooasp_attribute_maxInclusive(Model_Id, Class_Id, Attribute_Id, MaxValue).

ooasp_attribute_enum(Model_Id, Class_Id, Attribute_Id, Val) :-
    ooasp_attribute_enum(Model_Id, Class_Id, Attribute_Id, Val).

#show ooasp_isa/3.
#show ooasp_associated/4.
#show ooasp_attribute_value/4.


