% minimum cardinality constraint
:- { ooasp_associated(I, A, O1, O2) : ooasp_isa(I, C2, O2) } C2MIN - 1, C2MIN > 0,
    ooasp_assoc(M, A, C1, C1MIN, C1MAX, C2, C2MIN, C2MAX),
    ooasp_instantiation(M, I),
    ooasp_isa(I, C1, O1).

% maximum cardinality constraint
:- { ooasp_associated(I, A, O1, O2) : ooasp_isa(I, C2, O2) } > C2MAX,
    ooasp_assoc(M, A, C1, C1MIN, C1MAX, C2, C2MIN, C2MAX),
    ooasp_instantiation(M, I),
    ooasp_isa(I, C1, O1).

% Constraint to ensure that associations only occur between instantiated objects
:- ooasp_associated(Inst, Assoc, Obj1, Obj2),
    ooasp_isa(Inst, _, Obj1),
    not ooasp_isa(Inst, _, Obj2).

:- ooasp_associated(Inst, Assoc, Obj1, Obj2),
    ooasp_isa(Inst, _, Obj2),
    not ooasp_isa(Inst, _, Obj1).

% Constraint to ensure an object is not an instance of two different classes
:- ooasp_isa(I1, C1, O), ooasp_isa(I1, C2, O), C1 != C2.

% Ensures attribute values are not less than the minimum inclusive value
:- VALUE < MIN,
    ooasp_attribute_value(CONFIG, ATTR, ID, VALUE),
    ooasp_attribute(V, C, ATTR, T),
    ooasp_isa(CONFIG, C, ID),
    ooasp_attribute_minInclusive(V, C, ATTR, MIN),
    ooasp_instantiation(V,CONFIG).


% Ensures attribute values are not greater than the maximum inclusive value
:- VALUE > MAX,
    ooasp_attribute_value(CONFIG, ATTR, ID, VALUE),
    ooasp_attribute(V, C, ATTR, T),
    ooasp_isa(CONFIG, C, ID),
    ooasp_attribute_maxInclusive(V, C, ATTR, MAX),
    ooasp_instantiation(V, CONFIG).

