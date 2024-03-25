% Definitions of classes
ooasp_class("version1","HwObject").
ooasp_class("version1","Frame").
ooasp_class("version1","Module").
ooasp_class("version1","ModuleA").
ooasp_class("version1","ModuleB").
ooasp_class("version1","Element").
ooasp_class("version1","ElementA").
ooasp_class("version1","ElementB").

% Class inheritance relationships
ooasp_subclass("version1","Frame","HwObject").
ooasp_subclass("version1","Module","HwObject").
ooasp_subclass("version1","Element","HwObject").
ooasp_subclass("version1","ElementA","Element").
ooasp_subclass("version1","ElementB","Element").
ooasp_subclass("version1","ModuleA","Module").
ooasp_subclass("version1","ModuleB","Module").

% Attributes and associations
% Association for class Frame
ooasp_assoc("version1","Frame_modules","Frame",1,1,"Module",0,5).

% Attribute for class Module
ooasp_attribute("version1","Module","position","integer").
ooasp_attribute_minInclusive("version1","Module","position",1).
ooasp_attribute_maxInclusive("version1","Module","position",5).

% Association for class Element
ooasp_assoc("version1","Element_module","Element",1,1,"Module",1,1).

% Constraints
% Constraint violation related to modules and elements
ooasp_cv(I,module_element_violated(M1,E1)) :-
    ooasp_instantiation(M, I),
    ooasp_associated(I, "Element_module", M1, E1),
    ooasp_isa(I, "ElementA", E1),
    not ooasp_isa(I, "ModuleA", M1).

% Constraint violation for all different modules in a frame
ooasp_cv(I,alldiffviolated(M1,M2,F)) :-
    ooasp_instantiation(M,I),
    ooasp_isa(I,"Module",M1),
    ooasp_isa(I,"Module",M2),
    ooasp_attribute_value(I,"position",M1,P),
    ooasp_attribute_value(I,"position",M2,P),
    ooasp_associated(I,"Frame_modules",F,M1),
    ooasp_associated(I,"Frame_modules",F,M2),
    M1 != M2.