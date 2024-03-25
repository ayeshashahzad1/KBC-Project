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