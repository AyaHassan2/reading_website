ö¨
ÂŚ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ľ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12unknown8

Adam/embedding_15/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
N*/
shared_name Adam/embedding_15/embeddings/v

2Adam/embedding_15/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_15/embeddings/v* 
_output_shapes
:
N*
dtype0

Adam/embedding_14/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:°Ą*/
shared_name Adam/embedding_14/embeddings/v

2Adam/embedding_14/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_14/embeddings/v*!
_output_shapes
:°Ą*
dtype0

Adam/embedding_15/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
N*/
shared_name Adam/embedding_15/embeddings/m

2Adam/embedding_15/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_15/embeddings/m* 
_output_shapes
:
N*
dtype0

Adam/embedding_14/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:°Ą*/
shared_name Adam/embedding_14/embeddings/m

2Adam/embedding_14/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_14/embeddings/m*!
_output_shapes
:°Ą*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

embedding_15/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
N*(
shared_nameembedding_15/embeddings

+embedding_15/embeddings/Read/ReadVariableOpReadVariableOpembedding_15/embeddings* 
_output_shapes
:
N*
dtype0

embedding_14/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:°Ą*(
shared_nameembedding_14/embeddings

+embedding_14/embeddings/Read/ReadVariableOpReadVariableOpembedding_14/embeddings*!
_output_shapes
:°Ą*
dtype0

NoOpNoOp
ý*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¸*
valueŽ*BŤ* B¤*
Ű
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
 
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
 
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*

	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 

+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 

0
1*

0
1*
* 
°
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
6trace_0
7trace_1
8trace_2
9trace_3* 
6
:trace_0
;trace_1
<trace_2
=trace_3* 
* 
h
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemrmsvtvu*

Cserving_default* 

0*

0*
* 

Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Itrace_0* 

Jtrace_0* 
ke
VARIABLE_VALUEembedding_14/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
ke
VARIABLE_VALUEembedding_15/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

Wtrace_0* 

Xtrace_0* 
* 
* 
* 

Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

^trace_0* 

_trace_0* 
* 
* 
* 

`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

etrace_0* 

ftrace_0* 
* 
5
0
1
2
3
4
5
6*

g0
h1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
i	variables
j	keras_api
	ktotal
	lcount*
H
m	variables
n	keras_api
	ototal
	pcount
q
_fn_kwargs*

k0
l1*

i	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

m	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUEAdam/embedding_14/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_15/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_14/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_15/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_15Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
{
serving_default_input_16Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_15serving_default_input_16embedding_15/embeddingsembedding_14/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_94842
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ě
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_14/embeddings/Read/ReadVariableOp+embedding_15/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/embedding_14/embeddings/m/Read/ReadVariableOp2Adam/embedding_15/embeddings/m/Read/ReadVariableOp2Adam/embedding_14/embeddings/v/Read/ReadVariableOp2Adam/embedding_15/embeddings/v/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_95061
ť
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_14/embeddingsembedding_15/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/embedding_14/embeddings/mAdam/embedding_15/embeddings/mAdam/embedding_14/embeddings/vAdam/embedding_15/embeddings/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_95116ęŽ
Ě
­
'__inference_model_6_layer_call_fn_94796
input_15
input_16
unknown:
N
	unknown_0:°Ą
identity˘StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinput_15input_16unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_6_layer_call_and_return_conditional_losses_94779o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_15:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_16
Á
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_94974

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Q
%__inference_dot_7_layer_call_fn_94980
inputs_0
inputs_1
identity¸
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dot_7_layer_call_and_return_conditional_losses_94707`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:R N
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
Ľ	
Ľ
G__inference_embedding_15_layer_call_and_return_conditional_losses_94661

inputs*
embedding_lookup_94655:
N
identity˘embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
embedding_lookupResourceGatherembedding_lookup_94655Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/94655*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0˘
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94655*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě
­
'__inference_model_6_layer_call_fn_94852
inputs_0
inputs_1
unknown:
N
	unknown_0:°Ą
identity˘StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_6_layer_call_and_return_conditional_losses_94710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
Ě
­
'__inference_model_6_layer_call_fn_94717
input_15
input_16
unknown:
N
	unknown_0:°Ą
identity˘StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinput_15input_16unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_6_layer_call_and_return_conditional_losses_94710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_15:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_16
Ś	
Ś
G__inference_embedding_14_layer_call_and_return_conditional_losses_94935

inputs+
embedding_lookup_94929:°Ą
identity˘embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
embedding_lookupResourceGatherembedding_lookup_94929Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/94929*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0˘
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94929*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 
˘
 __inference__wrapped_model_94642
input_15
input_16?
+model_6_embedding_15_embedding_lookup_94619:
N@
+model_6_embedding_14_embedding_lookup_94625:°Ą
identity˘%model_6/embedding_14/embedding_lookup˘%model_6/embedding_15/embedding_lookupl
model_6/embedding_15/CastCastinput_16*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_6/embedding_15/embedding_lookupResourceGather+model_6_embedding_15_embedding_lookup_94619model_6/embedding_15/Cast:y:0*
Tindices0*>
_class4
20loc:@model_6/embedding_15/embedding_lookup/94619*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0á
.model_6/embedding_15/embedding_lookup/IdentityIdentity.model_6/embedding_15/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_6/embedding_15/embedding_lookup/94619*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
0model_6/embedding_15/embedding_lookup/Identity_1Identity7model_6/embedding_15/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙l
model_6/embedding_14/CastCastinput_15*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_6/embedding_14/embedding_lookupResourceGather+model_6_embedding_14_embedding_lookup_94625model_6/embedding_14/Cast:y:0*
Tindices0*>
_class4
20loc:@model_6/embedding_14/embedding_lookup/94625*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0á
.model_6/embedding_14/embedding_lookup/IdentityIdentity.model_6/embedding_14/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_6/embedding_14/embedding_lookup/94625*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
0model_6/embedding_14/embedding_lookup/Identity_1Identity7model_6/embedding_14/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙i
model_6/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
model_6/flatten_14/ReshapeReshape9model_6/embedding_14/embedding_lookup/Identity_1:output:0!model_6/flatten_14/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
model_6/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ś
model_6/flatten_15/ReshapeReshape9model_6/embedding_15/embedding_lookup/Identity_1:output:0!model_6/flatten_15/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
model_6/dot_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Š
model_6/dot_7/ExpandDims
ExpandDims#model_6/flatten_14/Reshape:output:0%model_6/dot_7/ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙`
model_6/dot_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :­
model_6/dot_7/ExpandDims_1
ExpandDims#model_6/flatten_15/Reshape:output:0'model_6/dot_7/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
model_6/dot_7/MatMulBatchMatMulV2!model_6/dot_7/ExpandDims:output:0#model_6/dot_7/ExpandDims_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙`
model_6/dot_7/ShapeShapemodel_6/dot_7/MatMul:output:0*
T0*
_output_shapes
:
model_6/dot_7/SqueezeSqueezemodel_6/dot_7/MatMul:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
m
IdentityIdentitymodel_6/dot_7/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp&^model_6/embedding_14/embedding_lookup&^model_6/embedding_15/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2N
%model_6/embedding_14/embedding_lookup%model_6/embedding_14/embedding_lookup2N
%model_6/embedding_15/embedding_lookup%model_6/embedding_15/embedding_lookup:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_15:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_16
Ť
F
*__inference_flatten_14_layer_call_fn_94957

inputs
identityą
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_94685a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ˇ	
l
@__inference_dot_7_layer_call_and_return_conditional_losses_94992
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :r

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :v
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:R N
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
Ľ	
Ľ
G__inference_embedding_15_layer_call_and_return_conditional_losses_94952

inputs*
embedding_lookup_94946:
N
identity˘embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
embedding_lookupResourceGatherembedding_lookup_94946Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/94946*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0˘
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94946*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
đ>
	
!__inference__traced_restore_95116
file_prefix=
(assignvariableop_embedding_14_embeddings:°Ą>
*assignvariableop_1_embedding_15_embeddings:
N&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: $
assignvariableop_7_total_1: $
assignvariableop_8_count_1: "
assignvariableop_9_total: #
assignvariableop_10_count: G
2assignvariableop_11_adam_embedding_14_embeddings_m:°ĄF
2assignvariableop_12_adam_embedding_15_embeddings_m:
NG
2assignvariableop_13_adam_embedding_14_embeddings_v:°ĄF
2assignvariableop_14_adam_embedding_15_embeddings_v:
N
identity_16˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9˘
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Č
valuežBťB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_embedding_14_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp*assignvariableop_1_embedding_15_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_total_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ł
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_embedding_14_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ł
AssignVariableOp_12AssignVariableOp2assignvariableop_12_adam_embedding_15_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ł
AssignVariableOp_13AssignVariableOp2assignvariableop_13_adam_embedding_14_embeddings_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ł
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_embedding_15_embeddings_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ś	
Ś
G__inference_embedding_14_layer_call_and_return_conditional_losses_94675

inputs+
embedding_lookup_94669:°Ą
identity˘embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
embedding_lookupResourceGatherembedding_lookup_94669Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/94669*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0˘
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94669*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

¤
B__inference_model_6_layer_call_and_return_conditional_losses_94890
inputs_0
inputs_17
#embedding_15_embedding_lookup_94867:
N8
#embedding_14_embedding_lookup_94873:°Ą
identity˘embedding_14/embedding_lookup˘embedding_15/embedding_lookupd
embedding_15/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙î
embedding_15/embedding_lookupResourceGather#embedding_15_embedding_lookup_94867embedding_15/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_15/embedding_lookup/94867*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0É
&embedding_15/embedding_lookup/IdentityIdentity&embedding_15/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_15/embedding_lookup/94867*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
(embedding_15/embedding_lookup/Identity_1Identity/embedding_15/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙d
embedding_14/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙î
embedding_14/embedding_lookupResourceGather#embedding_14_embedding_lookup_94873embedding_14/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_14/embedding_lookup/94873*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0É
&embedding_14/embedding_lookup/IdentityIdentity&embedding_14/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_14/embedding_lookup/94873*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
(embedding_14/embedding_lookup/Identity_1Identity/embedding_14/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
flatten_14/ReshapeReshape1embedding_14/embedding_lookup/Identity_1:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
flatten_15/ReshapeReshape1embedding_15/embedding_lookup/Identity_1:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
dot_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_7/ExpandDims
ExpandDimsflatten_14/Reshape:output:0dot_7/ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙X
dot_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_7/ExpandDims_1
ExpandDimsflatten_15/Reshape:output:0dot_7/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
dot_7/MatMulBatchMatMulV2dot_7/ExpandDims:output:0dot_7/ExpandDims_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
dot_7/ShapeShapedot_7/MatMul:output:0*
T0*
_output_shapes
:x
dot_7/SqueezeSqueezedot_7/MatMul:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
e
IdentityIdentitydot_7/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^embedding_14/embedding_lookup^embedding_15/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2>
embedding_14/embedding_lookupembedding_14/embedding_lookup2>
embedding_15/embedding_lookupembedding_15/embedding_lookup:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
Á
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_94685

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
­

,__inference_embedding_14_layer_call_fn_94925

inputs
unknown:°Ą
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_14_layer_call_and_return_conditional_losses_94675t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Á
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_94693

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Á
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_94963

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ć(
Ó
__inference__traced_save_95061
file_prefix6
2savev2_embedding_14_embeddings_read_readvariableop6
2savev2_embedding_15_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_embedding_14_embeddings_m_read_readvariableop=
9savev2_adam_embedding_15_embeddings_m_read_readvariableop=
9savev2_adam_embedding_14_embeddings_v_read_readvariableop=
9savev2_adam_embedding_15_embeddings_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Č
valuežBťB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B ë
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_14_embeddings_read_readvariableop2savev2_embedding_15_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_embedding_14_embeddings_m_read_readvariableop9savev2_adam_embedding_15_embeddings_m_read_readvariableop9savev2_adam_embedding_14_embeddings_v_read_readvariableop9savev2_adam_embedding_15_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*t
_input_shapesc
a: :°Ą:
N: : : : : : : : : :°Ą:
N:°Ą:
N: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:°Ą:&"
 
_output_shapes
:
N:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:°Ą:&"
 
_output_shapes
:
N:'#
!
_output_shapes
:°Ą:&"
 
_output_shapes
:
N:

_output_shapes
: 

¤
B__inference_model_6_layer_call_and_return_conditional_losses_94918
inputs_0
inputs_17
#embedding_15_embedding_lookup_94895:
N8
#embedding_14_embedding_lookup_94901:°Ą
identity˘embedding_14/embedding_lookup˘embedding_15/embedding_lookupd
embedding_15/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙î
embedding_15/embedding_lookupResourceGather#embedding_15_embedding_lookup_94895embedding_15/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_15/embedding_lookup/94895*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0É
&embedding_15/embedding_lookup/IdentityIdentity&embedding_15/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_15/embedding_lookup/94895*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
(embedding_15/embedding_lookup/Identity_1Identity/embedding_15/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙d
embedding_14/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙î
embedding_14/embedding_lookupResourceGather#embedding_14_embedding_lookup_94901embedding_14/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_14/embedding_lookup/94901*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0É
&embedding_14/embedding_lookup/IdentityIdentity&embedding_14/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_14/embedding_lookup/94901*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
(embedding_14/embedding_lookup/Identity_1Identity/embedding_14/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
flatten_14/ReshapeReshape1embedding_14/embedding_lookup/Identity_1:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
flatten_15/ReshapeReshape1embedding_15/embedding_lookup/Identity_1:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
dot_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_7/ExpandDims
ExpandDimsflatten_14/Reshape:output:0dot_7/ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙X
dot_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_7/ExpandDims_1
ExpandDimsflatten_15/Reshape:output:0dot_7/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
dot_7/MatMulBatchMatMulV2dot_7/ExpandDims:output:0dot_7/ExpandDims_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙P
dot_7/ShapeShapedot_7/MatMul:output:0*
T0*
_output_shapes
:x
dot_7/SqueezeSqueezedot_7/MatMul:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
e
IdentityIdentitydot_7/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^embedding_14/embedding_lookup^embedding_15/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2>
embedding_14/embedding_lookupembedding_14/embedding_lookup2>
embedding_15/embedding_lookupembedding_15/embedding_lookup:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
Ź

,__inference_embedding_15_layer_call_fn_94942

inputs
unknown:
N
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_15_layer_call_and_return_conditional_losses_94661t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ť
F
*__inference_flatten_15_layer_call_fn_94968

inputs
identityą
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_94693a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě
­
'__inference_model_6_layer_call_fn_94862
inputs_0
inputs_1
unknown:
N
	unknown_0:°Ą
identity˘StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_6_layer_call_and_return_conditional_losses_94779o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1


B__inference_model_6_layer_call_and_return_conditional_losses_94779

inputs
inputs_1&
embedding_15_94769:
N'
embedding_14_94772:°Ą
identity˘$embedding_14/StatefulPartitionedCall˘$embedding_15/StatefulPartitionedCallî
$embedding_15/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_15_94769*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_15_layer_call_and_return_conditional_losses_94661ě
$embedding_14/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_14_94772*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_14_layer_call_and_return_conditional_losses_94675ă
flatten_14/PartitionedCallPartitionedCall-embedding_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_94685ă
flatten_15/PartitionedCallPartitionedCall-embedding_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_94693ô
dot_7/PartitionedCallPartitionedCall#flatten_14/PartitionedCall:output:0#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dot_7_layer_call_and_return_conditional_losses_94707m
IdentityIdentitydot_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp%^embedding_14/StatefulPartitionedCall%^embedding_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2L
$embedding_14/StatefulPartitionedCall$embedding_14/StatefulPartitionedCall2L
$embedding_15/StatefulPartitionedCall$embedding_15/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


B__inference_model_6_layer_call_and_return_conditional_losses_94710

inputs
inputs_1&
embedding_15_94662:
N'
embedding_14_94676:°Ą
identity˘$embedding_14/StatefulPartitionedCall˘$embedding_15/StatefulPartitionedCallî
$embedding_15/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_15_94662*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_15_layer_call_and_return_conditional_losses_94661ě
$embedding_14/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_14_94676*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_14_layer_call_and_return_conditional_losses_94675ă
flatten_14/PartitionedCallPartitionedCall-embedding_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_94685ă
flatten_15/PartitionedCallPartitionedCall-embedding_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_94693ô
dot_7/PartitionedCallPartitionedCall#flatten_14/PartitionedCall:output:0#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dot_7_layer_call_and_return_conditional_losses_94707m
IdentityIdentitydot_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp%^embedding_14/StatefulPartitionedCall%^embedding_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2L
$embedding_14/StatefulPartitionedCall$embedding_14/StatefulPartitionedCall2L
$embedding_15/StatefulPartitionedCall$embedding_15/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


B__inference_model_6_layer_call_and_return_conditional_losses_94810
input_15
input_16&
embedding_15_94800:
N'
embedding_14_94803:°Ą
identity˘$embedding_14/StatefulPartitionedCall˘$embedding_15/StatefulPartitionedCallî
$embedding_15/StatefulPartitionedCallStatefulPartitionedCallinput_16embedding_15_94800*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_15_layer_call_and_return_conditional_losses_94661î
$embedding_14/StatefulPartitionedCallStatefulPartitionedCallinput_15embedding_14_94803*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_14_layer_call_and_return_conditional_losses_94675ă
flatten_14/PartitionedCallPartitionedCall-embedding_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_94685ă
flatten_15/PartitionedCallPartitionedCall-embedding_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_94693ô
dot_7/PartitionedCallPartitionedCall#flatten_14/PartitionedCall:output:0#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dot_7_layer_call_and_return_conditional_losses_94707m
IdentityIdentitydot_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp%^embedding_14/StatefulPartitionedCall%^embedding_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2L
$embedding_14/StatefulPartitionedCall$embedding_14/StatefulPartitionedCall2L
$embedding_15/StatefulPartitionedCall$embedding_15/StatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_15:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_16


B__inference_model_6_layer_call_and_return_conditional_losses_94824
input_15
input_16&
embedding_15_94814:
N'
embedding_14_94817:°Ą
identity˘$embedding_14/StatefulPartitionedCall˘$embedding_15/StatefulPartitionedCallî
$embedding_15/StatefulPartitionedCallStatefulPartitionedCallinput_16embedding_15_94814*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_15_layer_call_and_return_conditional_losses_94661î
$embedding_14/StatefulPartitionedCallStatefulPartitionedCallinput_15embedding_14_94817*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_14_layer_call_and_return_conditional_losses_94675ă
flatten_14/PartitionedCallPartitionedCall-embedding_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_94685ă
flatten_15/PartitionedCallPartitionedCall-embedding_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_94693ô
dot_7/PartitionedCallPartitionedCall#flatten_14/PartitionedCall:output:0#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dot_7_layer_call_and_return_conditional_losses_94707m
IdentityIdentitydot_7/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp%^embedding_14/StatefulPartitionedCall%^embedding_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 2L
$embedding_14/StatefulPartitionedCall$embedding_14/StatefulPartitionedCall2L
$embedding_15/StatefulPartitionedCall$embedding_15/StatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_15:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_16
Ż	
j
@__inference_dot_7_layer_call_and_return_conditional_losses_94707

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :p

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :v
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ś
Š
#__inference_signature_wrapper_94842
input_15
input_16
unknown:
N
	unknown_0:°Ą
identity˘StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinput_15input_16unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_94642o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_15:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
input_16"żL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*é
serving_defaultŐ
=
input_151
serving_default_input_15:0˙˙˙˙˙˙˙˙˙
=
input_161
serving_default_input_16:0˙˙˙˙˙˙˙˙˙9
dot_70
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ô
ň
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
Ľ
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
Ľ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ň
6trace_0
7trace_1
8trace_2
9trace_32ç
'__inference_model_6_layer_call_fn_94717
'__inference_model_6_layer_call_fn_94852
'__inference_model_6_layer_call_fn_94862
'__inference_model_6_layer_call_fn_94796Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 z6trace_0z7trace_1z8trace_2z9trace_3
ž
:trace_0
;trace_1
<trace_2
=trace_32Ó
B__inference_model_6_layer_call_and_return_conditional_losses_94890
B__inference_model_6_layer_call_and_return_conditional_losses_94918
B__inference_model_6_layer_call_and_return_conditional_losses_94810
B__inference_model_6_layer_call_and_return_conditional_losses_94824Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 z:trace_0z;trace_1z<trace_2z=trace_3
ÖBÓ
 __inference__wrapped_model_94642input_15input_16"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
w
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemrmsvtvu"
	optimizer
,
Cserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
đ
Itrace_02Ó
,__inference_embedding_14_layer_call_fn_94925˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zItrace_0

Jtrace_02î
G__inference_embedding_14_layer_call_and_return_conditional_losses_94935˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zJtrace_0
,:*°Ą2embedding_14/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
đ
Ptrace_02Ó
,__inference_embedding_15_layer_call_fn_94942˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zPtrace_0

Qtrace_02î
G__inference_embedding_15_layer_call_and_return_conditional_losses_94952˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zQtrace_0
+:)
N2embedding_15/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
î
Wtrace_02Ń
*__inference_flatten_14_layer_call_fn_94957˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zWtrace_0

Xtrace_02ě
E__inference_flatten_14_layer_call_and_return_conditional_losses_94963˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zXtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
î
^trace_02Ń
*__inference_flatten_15_layer_call_fn_94968˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z^trace_0

_trace_02ě
E__inference_flatten_15_layer_call_and_return_conditional_losses_94974˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z_trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
é
etrace_02Ě
%__inference_dot_7_layer_call_fn_94980˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zetrace_0

ftrace_02ç
@__inference_dot_7_layer_call_and_return_conditional_losses_94992˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zftrace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
'__inference_model_6_layer_call_fn_94717input_15input_16"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
'__inference_model_6_layer_call_fn_94852inputs/0inputs/1"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
'__inference_model_6_layer_call_fn_94862inputs/0inputs/1"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
B
'__inference_model_6_layer_call_fn_94796input_15input_16"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 B
B__inference_model_6_layer_call_and_return_conditional_losses_94890inputs/0inputs/1"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 B
B__inference_model_6_layer_call_and_return_conditional_losses_94918inputs/0inputs/1"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 B
B__inference_model_6_layer_call_and_return_conditional_losses_94810input_15input_16"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 B
B__inference_model_6_layer_call_and_return_conditional_losses_94824input_15input_16"Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÓBĐ
#__inference_signature_wrapper_94842input_15input_16"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_embedding_14_layer_call_fn_94925inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_embedding_14_layer_call_and_return_conditional_losses_94935inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_embedding_15_layer_call_fn_94942inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_embedding_15_layer_call_and_return_conditional_losses_94952inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_flatten_14_layer_call_fn_94957inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_flatten_14_layer_call_and_return_conditional_losses_94963inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŢBŰ
*__inference_flatten_15_layer_call_fn_94968inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
E__inference_flatten_15_layer_call_and_return_conditional_losses_94974inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĺBâ
%__inference_dot_7_layer_call_fn_94980inputs/0inputs/1"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Bý
@__inference_dot_7_layer_call_and_return_conditional_losses_94992inputs/0inputs/1"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
N
i	variables
j	keras_api
	ktotal
	lcount"
_tf_keras_metric
^
m	variables
n	keras_api
	ototal
	pcount
q
_fn_kwargs"
_tf_keras_metric
.
k0
l1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
:  (2total
:  (2count
.
o0
p1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
1:/°Ą2Adam/embedding_14/embeddings/m
0:.
N2Adam/embedding_15/embeddings/m
1:/°Ą2Adam/embedding_14/embeddings/v
0:.
N2Adam/embedding_15/embeddings/v´
 __inference__wrapped_model_94642Z˘W
P˘M
KH
"
input_15˙˙˙˙˙˙˙˙˙
"
input_16˙˙˙˙˙˙˙˙˙
Ş "-Ş*
(
dot_7
dot_7˙˙˙˙˙˙˙˙˙Ę
@__inference_dot_7_layer_call_and_return_conditional_losses_94992\˘Y
R˘O
MJ
# 
inputs/0˙˙˙˙˙˙˙˙˙
# 
inputs/1˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ą
%__inference_dot_7_layer_call_fn_94980x\˘Y
R˘O
MJ
# 
inputs/0˙˙˙˙˙˙˙˙˙
# 
inputs/1˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ť
G__inference_embedding_14_layer_call_and_return_conditional_losses_94935`/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "*˘'
 
0˙˙˙˙˙˙˙˙˙
 
,__inference_embedding_14_layer_call_fn_94925S/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ť
G__inference_embedding_15_layer_call_and_return_conditional_losses_94952`/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "*˘'
 
0˙˙˙˙˙˙˙˙˙
 
,__inference_embedding_15_layer_call_fn_94942S/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙§
E__inference_flatten_14_layer_call_and_return_conditional_losses_94963^4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
*__inference_flatten_14_layer_call_fn_94957Q4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙§
E__inference_flatten_15_layer_call_and_return_conditional_losses_94974^4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
*__inference_flatten_15_layer_call_fn_94968Q4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ö
B__inference_model_6_layer_call_and_return_conditional_losses_94810b˘_
X˘U
KH
"
input_15˙˙˙˙˙˙˙˙˙
"
input_16˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ö
B__inference_model_6_layer_call_and_return_conditional_losses_94824b˘_
X˘U
KH
"
input_15˙˙˙˙˙˙˙˙˙
"
input_16˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ö
B__inference_model_6_layer_call_and_return_conditional_losses_94890b˘_
X˘U
KH
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ö
B__inference_model_6_layer_call_and_return_conditional_losses_94918b˘_
X˘U
KH
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ž
'__inference_model_6_layer_call_fn_94717b˘_
X˘U
KH
"
input_15˙˙˙˙˙˙˙˙˙
"
input_16˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙Ž
'__inference_model_6_layer_call_fn_94796b˘_
X˘U
KH
"
input_15˙˙˙˙˙˙˙˙˙
"
input_16˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙Ž
'__inference_model_6_layer_call_fn_94852b˘_
X˘U
KH
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙Ž
'__inference_model_6_layer_call_fn_94862b˘_
X˘U
KH
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙Ę
#__inference_signature_wrapper_94842˘m˘j
˘ 
cŞ`
.
input_15"
input_15˙˙˙˙˙˙˙˙˙
.
input_16"
input_16˙˙˙˙˙˙˙˙˙"-Ş*
(
dot_7
dot_7˙˙˙˙˙˙˙˙˙