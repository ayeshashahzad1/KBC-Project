% classes
ooasp_class("v1","HwObject").
ooasp_class("v1","Frame").
ooasp_class("v1","Module").
ooasp_class("v1","ModuleA").
ooasp_class("v1","ModuleB").
ooasp_class("v1","Element").
ooasp_class("v1","ElementA").
ooasp_class("v1","ElementB").

% class inheritance
ooasp_subclass("v1","Frame","HwObject").
ooasp_subclass("v1","Module","HwObject").
ooasp_subclass("v1","Element","HwObject").
ooasp_subclass("v1","ElementA","Element").
ooasp_subclass("v1","ElementB","Element").
ooasp_subclass("v1","ModuleA","Module").
ooasp_subclass("v1","ModuleB","Module").

% attributes and associations
% class Frame
ooasp_assoc("v1","Frame_modules","Frame",1,1,"Module",0,5).

% class Module
ooasp_attribute("v1","Module","position","integer").
ooasp_attribute_minInclusive("v1","Module","position",1).
ooasp_attribute_maxInclusive("v1","Module","position",5).

% class Element
ooasp_assoc("v1","Element_module","Element",1,1,"Module",1,1).

% constraints
ooasp_cv(I,module_element_violated(M1,E1)) :-
    ooasp_instantiation(M, I),
    ooasp_associated(I, "Element_module", M1, E1),
    ooasp_isa(I, "ElementA", E1),
    not ooasp_isa(I, "ModuleA", M1).

ooasp_cv(I,alldiffviolated(M1,M2,F)) :-
    ooasp_instantiation(M,I),
    ooasp_isa(I,"Module",M1),
    ooasp_isa(I,"Module",M2),
    ooasp_attribute_value(I,"position",M1,P),
    ooasp_attribute_value(I,"position",M2,P),
    ooasp_associated(I,"Frame_modules",F,M1),
    ooasp_associated(I,"Frame_modules",F,M2),
    M1 != M2.