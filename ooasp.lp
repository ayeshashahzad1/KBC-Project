% object instantiation and maintenance of integrity constraints

ooasp_class(InstID, ClsID) :- ooasp_class(InstID, ClsID).

ooasp_subclass(InstID, ClsID, SuperClsID) :- ooasp_subclass(InstID, ClsID, SuperClsID).

ooasp_assoc(MdlID, AscnID, Cls1ID, Min1, Max1, Cls2ID, Min2, Max2) :-
    ooasp_assoc(MdlID, AscnID, Cls1ID, Min1, Max1, Cls2ID, Min2, Max2).

ooasp_attribute(MdlID, ClsID, AttrID, Typ) :-
    ooasp_attribute(MdlID, ClsID, AttrID, Typ).

ooasp_attribute_minInclusive(MdlID, ClsID, AttrID, MinVal) :-
    ooasp_attribute_minInclusive(MdlID, ClsID, AttrID, MinVal).

ooasp_attribute_maxInclusive(MdlID, ClsID, AttrID, MaxVal) :-
    ooasp_attribute_maxInclusive(MdlID, ClsID, AttrID, MaxVal).

ooasp_attribute_enum(MdlID, ClsID, AttrID, EnumVal) :-
    ooasp_attribute_enum(MdlID, ClsID, AttrID, EnumVal).

#show ooasp_isa/3.
#show ooasp_associated/4.
#show ooasp_attribute_value/4.



% rule to initialize classes not present in the partial instantiation
{ instantiate_missing_class(Class) : ooasp_class("v1", Class), not instantiated(_, Class) } :-
    not ooasp_subclass("v1", _, Class).

% counting rule to ensure exactly one instance is selected
1 { instantiate_missing_class(Class) : ooasp_class("v1", Class), not instantiated(_, Class) } 1 :-
    ooasp_class("v1", Class),
    not instantiated(_, Class).

% rule to instantiate a missing class
instantiate_missing_class(Class) :-
    ooasp_subclass("v1", Class, Superclass),
    instantiate_missing_class(Superclass),
    assert(ooasp_isa(_, Class, _)).

instantiate_missing_class(Class) :-
    not ooasp_subclass("v1", _, Class),
    assert(ooasp_isa(_, Class, _)).
















