??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ??
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
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name41758*
value_dtype0	
o
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name41736*
value_dtype0	
o
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name41714*
value_dtype0	
o
hash_table_3HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name41692*
value_dtype0	
?
sequential_51/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namesequential_51/dense_12/bias
?
/sequential_51/dense_12/bias/Read/ReadVariableOpReadVariableOpsequential_51/dense_12/bias*
_output_shapes
: *
dtype0
?
sequential_51/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *.
shared_namesequential_51/dense_12/kernel
?
1sequential_51/dense_12/kernel/Read/ReadVariableOpReadVariableOpsequential_51/dense_12/kernel*
_output_shapes
:	? *
dtype0
?
embedding_38/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameembedding_38/embeddings
?
+embedding_38/embeddings/Read/ReadVariableOpReadVariableOpembedding_38/embeddings*
_output_shapes

: *
dtype0
?
embedding_37/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameembedding_37/embeddings
?
+embedding_37/embeddings/Read/ReadVariableOpReadVariableOpembedding_37/embeddings*
_output_shapes

: *
dtype0
?
embedding_36/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameembedding_36/embeddings
?
+embedding_36/embeddings/Read/ReadVariableOpReadVariableOpembedding_36/embeddings*
_output_shapes

: *
dtype0
?
embedding_35/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:e *(
shared_nameembedding_35/embeddings
?
+embedding_35/embeddings/Read/ReadVariableOpReadVariableOpembedding_35/embeddings*
_output_shapes

:e *
dtype0
p

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape
:( *
shared_name
candidates
i
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes

:( *
dtype0
n
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameidentifiers
g
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes
:(*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
Const_4Const*
_output_shapes
:d*
dtype0*?
value?B?dB1B10B100B11B12B13B14B15B16B17B18B19B2B20B21B22B23B24B25B26B27B28B29B3B30B31B32B33B34B35B36B37B38B39B4B40B41B42B43B44B45B46B47B48B49B5B50B51B52B53B54B55B56B57B58B59B6B60B61B62B63B64B65B66B67B68B69B7B70B71B72B73B74B75B76B77B78B79B8B80B81B82B83B84B85B86B87B88B89B9B90B91B92B93B94B95B96B97B98B99
?
Const_5Const*
_output_shapes
:d*
dtype0	*?
value?B?	d"?                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       
x
Const_6Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
x
Const_7Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
x
Const_8Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
x
Const_9Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
y
Const_10Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
y
Const_11Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
?
StatefulPartitionedCallStatefulPartitionedCallhash_table_3Const_4Const_5*
Tin
2	*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_46617
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_2Const_6Const_7*
Tin
2		*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_46625
?
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_1Const_8Const_9*
Tin
2		*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_46633
?
StatefulPartitionedCall_3StatefulPartitionedCall
hash_tableConst_10Const_11*
Tin
2		*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_46641
z
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3
?L
Const_12Const"/device:CPU:0*
_output_shapes
: *
dtype0*?K
value?KB?K B?K
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures*
<
0
1
2
3
4
5
	6

7*
.
0
1
2
3
4
5*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
* 
?
 layer_with_weights-0
 layer-0
!layer_with_weights-1
!layer-1
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_build_input_shape*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
* 

)serving_default* 
WQ
VARIABLE_VALUEembedding_35/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_36/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_37/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEembedding_38/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEsequential_51/dense_12/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEsequential_51/dense_12/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*

	0

1*

0*
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
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0user_embedding
1indoorOutdoorScore
2leisureThrillScore
3cheapExpensiveScore*
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

kernel
bias*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
P
?trace_0
@trace_1
Atrace_2
Btrace_3
Ctrace_4
Dtrace_5* 
P
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3
Itrace_4
Jtrace_5* 
* 
* 
 
0
1
2
3*
 
0
1
2
3*
* 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
6
Ptrace_0
Qtrace_1
Rtrace_2
Strace_3* 
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
?
Xlayer-0
Ylayer_with_weights-0
Ylayer-1
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
?
`layer-0
alayer_with_weights-0
alayer-1
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
?
hlayer-0
ilayer_with_weights-0
ilayer-1
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses*
?
player-0
qlayer_with_weights-0
qlayer-1
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses*

0
1*

0
1*
* 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
* 

 0
!1*
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
 
00
11
22
33*
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
$
	keras_api
?lookup_table* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
%
?	keras_api
?lookup_table* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
%
?	keras_api
?lookup_table* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
%
?	keras_api
?lookup_table* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 
* 
* 
* 
* 
* 
* 
* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

X0
Y1*
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
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

`0
a1*
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
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

h0
i1*
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
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 

0*

0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

p0
q1*
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

?trace_0* 

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

?trace_0* 

?trace_0* 

?trace_0* 
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
~
#serving_default_cheapExpensiveScorePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
}
"serving_default_indoorOutdoorScorePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
}
"serving_default_leisureThrillScorePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
serving_default_useridPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_4StatefulPartitionedCall#serving_default_cheapExpensiveScore"serving_default_indoorOutdoorScore"serving_default_leisureThrillScoreserving_default_useridhash_table_3Constembedding_35/embeddingshash_table_2Const_1embedding_36/embeddingshash_table_1Const_2embedding_37/embeddings
hash_tableConst_3embedding_38/embeddingssequential_51/dense_12/kernelsequential_51/dense_12/bias
candidatesidentifiers*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_45542
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenameidentifiers/Read/ReadVariableOpcandidates/Read/ReadVariableOp+embedding_35/embeddings/Read/ReadVariableOp+embedding_36/embeddings/Read/ReadVariableOp+embedding_37/embeddings/Read/ReadVariableOp+embedding_38/embeddings/Read/ReadVariableOp1sequential_51/dense_12/kernel/Read/ReadVariableOp/sequential_51/dense_12/bias/Read/ReadVariableOpConst_12*
Tin
2
*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_46712
?
StatefulPartitionedCall_6StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding_35/embeddingsembedding_36/embeddingsembedding_37/embeddingsembedding_38/embeddingssequential_51/dense_12/kernelsequential_51/dense_12/bias*
Tin
2	*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_46746??
?
?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44180

inputs	@
<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_19_none_lookup_lookuptablefindv2_default_value	$
embedding_37_44176: 
identity??$embedding_37/StatefulPartitionedCall?/integer_lookup_19/None_Lookup/LookupTableFindV2?
/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_19/IdentityIdentity8integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_37/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_19/Identity:output:0embedding_37_44176*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_37_layer_call_and_return_conditional_losses_44175|
IdentityIdentity-embedding_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_37/StatefulPartitionedCall0^integer_lookup_19/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_37/StatefulPartitionedCall$embedding_37/StatefulPartitionedCall2b
/integer_lookup_19/None_Lookup/LookupTableFindV2/integer_lookup_19/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_sequential_51_layer_call_fn_44890
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_44823o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_46573
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
-__inference_user_model_11_layer_call_fn_46172
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cheapexpensivescoreinputs_indooroutdoorscoreinputs_leisurethrillscoreinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44516p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?$
?
!__inference__traced_restore_46746
file_prefix*
assignvariableop_identifiers:(/
assignvariableop_1_candidates:( <
*assignvariableop_2_embedding_35_embeddings:e <
*assignvariableop_3_embedding_36_embeddings: <
*assignvariableop_4_embedding_37_embeddings: <
*assignvariableop_5_embedding_38_embeddings: C
0assignvariableop_6_sequential_51_dense_12_kernel:	? <
.assignvariableop_7_sequential_51_dense_12_bias: 

identity_9??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp*assignvariableop_2_embedding_35_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_embedding_36_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_embedding_37_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp*assignvariableop_5_embedding_38_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp0assignvariableop_6_sequential_51_dense_12_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_sequential_51_dense_12_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference__initializer_465508
4key_value_init41691_lookuptableimportv2_table_handle0
,key_value_init41691_lookuptableimportv2_keys2
.key_value_init41691_lookuptableimportv2_values	
identity??'key_value_init41691/LookupTableImportV2?
'key_value_init41691/LookupTableImportV2LookupTableImportV24key_value_init41691_lookuptableimportv2_table_handle,key_value_init41691_lookuptableimportv2_keys.key_value_init41691_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41691/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :d:d2R
'key_value_init41691/LookupTableImportV2'key_value_init41691/LookupTableImportV2: 

_output_shapes
:d: 

_output_shapes
:d
?
?
-__inference_sequential_51_layer_call_fn_45826
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cheapexpensivescoreinputs_indooroutdoorscoreinputs_leisurethrillscoreinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_44823o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_46560
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name41714*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
G__inference_embedding_35_layer_call_and_return_conditional_losses_43959

inputs	(
embedding_lookup_43953:e 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_43953inputs*
Tindices0	*)
_class
loc:@embedding_lookup/43953*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/43953*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_50_layer_call_fn_44349
integer_lookup_20_input	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_20_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44329o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_20_input:

_output_shapes
: 
?
?
-__inference_sequential_48_layer_call_fn_46351

inputs	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46425

inputs	@
<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_19_none_lookup_lookuptablefindv2_default_value	5
#embedding_37_embedding_lookup_46419: 
identity??embedding_37/embedding_lookup?/integer_lookup_19/None_Lookup/LookupTableFindV2?
/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_19/IdentityIdentity8integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_37/embedding_lookupResourceGather#embedding_37_embedding_lookup_46419#integer_lookup_19/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_37/embedding_lookup/46419*'
_output_shapes
:????????? *
dtype0?
&embedding_37/embedding_lookup/IdentityIdentity&embedding_37/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_37/embedding_lookup/46419*'
_output_shapes
:????????? ?
(embedding_37/embedding_lookup/Identity_1Identity/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_37/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_37/embedding_lookup0^integer_lookup_19/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_37/embedding_lookupembedding_37/embedding_lookup2b
/integer_lookup_19/None_Lookup/LookupTableFindV2/integer_lookup_19/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_user_model_11_layer_call_fn_44575
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44516p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_brute_force_3_layer_call_fn_45406
cheapexpensivescore
indooroutdoorscore
leisurethrillscore

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 

unknown_13:( 

unknown_14:(
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45327o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_49_layer_call_fn_44189
integer_lookup_19_input	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_19_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44180o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_19_input:

_output_shapes
: 
?
?
,__inference_embedding_36_layer_call_fn_46496

inputs	
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_36_layer_call_and_return_conditional_losses_44067o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45452
cheapexpensivescore
indooroutdoorscore
leisurethrillscore

userid
sequential_51_45412
sequential_51_45414	%
sequential_51_45416:e 
sequential_51_45418
sequential_51_45420	%
sequential_51_45422: 
sequential_51_45424
sequential_51_45426	%
sequential_51_45428: 
sequential_51_45430
sequential_51_45432	%
sequential_51_45434: &
sequential_51_45436:	? !
sequential_51_45438: 0
matmul_readvariableop_resource:( 
gather_resource:(

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential_51/StatefulPartitionedCall?
%sequential_51/StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridsequential_51_45412sequential_51_45414sequential_51_45416sequential_51_45418sequential_51_45420sequential_51_45422sequential_51_45424sequential_51_45426sequential_51_45428sequential_51_45430sequential_51_45432sequential_51_45434sequential_51_45436sequential_51_45438*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_45030t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
MatMulMatMul.sequential_51/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_51/StatefulPartitionedCall%sequential_51/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_49_layer_call_fn_46388

inputs	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44180o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_sequential_51_layer_call_fn_44735
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_44704o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46473

inputs	@
<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_20_none_lookup_lookuptablefindv2_default_value	5
#embedding_38_embedding_lookup_46467: 
identity??embedding_38/embedding_lookup?/integer_lookup_20/None_Lookup/LookupTableFindV2?
/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_20/IdentityIdentity8integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_38/embedding_lookupResourceGather#embedding_38_embedding_lookup_46467#integer_lookup_20/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_38/embedding_lookup/46467*'
_output_shapes
:????????? *
dtype0?
&embedding_38/embedding_lookup/IdentityIdentity&embedding_38/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_38/embedding_lookup/46467*'
_output_shapes
:????????? ?
(embedding_38/embedding_lookup/Identity_1Identity/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_38/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_38/embedding_lookup0^integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_38/embedding_lookupembedding_38/embedding_lookup2b
/integer_lookup_20/None_Lookup/LookupTableFindV2/integer_lookup_20/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44047
string_lookup_17_input?
;string_lookup_17_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_17_none_lookup_lookuptablefindv2_default_value	$
embedding_35_44043:e 
identity??$embedding_35/StatefulPartitionedCall?.string_lookup_17/None_Lookup/LookupTableFindV2?
.string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_17_none_lookup_lookuptablefindv2_table_handlestring_lookup_17_input<string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_17/IdentityIdentity7string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_35/StatefulPartitionedCallStatefulPartitionedCall"string_lookup_17/Identity:output:0embedding_35_44043*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_35_layer_call_and_return_conditional_losses_43959|
IdentityIdentity-embedding_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_35/StatefulPartitionedCall/^string_lookup_17/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2`
.string_lookup_17/None_Lookup/LookupTableFindV2.string_lookup_17/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:?????????
0
_user_specified_namestring_lookup_17_input:

_output_shapes
: 
?
?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46460

inputs	@
<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_20_none_lookup_lookuptablefindv2_default_value	5
#embedding_38_embedding_lookup_46454: 
identity??embedding_38/embedding_lookup?/integer_lookup_20/None_Lookup/LookupTableFindV2?
/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_20/IdentityIdentity8integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_38/embedding_lookupResourceGather#embedding_38_embedding_lookup_46454#integer_lookup_20/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_38/embedding_lookup/46454*'
_output_shapes
:????????? *
dtype0?
&embedding_38/embedding_lookup/IdentityIdentity&embedding_38/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_38/embedding_lookup/46454*'
_output_shapes
:????????? ?
(embedding_38/embedding_lookup/Identity_1Identity/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_38/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_38/embedding_lookup0^integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_38/embedding_lookupembedding_38/embedding_lookup2b
/integer_lookup_20/None_Lookup/LookupTableFindV2/integer_lookup_20/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45327
queries
	queries_1
	queries_2
	queries_3
sequential_51_45287
sequential_51_45289	%
sequential_51_45291:e 
sequential_51_45293
sequential_51_45295	%
sequential_51_45297: 
sequential_51_45299
sequential_51_45301	%
sequential_51_45303: 
sequential_51_45305
sequential_51_45307	%
sequential_51_45309: &
sequential_51_45311:	? !
sequential_51_45313: 0
matmul_readvariableop_resource:( 
gather_resource:(

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential_51/StatefulPartitionedCall?
%sequential_51/StatefulPartitionedCallStatefulPartitionedCallqueries	queries_1	queries_2	queries_3sequential_51_45287sequential_51_45289sequential_51_45291sequential_51_45293sequential_51_45295sequential_51_45297sequential_51_45299sequential_51_45301sequential_51_45303sequential_51_45305sequential_51_45307sequential_51_45309sequential_51_45311sequential_51_45313*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_45203t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
MatMulMatMul.sequential_51/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_51/StatefulPartitionedCall%sequential_51/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_embedding_37_layer_call_and_return_conditional_losses_46521

inputs	(
embedding_lookup_46515: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_46515inputs*
Tindices0	*)
_class
loc:@embedding_lookup/46515*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/46515*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
:
__inference__creator_46596
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name41758*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
,__inference_embedding_38_layer_call_fn_46528

inputs	
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_38_layer_call_and_return_conditional_losses_44283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46316

inputs?
;string_lookup_17_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_17_none_lookup_lookuptablefindv2_default_value	5
#embedding_35_embedding_lookup_46310:e 
identity??embedding_35/embedding_lookup?.string_lookup_17/None_Lookup/LookupTableFindV2?
.string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs<string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_17/IdentityIdentity7string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_35/embedding_lookupResourceGather#embedding_35_embedding_lookup_46310"string_lookup_17/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_35/embedding_lookup/46310*'
_output_shapes
:????????? *
dtype0?
&embedding_35/embedding_lookup/IdentityIdentity&embedding_35/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_35/embedding_lookup/46310*'
_output_shapes
:????????? ?
(embedding_35/embedding_lookup/Identity_1Identity/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_35/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_35/embedding_lookup/^string_lookup_17/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_35/embedding_lookupembedding_35/embedding_lookup2`
.string_lookup_17/None_Lookup/LookupTableFindV2.string_lookup_17/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45071
queries
	queries_1
	queries_2
	queries_3
sequential_51_45031
sequential_51_45033	%
sequential_51_45035:e 
sequential_51_45037
sequential_51_45039	%
sequential_51_45041: 
sequential_51_45043
sequential_51_45045	%
sequential_51_45047: 
sequential_51_45049
sequential_51_45051	%
sequential_51_45053: &
sequential_51_45055:	? !
sequential_51_45057: 0
matmul_readvariableop_resource:( 
gather_resource:(

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential_51/StatefulPartitionedCall?
%sequential_51/StatefulPartitionedCallStatefulPartitionedCallqueries	queries_1	queries_2	queries_3sequential_51_45031sequential_51_45033sequential_51_45035sequential_51_45037sequential_51_45039sequential_51_45041sequential_51_45043sequential_51_45045sequential_51_45047sequential_51_45049sequential_51_45051sequential_51_45053sequential_51_45055sequential_51_45057*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_45030t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
MatMulMatMul.sequential_51/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_51/StatefulPartitionedCall%sequential_51/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:LH
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_51_layer_call_fn_45862
inputs_cheapexpensivescore
inputs_indooroutdoorscore
inputs_leisurethrillscore
inputs_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cheapexpensivescoreinputs_indooroutdoorscoreinputs_leisurethrillscoreinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_45030o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_46578
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name41736*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44927
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
user_model_11_44896
user_model_11_44898	%
user_model_11_44900:e 
user_model_11_44902
user_model_11_44904	%
user_model_11_44906: 
user_model_11_44908
user_model_11_44910	%
user_model_11_44912: 
user_model_11_44914
user_model_11_44916	%
user_model_11_44918: !
dense_12_44921:	? 
dense_12_44923: 
identity?? dense_12/StatefulPartitionedCall?%user_model_11/StatefulPartitionedCall?
%user_model_11/StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseriduser_model_11_44896user_model_11_44898user_model_11_44900user_model_11_44902user_model_11_44904user_model_11_44906user_model_11_44908user_model_11_44910user_model_11_44912user_model_11_44914user_model_11_44916user_model_11_44918*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44415?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall.user_model_11/StatefulPartitionedCall:output:0dense_12_44921dense_12_44923*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_44697x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp!^dense_12/StatefulPartitionedCall&^user_model_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%user_model_11/StatefulPartitionedCall%user_model_11/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_46591
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
,
__inference__destroyer_46609
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_465688
4key_value_init41713_lookuptableimportv2_table_handle0
,key_value_init41713_lookuptableimportv2_keys	2
.key_value_init41713_lookuptableimportv2_values	
identity??'key_value_init41713/LookupTableImportV2?
'key_value_init41713/LookupTableImportV2LookupTableImportV24key_value_init41713_lookuptableimportv2_table_handle,key_value_init41713_lookuptableimportv2_keys.key_value_init41713_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41713/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init41713/LookupTableImportV2'key_value_init41713/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45498
cheapexpensivescore
indooroutdoorscore
leisurethrillscore

userid
sequential_51_45458
sequential_51_45460	%
sequential_51_45462:e 
sequential_51_45464
sequential_51_45466	%
sequential_51_45468: 
sequential_51_45470
sequential_51_45472	%
sequential_51_45474: 
sequential_51_45476
sequential_51_45478	%
sequential_51_45480: &
sequential_51_45482:	? !
sequential_51_45484: 0
matmul_readvariableop_resource:( 
gather_resource:(

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential_51/StatefulPartitionedCall?
%sequential_51/StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridsequential_51_45458sequential_51_45460sequential_51_45462sequential_51_45464sequential_51_45466sequential_51_45468sequential_51_45470sequential_51_45472sequential_51_45474sequential_51_45476sequential_51_45478sequential_51_45480sequential_51_45482sequential_51_45484*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_45203t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
MatMulMatMul.sequential_51/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential_51/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential_51/StatefulPartitionedCall%sequential_51/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?]
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46054
inputs_cheapexpensivescore
inputs_indooroutdoorscore
inputs_leisurethrillscore
inputs_userid[
Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handle\
Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_47_embedding_35_embedding_lookup_46010:e \
Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_48_embedding_36_embedding_lookup_46020: \
Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_49_embedding_37_embedding_lookup_46030: \
Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_50_embedding_38_embedding_lookup_46040: :
'dense_12_matmul_readvariableop_resource:	? 6
(dense_12_biasadd_readvariableop_resource: 
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?9user_model_11/sequential_47/embedding_35/embedding_lookup?Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?9user_model_11/sequential_48/embedding_36/embedding_lookup?Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?9user_model_11/sequential_49/embedding_37/embedding_lookup?Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?9user_model_11/sequential_50/embedding_38/embedding_lookup?Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_useridXuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5user_model_11/sequential_47/string_lookup_17/IdentityIdentitySuser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather?user_model_11_sequential_47_embedding_35_embedding_lookup_46010>user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/46010*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityBuser_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/46010*'
_output_shapes
:????????? ?
Duser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
 user_model_11/sequential_48/CastCastinputs_indooroutdoorscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_48/Cast:y:0Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_48/integer_lookup_18/IdentityIdentityTuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather?user_model_11_sequential_48_embedding_36_embedding_lookup_46020?user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/46020*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityBuser_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/46020*'
_output_shapes
:????????? ?
Duser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
 user_model_11/sequential_49/CastCastinputs_leisurethrillscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_49/Cast:y:0Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_49/integer_lookup_19/IdentityIdentityTuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather?user_model_11_sequential_49_embedding_37_embedding_lookup_46030?user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/46030*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityBuser_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/46030*'
_output_shapes
:????????? ?
Duser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
 user_model_11/sequential_50/CastCastinputs_cheapexpensivescore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_50/Cast:y:0Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_50/integer_lookup_20/IdentityIdentityTuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather?user_model_11_sequential_50_embedding_38_embedding_lookup_46040?user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/46040*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityBuser_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/46040*'
_output_shapes
:????????? ?
Duser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_11/concatConcatV2Muser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0"user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_12/MatMulMatMuluser_model_11/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp:^user_model_11/sequential_47/embedding_35/embedding_lookupK^user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:^user_model_11/sequential_48/embedding_36/embedding_lookupL^user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:^user_model_11/sequential_49/embedding_37/embedding_lookupL^user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:^user_model_11/sequential_50/embedding_38/embedding_lookupL^user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2v
9user_model_11/sequential_47/embedding_35/embedding_lookup9user_model_11/sequential_47/embedding_35/embedding_lookup2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_48/embedding_36/embedding_lookup9user_model_11/sequential_48/embedding_36/embedding_lookup2?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_49/embedding_37/embedding_lookup9user_model_11/sequential_49/embedding_37/embedding_lookup2?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_50/embedding_38/embedding_lookup9user_model_11/sequential_50/embedding_38/embedding_lookup2?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46364

inputs	@
<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_18_none_lookup_lookuptablefindv2_default_value	5
#embedding_36_embedding_lookup_46358: 
identity??embedding_36/embedding_lookup?/integer_lookup_18/None_Lookup/LookupTableFindV2?
/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_18/IdentityIdentity8integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_36/embedding_lookupResourceGather#embedding_36_embedding_lookup_46358#integer_lookup_18/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_36/embedding_lookup/46358*'
_output_shapes
:????????? *
dtype0?
&embedding_36/embedding_lookup/IdentityIdentity&embedding_36/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_36/embedding_lookup/46358*'
_output_shapes
:????????? ?
(embedding_36/embedding_lookup/Identity_1Identity/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_36/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_36/embedding_lookup0^integer_lookup_18/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_36/embedding_lookupembedding_36/embedding_lookup2b
/integer_lookup_18/None_Lookup/LookupTableFindV2/integer_lookup_18/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_sequential_50_layer_call_fn_44297
integer_lookup_20_input	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_20_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_20_input:

_output_shapes
: 
?	
?
C__inference_dense_12_layer_call_and_return_conditional_losses_44697

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_47_layer_call_fn_44025
string_lookup_17_input
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_17_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_44005o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:?????????
0
_user_specified_namestring_lookup_17_input:

_output_shapes
: 
?
?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44221

inputs	@
<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_19_none_lookup_lookuptablefindv2_default_value	$
embedding_37_44217: 
identity??$embedding_37/StatefulPartitionedCall?/integer_lookup_19/None_Lookup/LookupTableFindV2?
/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_19/IdentityIdentity8integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_37/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_19/Identity:output:0embedding_37_44217*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_37_layer_call_and_return_conditional_losses_44175|
IdentityIdentity-embedding_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_37/StatefulPartitionedCall0^integer_lookup_19/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_37/StatefulPartitionedCall$embedding_37/StatefulPartitionedCall2b
/integer_lookup_19/None_Lookup/LookupTableFindV2/integer_lookup_19/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44005

inputs?
;string_lookup_17_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_17_none_lookup_lookuptablefindv2_default_value	$
embedding_35_44001:e 
identity??$embedding_35/StatefulPartitionedCall?.string_lookup_17/None_Lookup/LookupTableFindV2?
.string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs<string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_17/IdentityIdentity7string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_35/StatefulPartitionedCallStatefulPartitionedCall"string_lookup_17/Identity:output:0embedding_35_44001*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_35_layer_call_and_return_conditional_losses_43959|
IdentityIdentity-embedding_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_35/StatefulPartitionedCall/^string_lookup_17/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2`
.string_lookup_17/None_Lookup/LookupTableFindV2.string_lookup_17/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference_<lambda>_466178
4key_value_init41691_lookuptableimportv2_table_handle0
,key_value_init41691_lookuptableimportv2_keys2
.key_value_init41691_lookuptableimportv2_values	
identity??'key_value_init41691/LookupTableImportV2?
'key_value_init41691/LookupTableImportV2LookupTableImportV24key_value_init41691_lookuptableimportv2_table_handle,key_value_init41691_lookuptableimportv2_keys.key_value_init41691_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41691/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :d:d2R
'key_value_init41691/LookupTableImportV2'key_value_init41691/LookupTableImportV2: 

_output_shapes
:d: 

_output_shapes
:d
?
?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46412

inputs	@
<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_19_none_lookup_lookuptablefindv2_default_value	5
#embedding_37_embedding_lookup_46406: 
identity??embedding_37/embedding_lookup?/integer_lookup_19/None_Lookup/LookupTableFindV2?
/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_19/IdentityIdentity8integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_37/embedding_lookupResourceGather#embedding_37_embedding_lookup_46406#integer_lookup_19/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_37/embedding_lookup/46406*'
_output_shapes
:????????? *
dtype0?
&embedding_37/embedding_lookup/IdentityIdentity&embedding_37/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_37/embedding_lookup/46406*'
_output_shapes
:????????? ?
(embedding_37/embedding_lookup/Identity_1Identity/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_37/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_37/embedding_lookup0^integer_lookup_19/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_37/embedding_lookupembedding_37/embedding_lookup2b
/integer_lookup_19/None_Lookup/LookupTableFindV2/integer_lookup_19/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?[
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_45203

inputs
inputs_1
inputs_2
inputs_3[
Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handle\
Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_47_embedding_35_embedding_lookup_45159:e \
Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_48_embedding_36_embedding_lookup_45169: \
Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_49_embedding_37_embedding_lookup_45179: \
Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_50_embedding_38_embedding_lookup_45189: :
'dense_12_matmul_readvariableop_resource:	? 6
(dense_12_biasadd_readvariableop_resource: 
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?9user_model_11/sequential_47/embedding_35/embedding_lookup?Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?9user_model_11/sequential_48/embedding_36/embedding_lookup?Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?9user_model_11/sequential_49/embedding_37/embedding_lookup?Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?9user_model_11/sequential_50/embedding_38/embedding_lookup?Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_3Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5user_model_11/sequential_47/string_lookup_17/IdentityIdentitySuser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather?user_model_11_sequential_47_embedding_35_embedding_lookup_45159>user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/45159*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityBuser_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/45159*'
_output_shapes
:????????? ?
Duser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? o
 user_model_11/sequential_48/CastCastinputs_1*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_48/Cast:y:0Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_48/integer_lookup_18/IdentityIdentityTuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather?user_model_11_sequential_48_embedding_36_embedding_lookup_45169?user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/45169*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityBuser_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/45169*'
_output_shapes
:????????? ?
Duser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? o
 user_model_11/sequential_49/CastCastinputs_2*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_49/Cast:y:0Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_49/integer_lookup_19/IdentityIdentityTuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather?user_model_11_sequential_49_embedding_37_embedding_lookup_45179?user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45179*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityBuser_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45179*'
_output_shapes
:????????? ?
Duser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? m
 user_model_11/sequential_50/CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_50/Cast:y:0Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_50/integer_lookup_20/IdentityIdentityTuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather?user_model_11_sequential_50_embedding_38_embedding_lookup_45189?user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45189*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityBuser_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45189*'
_output_shapes
:????????? ?
Duser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_11/concatConcatV2Muser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0"user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_12/MatMulMatMuluser_model_11/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp:^user_model_11/sequential_47/embedding_35/embedding_lookupK^user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:^user_model_11/sequential_48/embedding_36/embedding_lookupL^user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:^user_model_11/sequential_49/embedding_37/embedding_lookupL^user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:^user_model_11/sequential_50/embedding_38/embedding_lookupL^user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2v
9user_model_11/sequential_47/embedding_35/embedding_lookup9user_model_11/sequential_47/embedding_35/embedding_lookup2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_48/embedding_36/embedding_lookup9user_model_11/sequential_48/embedding_36/embedding_lookup2?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_49/embedding_37/embedding_lookup9user_model_11/sequential_49/embedding_37/embedding_lookup2?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_50/embedding_38/embedding_lookup9user_model_11/sequential_50/embedding_38/embedding_lookup2?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_embedding_37_layer_call_and_return_conditional_losses_44175

inputs	(
embedding_lookup_44169: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_44169inputs*
Tindices0	*)
_class
loc:@embedding_lookup/44169*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/44169*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44516

inputs	
inputs_1	
inputs_2	
inputs_3
sequential_47_44485
sequential_47_44487	%
sequential_47_44489:e 
sequential_48_44492
sequential_48_44494	%
sequential_48_44496: 
sequential_49_44499
sequential_49_44501	%
sequential_49_44503: 
sequential_50_44506
sequential_50_44508	%
sequential_50_44510: 
identity??%sequential_47/StatefulPartitionedCall?%sequential_48/StatefulPartitionedCall?%sequential_49/StatefulPartitionedCall?%sequential_50/StatefulPartitionedCall?
%sequential_47/StatefulPartitionedCallStatefulPartitionedCallinputs_3sequential_47_44485sequential_47_44487sequential_47_44489*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_44005?
%sequential_48/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_48_44492sequential_48_44494sequential_48_44496*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44113?
%sequential_49/StatefulPartitionedCallStatefulPartitionedCallinputs_2sequential_49_44499sequential_49_44501sequential_49_44503*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44221?
%sequential_50/StatefulPartitionedCallStatefulPartitionedCallinputssequential_50_44506sequential_50_44508sequential_50_44510*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44329M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2.sequential_47/StatefulPartitionedCall:output:0.sequential_48/StatefulPartitionedCall:output:0.sequential_49/StatefulPartitionedCall:output:0.sequential_50/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp&^sequential_47/StatefulPartitionedCall&^sequential_48/StatefulPartitionedCall&^sequential_49/StatefulPartitionedCall&^sequential_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2N
%sequential_47/StatefulPartitionedCall%sequential_47/StatefulPartitionedCall2N
%sequential_48/StatefulPartitionedCall%sequential_48/StatefulPartitionedCall2N
%sequential_49/StatefulPartitionedCall%sequential_49/StatefulPartitionedCall2N
%sequential_50/StatefulPartitionedCall%sequential_50/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?F
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46217
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_useridM
Isequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleN
Jsequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	C
1sequential_47_embedding_35_embedding_lookup_46182:e N
Jsequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handleO
Ksequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	C
1sequential_48_embedding_36_embedding_lookup_46191: N
Jsequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handleO
Ksequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	C
1sequential_49_embedding_37_embedding_lookup_46200: N
Jsequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handleO
Ksequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	C
1sequential_50_embedding_38_embedding_lookup_46209: 
identity??+sequential_47/embedding_35/embedding_lookup?<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?+sequential_48/embedding_36/embedding_lookup?=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?+sequential_49/embedding_37/embedding_lookup?=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?+sequential_50/embedding_38/embedding_lookup?=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Isequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_useridJsequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
'sequential_47/string_lookup_17/IdentityIdentityEsequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_47/embedding_35/embedding_lookupResourceGather1sequential_47_embedding_35_embedding_lookup_461820sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_47/embedding_35/embedding_lookup/46182*'
_output_shapes
:????????? *
dtype0?
4sequential_47/embedding_35/embedding_lookup/IdentityIdentity4sequential_47/embedding_35/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_47/embedding_35/embedding_lookup/46182*'
_output_shapes
:????????? ?
6sequential_47/embedding_35/embedding_lookup/Identity_1Identity=sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Jsequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs_indooroutdoorscoreKsequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
(sequential_48/integer_lookup_18/IdentityIdentityFsequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_48/embedding_36/embedding_lookupResourceGather1sequential_48_embedding_36_embedding_lookup_461911sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_48/embedding_36/embedding_lookup/46191*'
_output_shapes
:????????? *
dtype0?
4sequential_48/embedding_36/embedding_lookup/IdentityIdentity4sequential_48/embedding_36/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_48/embedding_36/embedding_lookup/46191*'
_output_shapes
:????????? ?
6sequential_48/embedding_36/embedding_lookup/Identity_1Identity=sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Jsequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs_leisurethrillscoreKsequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
(sequential_49/integer_lookup_19/IdentityIdentityFsequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_49/embedding_37/embedding_lookupResourceGather1sequential_49_embedding_37_embedding_lookup_462001sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_49/embedding_37/embedding_lookup/46200*'
_output_shapes
:????????? *
dtype0?
4sequential_49/embedding_37/embedding_lookup/IdentityIdentity4sequential_49/embedding_37/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_49/embedding_37/embedding_lookup/46200*'
_output_shapes
:????????? ?
6sequential_49/embedding_37/embedding_lookup/Identity_1Identity=sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Jsequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs_cheapexpensivescoreKsequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
(sequential_50/integer_lookup_20/IdentityIdentityFsequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_50/embedding_38/embedding_lookupResourceGather1sequential_50_embedding_38_embedding_lookup_462091sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_50/embedding_38/embedding_lookup/46209*'
_output_shapes
:????????? *
dtype0?
4sequential_50/embedding_38/embedding_lookup/IdentityIdentity4sequential_50/embedding_38/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_50/embedding_38/embedding_lookup/46209*'
_output_shapes
:????????? ?
6sequential_50/embedding_38/embedding_lookup/Identity_1Identity=sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2?sequential_47/embedding_35/embedding_lookup/Identity_1:output:0?sequential_48/embedding_36/embedding_lookup/Identity_1:output:0?sequential_49/embedding_37/embedding_lookup/Identity_1:output:0?sequential_50/embedding_38/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp,^sequential_47/embedding_35/embedding_lookup=^sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2,^sequential_48/embedding_36/embedding_lookup>^sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2,^sequential_49/embedding_37/embedding_lookup>^sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2,^sequential_50/embedding_38/embedding_lookup>^sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2Z
+sequential_47/embedding_35/embedding_lookup+sequential_47/embedding_35/embedding_lookup2|
<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22Z
+sequential_48/embedding_36/embedding_lookup+sequential_48/embedding_36/embedding_lookup2~
=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22Z
+sequential_49/embedding_37/embedding_lookup+sequential_49/embedding_37/embedding_lookup2~
=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22Z
+sequential_50/embedding_38/embedding_lookup+sequential_50/embedding_38/embedding_lookup2~
=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44704

inputs	
inputs_1	
inputs_2	
inputs_3
user_model_11_44662
user_model_11_44664	%
user_model_11_44666:e 
user_model_11_44668
user_model_11_44670	%
user_model_11_44672: 
user_model_11_44674
user_model_11_44676	%
user_model_11_44678: 
user_model_11_44680
user_model_11_44682	%
user_model_11_44684: !
dense_12_44698:	? 
dense_12_44700: 
identity?? dense_12/StatefulPartitionedCall?%user_model_11/StatefulPartitionedCall?
%user_model_11/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3user_model_11_44662user_model_11_44664user_model_11_44666user_model_11_44668user_model_11_44670user_model_11_44672user_model_11_44674user_model_11_44676user_model_11_44678user_model_11_44680user_model_11_44682user_model_11_44684*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44415?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall.user_model_11/StatefulPartitionedCall:output:0dense_12_44698dense_12_44700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_44697x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp!^dense_12/StatefulPartitionedCall&^user_model_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%user_model_11/StatefulPartitionedCall%user_model_11/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44288

inputs	@
<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_20_none_lookup_lookuptablefindv2_default_value	$
embedding_38_44284: 
identity??$embedding_38/StatefulPartitionedCall?/integer_lookup_20/None_Lookup/LookupTableFindV2?
/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_20/IdentityIdentity8integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_38/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_20/Identity:output:0embedding_38_44284*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_38_layer_call_and_return_conditional_losses_44283|
IdentityIdentity-embedding_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_38/StatefulPartitionedCall0^integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_38/StatefulPartitionedCall$embedding_38/StatefulPartitionedCall2b
/integer_lookup_20/None_Lookup/LookupTableFindV2/integer_lookup_20/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_embedding_36_layer_call_and_return_conditional_losses_44067

inputs	(
embedding_lookup_44061: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_44061inputs*
Tindices0	*)
_class
loc:@embedding_lookup/44061*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/44061*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_51_layer_call_fn_45790
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cheapexpensivescoreinputs_indooroutdoorscoreinputs_leisurethrillscoreinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_44704o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_49_layer_call_fn_44241
integer_lookup_19_input	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_19_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_19_input:

_output_shapes
: 
?
?
-__inference_sequential_48_layer_call_fn_44081
integer_lookup_18_input	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_18_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_18_input:

_output_shapes
: 
?
?
-__inference_sequential_47_layer_call_fn_43973
string_lookup_17_input
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_17_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_43964o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:?????????
0
_user_specified_namestring_lookup_17_input:

_output_shapes
: 
?t
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45690
queries_cheapexpensivescore
queries_indooroutdoorscore
queries_leisurethrillscore
queries_useridi
esequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handlej
fsequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_47_embedding_35_embedding_lookup_45636:e j
fsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handlek
gsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_48_embedding_36_embedding_lookup_45646: j
fsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handlek
gsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_49_embedding_37_embedding_lookup_45656: j
fsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handlek
gsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_50_embedding_38_embedding_lookup_45666: H
5sequential_51_dense_12_matmul_readvariableop_resource:	? D
6sequential_51_dense_12_biasadd_readvariableop_resource: 0
matmul_readvariableop_resource:( 
gather_resource:(

identity_1

identity_2??Gather?MatMul/ReadVariableOp?-sequential_51/dense_12/BiasAdd/ReadVariableOp?,sequential_51/dense_12/MatMul/ReadVariableOp?Gsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup?Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?Gsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup?Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?Gsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup?Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?Gsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup?Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2esequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handlequeries_useridfsequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Csequential_51/user_model_11/sequential_47/string_lookup_17/IdentityIdentityasequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_47_embedding_35_embedding_lookup_45636Lsequential_51/user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/45636*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/45636*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
.sequential_51/user_model_11/sequential_48/CastCastqueries_indooroutdoorscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2fsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle2sequential_51/user_model_11/sequential_48/Cast:y:0gsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential_51/user_model_11/sequential_48/integer_lookup_18/IdentityIdentitybsequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_48_embedding_36_embedding_lookup_45646Msequential_51/user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/45646*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/45646*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
.sequential_51/user_model_11/sequential_49/CastCastqueries_leisurethrillscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2fsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle2sequential_51/user_model_11/sequential_49/Cast:y:0gsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential_51/user_model_11/sequential_49/integer_lookup_19/IdentityIdentitybsequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_49_embedding_37_embedding_lookup_45656Msequential_51/user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/45656*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/45656*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
.sequential_51/user_model_11/sequential_50/CastCastqueries_cheapexpensivescore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2fsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle2sequential_51/user_model_11/sequential_50/Cast:y:0gsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential_51/user_model_11/sequential_50/integer_lookup_20/IdentityIdentitybsequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_50_embedding_38_embedding_lookup_45666Msequential_51/user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/45666*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/45666*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? i
'sequential_51/user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_51/user_model_11/concatConcatV2[sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0[sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0[sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0[sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:00sequential_51/user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
,sequential_51/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_51_dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
sequential_51/dense_12/MatMulMatMul+sequential_51/user_model_11/concat:output:04sequential_51/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
-sequential_51/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_51_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_51/dense_12/BiasAddBiasAdd'sequential_51/dense_12/MatMul:product:05sequential_51/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
MatMulMatMul'sequential_51/dense_12/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp.^sequential_51/dense_12/BiasAdd/ReadVariableOp-^sequential_51/dense_12/MatMul/ReadVariableOpH^sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupY^sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2H^sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupZ^sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2H^sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupZ^sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2H^sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupZ^sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-sequential_51/dense_12/BiasAdd/ReadVariableOp-sequential_51/dense_12/BiasAdd/ReadVariableOp2\
,sequential_51/dense_12/MatMul/ReadVariableOp,sequential_51/dense_12/MatMul/ReadVariableOp2?
Gsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupGsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup2?
Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22?
Gsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupGsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup2?
Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22?
Gsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupGsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup2?
Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22?
Gsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupGsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup2?
Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:` \
#
_output_shapes
:?????????
5
_user_specified_namequeries/cheapExpensiveScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/indoorOutdoorScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/leisureThrillScore:SO
#
_output_shapes
:?????????
(
_user_specified_namequeries/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_47_layer_call_fn_46303

inputs
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_44005o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46329

inputs?
;string_lookup_17_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_17_none_lookup_lookuptablefindv2_default_value	5
#embedding_35_embedding_lookup_46323:e 
identity??embedding_35/embedding_lookup?.string_lookup_17/None_Lookup/LookupTableFindV2?
.string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs<string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_17/IdentityIdentity7string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_35/embedding_lookupResourceGather#embedding_35_embedding_lookup_46323"string_lookup_17/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_35/embedding_lookup/46323*'
_output_shapes
:????????? *
dtype0?
&embedding_35/embedding_lookup/IdentityIdentity&embedding_35/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_35/embedding_lookup/46323*'
_output_shapes
:????????? ?
(embedding_35/embedding_lookup/Identity_1Identity/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_35/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_35/embedding_lookup/^string_lookup_17/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_35/embedding_lookupembedding_35/embedding_lookup2`
.string_lookup_17/None_Lookup/LookupTableFindV2.string_lookup_17/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_brute_force_3_layer_call_fn_45108
cheapexpensivescore
indooroutdoorscore
leisurethrillscore

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 

unknown_13:( 

unknown_14:(
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45071o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_47_layer_call_and_return_conditional_losses_43964

inputs?
;string_lookup_17_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_17_none_lookup_lookuptablefindv2_default_value	$
embedding_35_43960:e 
identity??$embedding_35/StatefulPartitionedCall?.string_lookup_17/None_Lookup/LookupTableFindV2?
.string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs<string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_17/IdentityIdentity7string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_35/StatefulPartitionedCallStatefulPartitionedCall"string_lookup_17/Identity:output:0embedding_35_43960*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_35_layer_call_and_return_conditional_losses_43959|
IdentityIdentity-embedding_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_35/StatefulPartitionedCall/^string_lookup_17/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2`
.string_lookup_17/None_Lookup/LookupTableFindV2.string_lookup_17/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?Z
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46000
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_userid[
Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handle\
Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_47_embedding_35_embedding_lookup_45959:e \
Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_48_embedding_36_embedding_lookup_45968: \
Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_49_embedding_37_embedding_lookup_45977: \
Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_50_embedding_38_embedding_lookup_45986: :
'dense_12_matmul_readvariableop_resource:	? 6
(dense_12_biasadd_readvariableop_resource: 
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?9user_model_11/sequential_47/embedding_35/embedding_lookup?Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?9user_model_11/sequential_48/embedding_36/embedding_lookup?Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?9user_model_11/sequential_49/embedding_37/embedding_lookup?Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?9user_model_11/sequential_50/embedding_38/embedding_lookup?Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_useridXuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5user_model_11/sequential_47/string_lookup_17/IdentityIdentitySuser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather?user_model_11_sequential_47_embedding_35_embedding_lookup_45959>user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/45959*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityBuser_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/45959*'
_output_shapes
:????????? ?
Duser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs_indooroutdoorscoreYuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_48/integer_lookup_18/IdentityIdentityTuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather?user_model_11_sequential_48_embedding_36_embedding_lookup_45968?user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/45968*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityBuser_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/45968*'
_output_shapes
:????????? ?
Duser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs_leisurethrillscoreYuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_49/integer_lookup_19/IdentityIdentityTuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather?user_model_11_sequential_49_embedding_37_embedding_lookup_45977?user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45977*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityBuser_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45977*'
_output_shapes
:????????? ?
Duser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs_cheapexpensivescoreYuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_50/integer_lookup_20/IdentityIdentityTuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather?user_model_11_sequential_50_embedding_38_embedding_lookup_45986?user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45986*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityBuser_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45986*'
_output_shapes
:????????? ?
Duser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_11/concatConcatV2Muser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0"user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_12/MatMulMatMuluser_model_11/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp:^user_model_11/sequential_47/embedding_35/embedding_lookupK^user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:^user_model_11/sequential_48/embedding_36/embedding_lookupL^user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:^user_model_11/sequential_49/embedding_37/embedding_lookupL^user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:^user_model_11/sequential_50/embedding_38/embedding_lookupL^user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2v
9user_model_11/sequential_47/embedding_35/embedding_lookup9user_model_11/sequential_47/embedding_35/embedding_lookup2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_48/embedding_36/embedding_lookup9user_model_11/sequential_48/embedding_36/embedding_lookup2?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_49/embedding_37/embedding_lookup9user_model_11/sequential_49/embedding_37/embedding_lookup2?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_50/embedding_38/embedding_lookup9user_model_11/sequential_50/embedding_38/embedding_lookup2?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_embedding_35_layer_call_and_return_conditional_losses_46489

inputs	(
embedding_lookup_46483:e 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_46483inputs*
Tindices0	*)
_class
loc:@embedding_lookup/46483*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/46483*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_48_layer_call_fn_44133
integer_lookup_18_input	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinteger_lookup_18_inputunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_18_input:

_output_shapes
: 
?t
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45754
queries_cheapexpensivescore
queries_indooroutdoorscore
queries_leisurethrillscore
queries_useridi
esequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handlej
fsequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_47_embedding_35_embedding_lookup_45700:e j
fsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handlek
gsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_48_embedding_36_embedding_lookup_45710: j
fsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handlek
gsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_49_embedding_37_embedding_lookup_45720: j
fsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handlek
gsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	_
Msequential_51_user_model_11_sequential_50_embedding_38_embedding_lookup_45730: H
5sequential_51_dense_12_matmul_readvariableop_resource:	? D
6sequential_51_dense_12_biasadd_readvariableop_resource: 0
matmul_readvariableop_resource:( 
gather_resource:(

identity_1

identity_2??Gather?MatMul/ReadVariableOp?-sequential_51/dense_12/BiasAdd/ReadVariableOp?,sequential_51/dense_12/MatMul/ReadVariableOp?Gsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup?Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?Gsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup?Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?Gsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup?Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?Gsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup?Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2esequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handlequeries_useridfsequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Csequential_51/user_model_11/sequential_47/string_lookup_17/IdentityIdentityasequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_47_embedding_35_embedding_lookup_45700Lsequential_51/user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/45700*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/45700*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
.sequential_51/user_model_11/sequential_48/CastCastqueries_indooroutdoorscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2fsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle2sequential_51/user_model_11/sequential_48/Cast:y:0gsequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential_51/user_model_11/sequential_48/integer_lookup_18/IdentityIdentitybsequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_48_embedding_36_embedding_lookup_45710Msequential_51/user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/45710*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/45710*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
.sequential_51/user_model_11/sequential_49/CastCastqueries_leisurethrillscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2fsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle2sequential_51/user_model_11/sequential_49/Cast:y:0gsequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential_51/user_model_11/sequential_49/integer_lookup_19/IdentityIdentitybsequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_49_embedding_37_embedding_lookup_45720Msequential_51/user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/45720*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/45720*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
.sequential_51/user_model_11/sequential_50/CastCastqueries_cheapexpensivescore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2fsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle2sequential_51/user_model_11/sequential_50/Cast:y:0gsequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential_51/user_model_11/sequential_50/integer_lookup_20/IdentityIdentitybsequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupResourceGatherMsequential_51_user_model_11_sequential_50_embedding_38_embedding_lookup_45730Msequential_51/user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*`
_classV
TRloc:@sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/45730*'
_output_shapes
:????????? *
dtype0?
Psequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityPsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*`
_classV
TRloc:@sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/45730*'
_output_shapes
:????????? ?
Rsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityYsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? i
'sequential_51/user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_51/user_model_11/concatConcatV2[sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0[sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0[sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0[sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:00sequential_51/user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
,sequential_51/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_51_dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
sequential_51/dense_12/MatMulMatMul+sequential_51/user_model_11/concat:output:04sequential_51/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
-sequential_51/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_51_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_51/dense_12/BiasAddBiasAdd'sequential_51/dense_12/MatMul:product:05sequential_51/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
MatMulMatMul'sequential_51/dense_12/BiasAdd:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^Gather^MatMul/ReadVariableOp.^sequential_51/dense_12/BiasAdd/ReadVariableOp-^sequential_51/dense_12/MatMul/ReadVariableOpH^sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupY^sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2H^sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupZ^sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2H^sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupZ^sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2H^sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupZ^sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-sequential_51/dense_12/BiasAdd/ReadVariableOp-sequential_51/dense_12/BiasAdd/ReadVariableOp2\
,sequential_51/dense_12/MatMul/ReadVariableOp,sequential_51/dense_12/MatMul/ReadVariableOp2?
Gsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupGsequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup2?
Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Xsequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22?
Gsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupGsequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup2?
Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Ysequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22?
Gsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupGsequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup2?
Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Ysequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22?
Gsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupGsequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup2?
Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Ysequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:` \
#
_output_shapes
:?????????
5
_user_specified_namequeries/cheapExpensiveScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/indoorOutdoorScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/leisureThrillScore:SO
#
_output_shapes
:?????????
(
_user_specified_namequeries/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44823

inputs	
inputs_1	
inputs_2	
inputs_3
user_model_11_44792
user_model_11_44794	%
user_model_11_44796:e 
user_model_11_44798
user_model_11_44800	%
user_model_11_44802: 
user_model_11_44804
user_model_11_44806	%
user_model_11_44808: 
user_model_11_44810
user_model_11_44812	%
user_model_11_44814: !
dense_12_44817:	? 
dense_12_44819: 
identity?? dense_12/StatefulPartitionedCall?%user_model_11/StatefulPartitionedCall?
%user_model_11/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3user_model_11_44792user_model_11_44794user_model_11_44796user_model_11_44798user_model_11_44800user_model_11_44802user_model_11_44804user_model_11_44806user_model_11_44808user_model_11_44810user_model_11_44812user_model_11_44814*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44516?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall.user_model_11/StatefulPartitionedCall:output:0dense_12_44817dense_12_44819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_44697x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp!^dense_12/StatefulPartitionedCall&^user_model_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%user_model_11/StatefulPartitionedCall%user_model_11/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_48_layer_call_fn_46340

inputs	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44036
string_lookup_17_input?
;string_lookup_17_none_lookup_lookuptablefindv2_table_handle@
<string_lookup_17_none_lookup_lookuptablefindv2_default_value	$
embedding_35_44032:e 
identity??$embedding_35/StatefulPartitionedCall?.string_lookup_17/None_Lookup/LookupTableFindV2?
.string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2;string_lookup_17_none_lookup_lookuptablefindv2_table_handlestring_lookup_17_input<string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_17/IdentityIdentity7string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_35/StatefulPartitionedCallStatefulPartitionedCall"string_lookup_17/Identity:output:0embedding_35_44032*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_35_layer_call_and_return_conditional_losses_43959|
IdentityIdentity-embedding_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_35/StatefulPartitionedCall/^string_lookup_17/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2`
.string_lookup_17/None_Lookup/LookupTableFindV2.string_lookup_17/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:?????????
0
_user_specified_namestring_lookup_17_input:

_output_shapes
: 
?
?
__inference_<lambda>_466418
4key_value_init41757_lookuptableimportv2_table_handle0
,key_value_init41757_lookuptableimportv2_keys	2
.key_value_init41757_lookuptableimportv2_values	
identity??'key_value_init41757/LookupTableImportV2?
'key_value_init41757/LookupTableImportV2LookupTableImportV24key_value_init41757_lookuptableimportv2_table_handle,key_value_init41757_lookuptableimportv2_keys.key_value_init41757_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41757/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init41757/LookupTableImportV2'key_value_init41757/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
(__inference_dense_12_layer_call_fn_46271

inputs
unknown:	? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_44697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_45542
cheapexpensivescore
indooroutdoorscore
leisurethrillscore

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 

unknown_13:( 

unknown_14:(
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_43939o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?]
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46108
inputs_cheapexpensivescore
inputs_indooroutdoorscore
inputs_leisurethrillscore
inputs_userid[
Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handle\
Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_47_embedding_35_embedding_lookup_46064:e \
Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_48_embedding_36_embedding_lookup_46074: \
Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_49_embedding_37_embedding_lookup_46084: \
Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_50_embedding_38_embedding_lookup_46094: :
'dense_12_matmul_readvariableop_resource:	? 6
(dense_12_biasadd_readvariableop_resource: 
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?9user_model_11/sequential_47/embedding_35/embedding_lookup?Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?9user_model_11/sequential_48/embedding_36/embedding_lookup?Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?9user_model_11/sequential_49/embedding_37/embedding_lookup?Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?9user_model_11/sequential_50/embedding_38/embedding_lookup?Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_useridXuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5user_model_11/sequential_47/string_lookup_17/IdentityIdentitySuser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather?user_model_11_sequential_47_embedding_35_embedding_lookup_46064>user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/46064*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityBuser_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/46064*'
_output_shapes
:????????? ?
Duser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
 user_model_11/sequential_48/CastCastinputs_indooroutdoorscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_48/Cast:y:0Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_48/integer_lookup_18/IdentityIdentityTuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather?user_model_11_sequential_48_embedding_36_embedding_lookup_46074?user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/46074*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityBuser_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/46074*'
_output_shapes
:????????? ?
Duser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
 user_model_11/sequential_49/CastCastinputs_leisurethrillscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_49/Cast:y:0Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_49/integer_lookup_19/IdentityIdentityTuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather?user_model_11_sequential_49_embedding_37_embedding_lookup_46084?user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/46084*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityBuser_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/46084*'
_output_shapes
:????????? ?
Duser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
 user_model_11/sequential_50/CastCastinputs_cheapexpensivescore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_50/Cast:y:0Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_50/integer_lookup_20/IdentityIdentityTuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather?user_model_11_sequential_50_embedding_38_embedding_lookup_46094?user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/46094*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityBuser_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/46094*'
_output_shapes
:????????? ?
Duser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_11/concatConcatV2Muser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0"user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_12/MatMulMatMuluser_model_11/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp:^user_model_11/sequential_47/embedding_35/embedding_lookupK^user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:^user_model_11/sequential_48/embedding_36/embedding_lookupL^user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:^user_model_11/sequential_49/embedding_37/embedding_lookupL^user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:^user_model_11/sequential_50/embedding_38/embedding_lookupL^user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2v
9user_model_11/sequential_47/embedding_35/embedding_lookup9user_model_11/sequential_47/embedding_35/embedding_lookup2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_48/embedding_36/embedding_lookup9user_model_11/sequential_48/embedding_36/embedding_lookup2?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_49/embedding_37/embedding_lookup9user_model_11/sequential_49/embedding_37/embedding_lookup2?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_50/embedding_38/embedding_lookup9user_model_11/sequential_50/embedding_38/embedding_lookup2?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_embedding_37_layer_call_fn_46512

inputs	
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_37_layer_call_and_return_conditional_losses_44175o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44263
integer_lookup_19_input	@
<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_19_none_lookup_lookuptablefindv2_default_value	$
embedding_37_44259: 
identity??$embedding_37/StatefulPartitionedCall?/integer_lookup_19/None_Lookup/LookupTableFindV2?
/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinteger_lookup_19_input=integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_19/IdentityIdentity8integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_37/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_19/Identity:output:0embedding_37_44259*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_37_layer_call_and_return_conditional_losses_44175|
IdentityIdentity-embedding_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_37/StatefulPartitionedCall0^integer_lookup_19/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_37/StatefulPartitionedCall$embedding_37/StatefulPartitionedCall2b
/integer_lookup_19/None_Lookup/LookupTableFindV2/integer_lookup_19/None_Lookup/LookupTableFindV2:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_19_input:

_output_shapes
: 
?
?
__inference__initializer_466048
4key_value_init41757_lookuptableimportv2_table_handle0
,key_value_init41757_lookuptableimportv2_keys	2
.key_value_init41757_lookuptableimportv2_values	
identity??'key_value_init41757/LookupTableImportV2?
'key_value_init41757/LookupTableImportV2LookupTableImportV24key_value_init41757_lookuptableimportv2_table_handle,key_value_init41757_lookuptableimportv2_keys.key_value_init41757_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41757/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init41757/LookupTableImportV2'key_value_init41757/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
-__inference_sequential_47_layer_call_fn_46292

inputs
unknown
	unknown_0	
	unknown_1:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_43964o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_embedding_38_layer_call_and_return_conditional_losses_46537

inputs	(
embedding_lookup_46531: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_46531inputs*
Tindices0	*)
_class
loc:@embedding_lookup/46531*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/46531*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__initializer_465868
4key_value_init41735_lookuptableimportv2_table_handle0
,key_value_init41735_lookuptableimportv2_keys	2
.key_value_init41735_lookuptableimportv2_values	
identity??'key_value_init41735/LookupTableImportV2?
'key_value_init41735/LookupTableImportV2LookupTableImportV24key_value_init41735_lookuptableimportv2_table_handle,key_value_init41735_lookuptableimportv2_keys.key_value_init41735_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41735/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init41735/LookupTableImportV2'key_value_init41735/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
-__inference_user_model_11_layer_call_fn_44442
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44415p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_12_layer_call_and_return_conditional_losses_46281

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44113

inputs	@
<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_18_none_lookup_lookuptablefindv2_default_value	$
embedding_36_44109: 
identity??$embedding_36/StatefulPartitionedCall?/integer_lookup_18/None_Lookup/LookupTableFindV2?
/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_18/IdentityIdentity8integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_36/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_18/Identity:output:0embedding_36_44109*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_36_layer_call_and_return_conditional_losses_44067|
IdentityIdentity-embedding_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_36/StatefulPartitionedCall0^integer_lookup_18/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_36/StatefulPartitionedCall$embedding_36/StatefulPartitionedCall2b
/integer_lookup_18/None_Lookup/LookupTableFindV2/integer_lookup_18/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_sequential_50_layer_call_fn_46447

inputs	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44329o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
ф
?
 __inference__wrapped_model_43939
cheapexpensivescore
indooroutdoorscore
leisurethrillscore

useridw
sbrute_force_3_sequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handlex
tbrute_force_3_sequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	m
[brute_force_3_sequential_51_user_model_11_sequential_47_embedding_35_embedding_lookup_43885:e x
tbrute_force_3_sequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handley
ubrute_force_3_sequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	m
[brute_force_3_sequential_51_user_model_11_sequential_48_embedding_36_embedding_lookup_43895: x
tbrute_force_3_sequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handley
ubrute_force_3_sequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	m
[brute_force_3_sequential_51_user_model_11_sequential_49_embedding_37_embedding_lookup_43905: x
tbrute_force_3_sequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handley
ubrute_force_3_sequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	m
[brute_force_3_sequential_51_user_model_11_sequential_50_embedding_38_embedding_lookup_43915: V
Cbrute_force_3_sequential_51_dense_12_matmul_readvariableop_resource:	? R
Dbrute_force_3_sequential_51_dense_12_biasadd_readvariableop_resource: >
,brute_force_3_matmul_readvariableop_resource:( +
brute_force_3_gather_resource:(
identity

identity_1??brute_force_3/Gather?#brute_force_3/MatMul/ReadVariableOp?;brute_force_3/sequential_51/dense_12/BiasAdd/ReadVariableOp?:brute_force_3/sequential_51/dense_12/MatMul/ReadVariableOp?Ubrute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup?fbrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?Ubrute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup?gbrute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?Ubrute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup?gbrute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?Ubrute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup?gbrute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
fbrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2sbrute_force_3_sequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleuseridtbrute_force_3_sequential_51_user_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Qbrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/IdentityIdentityobrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Ubrute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather[brute_force_3_sequential_51_user_model_11_sequential_47_embedding_35_embedding_lookup_43885Zbrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/43885*'
_output_shapes
:????????? *
dtype0?
^brute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentity^brute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/43885*'
_output_shapes
:????????? ?
`brute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1Identitygbrute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
<brute_force_3/sequential_51/user_model_11/sequential_48/CastCastindooroutdoorscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
gbrute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2tbrute_force_3_sequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle@brute_force_3/sequential_51/user_model_11/sequential_48/Cast:y:0ubrute_force_3_sequential_51_user_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Rbrute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/IdentityIdentitypbrute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Ubrute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather[brute_force_3_sequential_51_user_model_11_sequential_48_embedding_36_embedding_lookup_43895[brute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/43895*'
_output_shapes
:????????? *
dtype0?
^brute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentity^brute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/43895*'
_output_shapes
:????????? ?
`brute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1Identitygbrute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
<brute_force_3/sequential_51/user_model_11/sequential_49/CastCastleisurethrillscore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
gbrute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2tbrute_force_3_sequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle@brute_force_3/sequential_51/user_model_11/sequential_49/Cast:y:0ubrute_force_3_sequential_51_user_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Rbrute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/IdentityIdentitypbrute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Ubrute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather[brute_force_3_sequential_51_user_model_11_sequential_49_embedding_37_embedding_lookup_43905[brute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/43905*'
_output_shapes
:????????? *
dtype0?
^brute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentity^brute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/43905*'
_output_shapes
:????????? ?
`brute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1Identitygbrute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
<brute_force_3/sequential_51/user_model_11/sequential_50/CastCastcheapexpensivescore*

DstT0	*

SrcT0*#
_output_shapes
:??????????
gbrute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2tbrute_force_3_sequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle@brute_force_3/sequential_51/user_model_11/sequential_50/Cast:y:0ubrute_force_3_sequential_51_user_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Rbrute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/IdentityIdentitypbrute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Ubrute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather[brute_force_3_sequential_51_user_model_11_sequential_50_embedding_38_embedding_lookup_43915[brute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/43915*'
_output_shapes
:????????? *
dtype0?
^brute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentity^brute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*n
_classd
b`loc:@brute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/43915*'
_output_shapes
:????????? ?
`brute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1Identitygbrute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? w
5brute_force_3/sequential_51/user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
0brute_force_3/sequential_51/user_model_11/concatConcatV2ibrute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0ibrute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0ibrute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0ibrute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0>brute_force_3/sequential_51/user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
:brute_force_3/sequential_51/dense_12/MatMul/ReadVariableOpReadVariableOpCbrute_force_3_sequential_51_dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
+brute_force_3/sequential_51/dense_12/MatMulMatMul9brute_force_3/sequential_51/user_model_11/concat:output:0Bbrute_force_3/sequential_51/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
;brute_force_3/sequential_51/dense_12/BiasAdd/ReadVariableOpReadVariableOpDbrute_force_3_sequential_51_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
,brute_force_3/sequential_51/dense_12/BiasAddBiasAdd5brute_force_3/sequential_51/dense_12/MatMul:product:0Cbrute_force_3/sequential_51/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
#brute_force_3/MatMul/ReadVariableOpReadVariableOp,brute_force_3_matmul_readvariableop_resource*
_output_shapes

:( *
dtype0?
brute_force_3/MatMulMatMul5brute_force_3/sequential_51/dense_12/BiasAdd:output:0+brute_force_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(*
transpose_b(X
brute_force_3/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
?
brute_force_3/TopKV2TopKV2brute_force_3/MatMul:product:0brute_force_3/TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
?
brute_force_3/GatherResourceGatherbrute_force_3_gather_resourcebrute_force_3/TopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype0s
brute_force_3/IdentityIdentitybrute_force_3/Gather:output:0*
T0*'
_output_shapes
:?????????
l
IdentityIdentitybrute_force_3/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
p

Identity_1Identitybrute_force_3/Identity:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^brute_force_3/Gather$^brute_force_3/MatMul/ReadVariableOp<^brute_force_3/sequential_51/dense_12/BiasAdd/ReadVariableOp;^brute_force_3/sequential_51/dense_12/MatMul/ReadVariableOpV^brute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupg^brute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2V^brute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookuph^brute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2V^brute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookuph^brute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2V^brute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookuph^brute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 2,
brute_force_3/Gatherbrute_force_3/Gather2J
#brute_force_3/MatMul/ReadVariableOp#brute_force_3/MatMul/ReadVariableOp2z
;brute_force_3/sequential_51/dense_12/BiasAdd/ReadVariableOp;brute_force_3/sequential_51/dense_12/BiasAdd/ReadVariableOp2x
:brute_force_3/sequential_51/dense_12/MatMul/ReadVariableOp:brute_force_3/sequential_51/dense_12/MatMul/ReadVariableOp2?
Ubrute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookupUbrute_force_3/sequential_51/user_model_11/sequential_47/embedding_35/embedding_lookup2?
fbrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2fbrute_force_3/sequential_51/user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22?
Ubrute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookupUbrute_force_3/sequential_51/user_model_11/sequential_48/embedding_36/embedding_lookup2?
gbrute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2gbrute_force_3/sequential_51/user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22?
Ubrute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookupUbrute_force_3/sequential_51/user_model_11/sequential_49/embedding_37/embedding_lookup2?
gbrute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2gbrute_force_3/sequential_51/user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22?
Ubrute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookupUbrute_force_3/sequential_51/user_model_11/sequential_50/embedding_38/embedding_lookup2?
gbrute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2gbrute_force_3/sequential_51/user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44371
integer_lookup_20_input	@
<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_20_none_lookup_lookuptablefindv2_default_value	$
embedding_38_44367: 
identity??$embedding_38/StatefulPartitionedCall?/integer_lookup_20/None_Lookup/LookupTableFindV2?
/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinteger_lookup_20_input=integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_20/IdentityIdentity8integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_38/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_20/Identity:output:0embedding_38_44367*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_38_layer_call_and_return_conditional_losses_44283|
IdentityIdentity-embedding_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_38/StatefulPartitionedCall0^integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_38/StatefulPartitionedCall$embedding_38/StatefulPartitionedCall2b
/integer_lookup_20/None_Lookup/LookupTableFindV2/integer_lookup_20/None_Lookup/LookupTableFindV2:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_20_input:

_output_shapes
: 
?
?
-__inference_brute_force_3_layer_call_fn_45626
queries_cheapexpensivescore
queries_indooroutdoorscore
queries_leisurethrillscore
queries_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 

unknown_13:( 

unknown_14:(
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueries_cheapexpensivescorequeries_indooroutdoorscorequeries_leisurethrillscorequeries_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45327o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
#
_output_shapes
:?????????
5
_user_specified_namequeries/cheapExpensiveScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/indoorOutdoorScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/leisureThrillScore:SO
#
_output_shapes
:?????????
(
_user_specified_namequeries/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_49_layer_call_fn_46399

inputs	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44072

inputs	@
<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_18_none_lookup_lookuptablefindv2_default_value	$
embedding_36_44068: 
identity??$embedding_36/StatefulPartitionedCall?/integer_lookup_18/None_Lookup/LookupTableFindV2?
/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_18/IdentityIdentity8integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_36/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_18/Identity:output:0embedding_36_44068*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_36_layer_call_and_return_conditional_losses_44067|
IdentityIdentity-embedding_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_36/StatefulPartitionedCall0^integer_lookup_18/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_36/StatefulPartitionedCall$embedding_36/StatefulPartitionedCall2b
/integer_lookup_18/None_Lookup/LookupTableFindV2/integer_lookup_18/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_embedding_36_layer_call_and_return_conditional_losses_46505

inputs	(
embedding_lookup_46499: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_46499inputs*
Tindices0	*)
_class
loc:@embedding_lookup/46499*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/46499*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44252
integer_lookup_19_input	@
<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_19_none_lookup_lookuptablefindv2_default_value	$
embedding_37_44248: 
identity??$embedding_37/StatefulPartitionedCall?/integer_lookup_19/None_Lookup/LookupTableFindV2?
/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinteger_lookup_19_input=integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_19/IdentityIdentity8integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_37/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_19/Identity:output:0embedding_37_44248*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_37_layer_call_and_return_conditional_losses_44175|
IdentityIdentity-embedding_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_37/StatefulPartitionedCall0^integer_lookup_19/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_37/StatefulPartitionedCall$embedding_37/StatefulPartitionedCall2b
/integer_lookup_19/None_Lookup/LookupTableFindV2/integer_lookup_19/None_Lookup/LookupTableFindV2:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_19_input:

_output_shapes
: 
?
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44964
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
user_model_11_44933
user_model_11_44935	%
user_model_11_44937:e 
user_model_11_44939
user_model_11_44941	%
user_model_11_44943: 
user_model_11_44945
user_model_11_44947	%
user_model_11_44949: 
user_model_11_44951
user_model_11_44953	%
user_model_11_44955: !
dense_12_44958:	? 
dense_12_44960: 
identity?? dense_12/StatefulPartitionedCall?%user_model_11/StatefulPartitionedCall?
%user_model_11/StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoreindooroutdoorscoreleisurethrillscoreuseriduser_model_11_44933user_model_11_44935user_model_11_44937user_model_11_44939user_model_11_44941user_model_11_44943user_model_11_44945user_model_11_44947user_model_11_44949user_model_11_44951user_model_11_44953user_model_11_44955*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44516?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall.user_model_11/StatefulPartitionedCall:output:0dense_12_44958dense_12_44960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_44697x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp!^dense_12/StatefulPartitionedCall&^user_model_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2N
%user_model_11/StatefulPartitionedCall%user_model_11/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_50_layer_call_fn_46436

inputs	
unknown
	unknown_0	
	unknown_1: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44288o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44415

inputs	
inputs_1	
inputs_2	
inputs_3
sequential_47_44384
sequential_47_44386	%
sequential_47_44388:e 
sequential_48_44391
sequential_48_44393	%
sequential_48_44395: 
sequential_49_44398
sequential_49_44400	%
sequential_49_44402: 
sequential_50_44405
sequential_50_44407	%
sequential_50_44409: 
identity??%sequential_47/StatefulPartitionedCall?%sequential_48/StatefulPartitionedCall?%sequential_49/StatefulPartitionedCall?%sequential_50/StatefulPartitionedCall?
%sequential_47/StatefulPartitionedCallStatefulPartitionedCallinputs_3sequential_47_44384sequential_47_44386sequential_47_44388*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_43964?
%sequential_48/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_48_44391sequential_48_44393sequential_48_44395*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44072?
%sequential_49/StatefulPartitionedCallStatefulPartitionedCallinputs_2sequential_49_44398sequential_49_44400sequential_49_44402*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44180?
%sequential_50/StatefulPartitionedCallStatefulPartitionedCallinputssequential_50_44405sequential_50_44407sequential_50_44409*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44288M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2.sequential_47/StatefulPartitionedCall:output:0.sequential_48/StatefulPartitionedCall:output:0.sequential_49/StatefulPartitionedCall:output:0.sequential_50/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp&^sequential_47/StatefulPartitionedCall&^sequential_48/StatefulPartitionedCall&^sequential_49/StatefulPartitionedCall&^sequential_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2N
%sequential_47/StatefulPartitionedCall%sequential_47/StatefulPartitionedCall2N
%sequential_48/StatefulPartitionedCall%sequential_48/StatefulPartitionedCall2N
%sequential_49/StatefulPartitionedCall%sequential_49/StatefulPartitionedCall2N
%sequential_50/StatefulPartitionedCall%sequential_50/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_46555
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
-__inference_brute_force_3_layer_call_fn_45584
queries_cheapexpensivescore
queries_indooroutdoorscore
queries_leisurethrillscore
queries_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 

unknown_13:( 

unknown_14:(
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueries_cheapexpensivescorequeries_indooroutdoorscorequeries_leisurethrillscorequeries_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2				*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45071o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
#
_output_shapes
:?????????
5
_user_specified_namequeries/cheapExpensiveScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/indoorOutdoorScore:_[
#
_output_shapes
:?????????
4
_user_specified_namequeries/leisureThrillScore:SO
#
_output_shapes
:?????????
(
_user_specified_namequeries/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?[
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_45030

inputs
inputs_1
inputs_2
inputs_3[
Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handle\
Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_47_embedding_35_embedding_lookup_44986:e \
Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_48_embedding_36_embedding_lookup_44996: \
Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_49_embedding_37_embedding_lookup_45006: \
Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_50_embedding_38_embedding_lookup_45016: :
'dense_12_matmul_readvariableop_resource:	? 6
(dense_12_biasadd_readvariableop_resource: 
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?9user_model_11/sequential_47/embedding_35/embedding_lookup?Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?9user_model_11/sequential_48/embedding_36/embedding_lookup?Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?9user_model_11/sequential_49/embedding_37/embedding_lookup?Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?9user_model_11/sequential_50/embedding_38/embedding_lookup?Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_3Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5user_model_11/sequential_47/string_lookup_17/IdentityIdentitySuser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather?user_model_11_sequential_47_embedding_35_embedding_lookup_44986>user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/44986*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityBuser_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/44986*'
_output_shapes
:????????? ?
Duser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? o
 user_model_11/sequential_48/CastCastinputs_1*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_48/Cast:y:0Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_48/integer_lookup_18/IdentityIdentityTuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather?user_model_11_sequential_48_embedding_36_embedding_lookup_44996?user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/44996*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityBuser_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/44996*'
_output_shapes
:????????? ?
Duser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? o
 user_model_11/sequential_49/CastCastinputs_2*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_49/Cast:y:0Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_49/integer_lookup_19/IdentityIdentityTuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather?user_model_11_sequential_49_embedding_37_embedding_lookup_45006?user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45006*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityBuser_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45006*'
_output_shapes
:????????? ?
Duser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? m
 user_model_11/sequential_50/CastCastinputs*

DstT0	*

SrcT0*#
_output_shapes
:??????????
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle$user_model_11/sequential_50/Cast:y:0Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_50/integer_lookup_20/IdentityIdentityTuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather?user_model_11_sequential_50_embedding_38_embedding_lookup_45016?user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45016*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityBuser_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45016*'
_output_shapes
:????????? ?
Duser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_11/concatConcatV2Muser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0"user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_12/MatMulMatMuluser_model_11/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp:^user_model_11/sequential_47/embedding_35/embedding_lookupK^user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:^user_model_11/sequential_48/embedding_36/embedding_lookupL^user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:^user_model_11/sequential_49/embedding_37/embedding_lookupL^user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:^user_model_11/sequential_50/embedding_38/embedding_lookupL^user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2v
9user_model_11/sequential_47/embedding_35/embedding_lookup9user_model_11/sequential_47/embedding_35/embedding_lookup2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_48/embedding_36/embedding_lookup9user_model_11/sequential_48/embedding_36/embedding_lookup2?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_49/embedding_37/embedding_lookup9user_model_11/sequential_49/embedding_37/embedding_lookup2?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_50/embedding_38/embedding_lookup9user_model_11/sequential_50/embedding_38/embedding_lookup2?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44360
integer_lookup_20_input	@
<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_20_none_lookup_lookuptablefindv2_default_value	$
embedding_38_44356: 
identity??$embedding_38/StatefulPartitionedCall?/integer_lookup_20/None_Lookup/LookupTableFindV2?
/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinteger_lookup_20_input=integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_20/IdentityIdentity8integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_38/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_20/Identity:output:0embedding_38_44356*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_38_layer_call_and_return_conditional_losses_44283|
IdentityIdentity-embedding_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_38/StatefulPartitionedCall0^integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_38/StatefulPartitionedCall$embedding_38/StatefulPartitionedCall2b
/integer_lookup_20/None_Lookup/LookupTableFindV2/integer_lookup_20/None_Lookup/LookupTableFindV2:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_20_input:

_output_shapes
: 
?
?
__inference_<lambda>_466258
4key_value_init41713_lookuptableimportv2_table_handle0
,key_value_init41713_lookuptableimportv2_keys	2
.key_value_init41713_lookuptableimportv2_values	
identity??'key_value_init41713/LookupTableImportV2?
'key_value_init41713/LookupTableImportV2LookupTableImportV24key_value_init41713_lookuptableimportv2_table_handle,key_value_init41713_lookuptableimportv2_keys.key_value_init41713_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41713/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init41713/LookupTableImportV2'key_value_init41713/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46377

inputs	@
<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_18_none_lookup_lookuptablefindv2_default_value	5
#embedding_36_embedding_lookup_46371: 
identity??embedding_36/embedding_lookup?/integer_lookup_18/None_Lookup/LookupTableFindV2?
/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_18/IdentityIdentity8integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_36/embedding_lookupResourceGather#embedding_36_embedding_lookup_46371#integer_lookup_18/Identity:output:0*
Tindices0	*6
_class,
*(loc:@embedding_36/embedding_lookup/46371*'
_output_shapes
:????????? *
dtype0?
&embedding_36/embedding_lookup/IdentityIdentity&embedding_36/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_36/embedding_lookup/46371*'
_output_shapes
:????????? ?
(embedding_36/embedding_lookup/Identity_1Identity/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
IdentityIdentity1embedding_36/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_36/embedding_lookup0^integer_lookup_18/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2>
embedding_36/embedding_lookupembedding_36/embedding_lookup2b
/integer_lookup_18/None_Lookup/LookupTableFindV2/integer_lookup_18/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
,__inference_embedding_35_layer_call_fn_46480

inputs	
unknown:e 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_35_layer_call_and_return_conditional_losses_43959o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44612
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
sequential_47_44581
sequential_47_44583	%
sequential_47_44585:e 
sequential_48_44588
sequential_48_44590	%
sequential_48_44592: 
sequential_49_44595
sequential_49_44597	%
sequential_49_44599: 
sequential_50_44602
sequential_50_44604	%
sequential_50_44606: 
identity??%sequential_47/StatefulPartitionedCall?%sequential_48/StatefulPartitionedCall?%sequential_49/StatefulPartitionedCall?%sequential_50/StatefulPartitionedCall?
%sequential_47/StatefulPartitionedCallStatefulPartitionedCalluseridsequential_47_44581sequential_47_44583sequential_47_44585*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_43964?
%sequential_48/StatefulPartitionedCallStatefulPartitionedCallindooroutdoorscoresequential_48_44588sequential_48_44590sequential_48_44592*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44072?
%sequential_49/StatefulPartitionedCallStatefulPartitionedCallleisurethrillscoresequential_49_44595sequential_49_44597sequential_49_44599*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44180?
%sequential_50/StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoresequential_50_44602sequential_50_44604sequential_50_44606*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44288M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2.sequential_47/StatefulPartitionedCall:output:0.sequential_48/StatefulPartitionedCall:output:0.sequential_49/StatefulPartitionedCall:output:0.sequential_50/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp&^sequential_47/StatefulPartitionedCall&^sequential_48/StatefulPartitionedCall&^sequential_49/StatefulPartitionedCall&^sequential_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2N
%sequential_47/StatefulPartitionedCall%sequential_47/StatefulPartitionedCall2N
%sequential_48/StatefulPartitionedCall%sequential_48/StatefulPartitionedCall2N
%sequential_49/StatefulPartitionedCall%sequential_49/StatefulPartitionedCall2N
%sequential_50/StatefulPartitionedCall%sequential_50/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_46542
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name41692*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44144
integer_lookup_18_input	@
<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_18_none_lookup_lookuptablefindv2_default_value	$
embedding_36_44140: 
identity??$embedding_36/StatefulPartitionedCall?/integer_lookup_18/None_Lookup/LookupTableFindV2?
/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinteger_lookup_18_input=integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_18/IdentityIdentity8integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_36/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_18/Identity:output:0embedding_36_44140*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_36_layer_call_and_return_conditional_losses_44067|
IdentityIdentity-embedding_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_36/StatefulPartitionedCall0^integer_lookup_18/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_36/StatefulPartitionedCall$embedding_36/StatefulPartitionedCall2b
/integer_lookup_18/None_Lookup/LookupTableFindV2/integer_lookup_18/None_Lookup/LookupTableFindV2:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_18_input:

_output_shapes
: 
?
?
-__inference_user_model_11_layer_call_fn_46140
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cheapexpensivescoreinputs_indooroutdoorscoreinputs_leisurethrillscoreinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2							*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_user_model_11_layer_call_and_return_conditional_losses_44415p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44649
cheapexpensivescore	
indooroutdoorscore	
leisurethrillscore	

userid
sequential_47_44618
sequential_47_44620	%
sequential_47_44622:e 
sequential_48_44625
sequential_48_44627	%
sequential_48_44629: 
sequential_49_44632
sequential_49_44634	%
sequential_49_44636: 
sequential_50_44639
sequential_50_44641	%
sequential_50_44643: 
identity??%sequential_47/StatefulPartitionedCall?%sequential_48/StatefulPartitionedCall?%sequential_49/StatefulPartitionedCall?%sequential_50/StatefulPartitionedCall?
%sequential_47/StatefulPartitionedCallStatefulPartitionedCalluseridsequential_47_44618sequential_47_44620sequential_47_44622*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_47_layer_call_and_return_conditional_losses_44005?
%sequential_48/StatefulPartitionedCallStatefulPartitionedCallindooroutdoorscoresequential_48_44625sequential_48_44627sequential_48_44629*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_48_layer_call_and_return_conditional_losses_44113?
%sequential_49/StatefulPartitionedCallStatefulPartitionedCallleisurethrillscoresequential_49_44632sequential_49_44634sequential_49_44636*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_49_layer_call_and_return_conditional_losses_44221?
%sequential_50/StatefulPartitionedCallStatefulPartitionedCallcheapexpensivescoresequential_50_44639sequential_50_44641sequential_50_44643*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_50_layer_call_and_return_conditional_losses_44329M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2.sequential_47/StatefulPartitionedCall:output:0.sequential_48/StatefulPartitionedCall:output:0.sequential_49/StatefulPartitionedCall:output:0.sequential_50/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp&^sequential_47/StatefulPartitionedCall&^sequential_48/StatefulPartitionedCall&^sequential_49/StatefulPartitionedCall&^sequential_50/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2N
%sequential_47/StatefulPartitionedCall%sequential_47/StatefulPartitionedCall2N
%sequential_48/StatefulPartitionedCall%sequential_48/StatefulPartitionedCall2N
%sequential_49/StatefulPartitionedCall%sequential_49/StatefulPartitionedCall2N
%sequential_50/StatefulPartitionedCall%sequential_50/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namecheapExpensiveScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameindoorOutdoorScore:WS
#
_output_shapes
:?????????
,
_user_specified_nameleisureThrillScore:KG
#
_output_shapes
:?????????
 
_user_specified_nameuserid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__traced_save_46712
file_prefix*
&savev2_identifiers_read_readvariableop)
%savev2_candidates_read_readvariableop6
2savev2_embedding_35_embeddings_read_readvariableop6
2savev2_embedding_36_embeddings_read_readvariableop6
2savev2_embedding_37_embeddings_read_readvariableop6
2savev2_embedding_38_embeddings_read_readvariableop<
8savev2_sequential_51_dense_12_kernel_read_readvariableop:
6savev2_sequential_51_dense_12_bias_read_readvariableop
savev2_const_12

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*?
value?B?	B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_identifiers_read_readvariableop%savev2_candidates_read_readvariableop2savev2_embedding_35_embeddings_read_readvariableop2savev2_embedding_36_embeddings_read_readvariableop2savev2_embedding_37_embeddings_read_readvariableop2savev2_embedding_38_embeddings_read_readvariableop8savev2_sequential_51_dense_12_kernel_read_readvariableop6savev2_sequential_51_dense_12_bias_read_readvariableopsavev2_const_12"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*`
_input_shapesO
M: :(:( :e : : : :	? : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:(:$ 

_output_shapes

:( :$ 

_output_shapes

:e :$ 

_output_shapes

: :$ 

_output_shapes

: :$ 

_output_shapes

: :%!

_output_shapes
:	? : 

_output_shapes
: :	

_output_shapes
: 
?
?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44155
integer_lookup_18_input	@
<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_18_none_lookup_lookuptablefindv2_default_value	$
embedding_36_44151: 
identity??$embedding_36/StatefulPartitionedCall?/integer_lookup_18/None_Lookup/LookupTableFindV2?
/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinteger_lookup_18_input=integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_18/IdentityIdentity8integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_36/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_18/Identity:output:0embedding_36_44151*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_36_layer_call_and_return_conditional_losses_44067|
IdentityIdentity-embedding_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_36/StatefulPartitionedCall0^integer_lookup_18/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_36/StatefulPartitionedCall$embedding_36/StatefulPartitionedCall2b
/integer_lookup_18/None_Lookup/LookupTableFindV2/integer_lookup_18/None_Lookup/LookupTableFindV2:\ X
#
_output_shapes
:?????????
1
_user_specified_nameinteger_lookup_18_input:

_output_shapes
: 
?F
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46262
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_useridM
Isequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleN
Jsequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	C
1sequential_47_embedding_35_embedding_lookup_46227:e N
Jsequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handleO
Ksequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	C
1sequential_48_embedding_36_embedding_lookup_46236: N
Jsequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handleO
Ksequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	C
1sequential_49_embedding_37_embedding_lookup_46245: N
Jsequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handleO
Ksequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	C
1sequential_50_embedding_38_embedding_lookup_46254: 
identity??+sequential_47/embedding_35/embedding_lookup?<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?+sequential_48/embedding_36/embedding_lookup?=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?+sequential_49/embedding_37/embedding_lookup?=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?+sequential_50/embedding_38/embedding_lookup?=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Isequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_useridJsequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
'sequential_47/string_lookup_17/IdentityIdentityEsequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_47/embedding_35/embedding_lookupResourceGather1sequential_47_embedding_35_embedding_lookup_462270sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_47/embedding_35/embedding_lookup/46227*'
_output_shapes
:????????? *
dtype0?
4sequential_47/embedding_35/embedding_lookup/IdentityIdentity4sequential_47/embedding_35/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_47/embedding_35/embedding_lookup/46227*'
_output_shapes
:????????? ?
6sequential_47/embedding_35/embedding_lookup/Identity_1Identity=sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Jsequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs_indooroutdoorscoreKsequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
(sequential_48/integer_lookup_18/IdentityIdentityFsequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_48/embedding_36/embedding_lookupResourceGather1sequential_48_embedding_36_embedding_lookup_462361sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_48/embedding_36/embedding_lookup/46236*'
_output_shapes
:????????? *
dtype0?
4sequential_48/embedding_36/embedding_lookup/IdentityIdentity4sequential_48/embedding_36/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_48/embedding_36/embedding_lookup/46236*'
_output_shapes
:????????? ?
6sequential_48/embedding_36/embedding_lookup/Identity_1Identity=sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Jsequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs_leisurethrillscoreKsequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
(sequential_49/integer_lookup_19/IdentityIdentityFsequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_49/embedding_37/embedding_lookupResourceGather1sequential_49_embedding_37_embedding_lookup_462451sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_49/embedding_37/embedding_lookup/46245*'
_output_shapes
:????????? *
dtype0?
4sequential_49/embedding_37/embedding_lookup/IdentityIdentity4sequential_49/embedding_37/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_49/embedding_37/embedding_lookup/46245*'
_output_shapes
:????????? ?
6sequential_49/embedding_37/embedding_lookup/Identity_1Identity=sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Jsequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs_cheapexpensivescoreKsequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
(sequential_50/integer_lookup_20/IdentityIdentityFsequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
+sequential_50/embedding_38/embedding_lookupResourceGather1sequential_50_embedding_38_embedding_lookup_462541sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*D
_class:
86loc:@sequential_50/embedding_38/embedding_lookup/46254*'
_output_shapes
:????????? *
dtype0?
4sequential_50/embedding_38/embedding_lookup/IdentityIdentity4sequential_50/embedding_38/embedding_lookup:output:0*
T0*D
_class:
86loc:@sequential_50/embedding_38/embedding_lookup/46254*'
_output_shapes
:????????? ?
6sequential_50/embedding_38/embedding_lookup/Identity_1Identity=sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2?sequential_47/embedding_35/embedding_lookup/Identity_1:output:0?sequential_48/embedding_36/embedding_lookup/Identity_1:output:0?sequential_49/embedding_37/embedding_lookup/Identity_1:output:0?sequential_50/embedding_38/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp,^sequential_47/embedding_35/embedding_lookup=^sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2,^sequential_48/embedding_36/embedding_lookup>^sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2,^sequential_49/embedding_37/embedding_lookup>^sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2,^sequential_50/embedding_38/embedding_lookup>^sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2Z
+sequential_47/embedding_35/embedding_lookup+sequential_47/embedding_35/embedding_lookup2|
<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2<sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22Z
+sequential_48/embedding_36/embedding_lookup+sequential_48/embedding_36/embedding_lookup2~
=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2=sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22Z
+sequential_49/embedding_37/embedding_lookup+sequential_49/embedding_37/embedding_lookup2~
=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2=sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22Z
+sequential_50/embedding_38/embedding_lookup+sequential_50/embedding_38/embedding_lookup2~
=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2=sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?Z
?
H__inference_sequential_51_layer_call_and_return_conditional_losses_45949
inputs_cheapexpensivescore	
inputs_indooroutdoorscore	
inputs_leisurethrillscore	
inputs_userid[
Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handle\
Xuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_47_embedding_35_embedding_lookup_45908:e \
Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_48_embedding_36_embedding_lookup_45917: \
Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_49_embedding_37_embedding_lookup_45926: \
Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handle]
Yuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value	Q
?user_model_11_sequential_50_embedding_38_embedding_lookup_45935: :
'dense_12_matmul_readvariableop_resource:	? 6
(dense_12_biasadd_readvariableop_resource: 
identity??dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?9user_model_11/sequential_47/embedding_35/embedding_lookup?Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2?9user_model_11/sequential_48/embedding_36/embedding_lookup?Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2?9user_model_11/sequential_49/embedding_37/embedding_lookup?Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2?9user_model_11/sequential_50/embedding_38/embedding_lookup?Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2LookupTableFindV2Wuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_table_handleinputs_useridXuser_model_11_sequential_47_string_lookup_17_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
5user_model_11/sequential_47/string_lookup_17/IdentityIdentitySuser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_47/embedding_35/embedding_lookupResourceGather?user_model_11_sequential_47_embedding_35_embedding_lookup_45908>user_model_11/sequential_47/string_lookup_17/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/45908*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_47/embedding_35/embedding_lookup/IdentityIdentityBuser_model_11/sequential_47/embedding_35/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_47/embedding_35/embedding_lookup/45908*'
_output_shapes
:????????? ?
Duser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_47/embedding_35/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_table_handleinputs_indooroutdoorscoreYuser_model_11_sequential_48_integer_lookup_18_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_48/integer_lookup_18/IdentityIdentityTuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_48/embedding_36/embedding_lookupResourceGather?user_model_11_sequential_48_embedding_36_embedding_lookup_45917?user_model_11/sequential_48/integer_lookup_18/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/45917*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_48/embedding_36/embedding_lookup/IdentityIdentityBuser_model_11/sequential_48/embedding_36/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_48/embedding_36/embedding_lookup/45917*'
_output_shapes
:????????? ?
Duser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_48/embedding_36/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_table_handleinputs_leisurethrillscoreYuser_model_11_sequential_49_integer_lookup_19_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_49/integer_lookup_19/IdentityIdentityTuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_49/embedding_37/embedding_lookupResourceGather?user_model_11_sequential_49_embedding_37_embedding_lookup_45926?user_model_11/sequential_49/integer_lookup_19/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45926*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_49/embedding_37/embedding_lookup/IdentityIdentityBuser_model_11/sequential_49/embedding_37/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_49/embedding_37/embedding_lookup/45926*'
_output_shapes
:????????? ?
Duser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_49/embedding_37/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2Xuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs_cheapexpensivescoreYuser_model_11_sequential_50_integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
6user_model_11/sequential_50/integer_lookup_20/IdentityIdentityTuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
9user_model_11/sequential_50/embedding_38/embedding_lookupResourceGather?user_model_11_sequential_50_embedding_38_embedding_lookup_45935?user_model_11/sequential_50/integer_lookup_20/Identity:output:0*
Tindices0	*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45935*'
_output_shapes
:????????? *
dtype0?
Buser_model_11/sequential_50/embedding_38/embedding_lookup/IdentityIdentityBuser_model_11/sequential_50/embedding_38/embedding_lookup:output:0*
T0*R
_classH
FDloc:@user_model_11/sequential_50/embedding_38/embedding_lookup/45935*'
_output_shapes
:????????? ?
Duser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1IdentityKuser_model_11/sequential_50/embedding_38/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
user_model_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
user_model_11/concatConcatV2Muser_model_11/sequential_47/embedding_35/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_48/embedding_36/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_49/embedding_37/embedding_lookup/Identity_1:output:0Muser_model_11/sequential_50/embedding_38/embedding_lookup/Identity_1:output:0"user_model_11/concat/axis:output:0*
N*
T0*(
_output_shapes
:???????????
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_12/MatMulMatMuluser_model_11/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? h
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp:^user_model_11/sequential_47/embedding_35/embedding_lookupK^user_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2:^user_model_11/sequential_48/embedding_36/embedding_lookupL^user_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2:^user_model_11/sequential_49/embedding_37/embedding_lookupL^user_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2:^user_model_11/sequential_50/embedding_38/embedding_lookupL^user_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2v
9user_model_11/sequential_47/embedding_35/embedding_lookup9user_model_11/sequential_47/embedding_35/embedding_lookup2?
Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV2Juser_model_11/sequential_47/string_lookup_17/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_48/embedding_36/embedding_lookup9user_model_11/sequential_48/embedding_36/embedding_lookup2?
Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_48/integer_lookup_18/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_49/embedding_37/embedding_lookup9user_model_11/sequential_49/embedding_37/embedding_lookup2?
Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_49/integer_lookup_19/None_Lookup/LookupTableFindV22v
9user_model_11/sequential_50/embedding_38/embedding_lookup9user_model_11/sequential_50/embedding_38/embedding_lookup2?
Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2Kuser_model_11/sequential_50/integer_lookup_20/None_Lookup/LookupTableFindV2:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_sequential_51_layer_call_fn_45898
inputs_cheapexpensivescore
inputs_indooroutdoorscore
inputs_leisurethrillscore
inputs_userid
unknown
	unknown_0	
	unknown_1:e 
	unknown_2
	unknown_3	
	unknown_4: 
	unknown_5
	unknown_6	
	unknown_7: 
	unknown_8
	unknown_9	

unknown_10: 

unknown_11:	? 

unknown_12: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cheapexpensivescoreinputs_indooroutdoorscoreinputs_leisurethrillscoreinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2				*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_51_layer_call_and_return_conditional_losses_45203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
#
_output_shapes
:?????????
4
_user_specified_nameinputs/cheapExpensiveScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/indoorOutdoorScore:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/leisureThrillScore:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/userid:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_466338
4key_value_init41735_lookuptableimportv2_table_handle0
,key_value_init41735_lookuptableimportv2_keys	2
.key_value_init41735_lookuptableimportv2_values	
identity??'key_value_init41735/LookupTableImportV2?
'key_value_init41735/LookupTableImportV2LookupTableImportV24key_value_init41735_lookuptableimportv2_table_handle,key_value_init41735_lookuptableimportv2_keys.key_value_init41735_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init41735/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init41735/LookupTableImportV2'key_value_init41735/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44329

inputs	@
<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleA
=integer_lookup_20_none_lookup_lookuptablefindv2_default_value	$
embedding_38_44325: 
identity??$embedding_38/StatefulPartitionedCall?/integer_lookup_20/None_Lookup/LookupTableFindV2?
/integer_lookup_20/None_Lookup/LookupTableFindV2LookupTableFindV2<integer_lookup_20_none_lookup_lookuptablefindv2_table_handleinputs=integer_lookup_20_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
integer_lookup_20/IdentityIdentity8integer_lookup_20/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
$embedding_38/StatefulPartitionedCallStatefulPartitionedCall#integer_lookup_20/Identity:output:0embedding_38_44325*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_38_layer_call_and_return_conditional_losses_44283|
IdentityIdentity-embedding_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp%^embedding_38/StatefulPartitionedCall0^integer_lookup_20/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2L
$embedding_38/StatefulPartitionedCall$embedding_38/StatefulPartitionedCall2b
/integer_lookup_20/None_Lookup/LookupTableFindV2/integer_lookup_20/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_embedding_38_layer_call_and_return_conditional_losses_44283

inputs	(
embedding_lookup_44277: 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_44277inputs*
Tindices0	*)
_class
loc:@embedding_lookup/44277*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/44277*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_5:0StatefulPartitionedCall_68"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
cheapExpensiveScore8
%serving_default_cheapExpensiveScore:0?????????
M
indoorOutdoorScore7
$serving_default_indoorOutdoorScore:0?????????
M
leisureThrillScore7
$serving_default_leisureThrillScore:0?????????
5
userid+
serving_default_userid:0?????????>
output_12
StatefulPartitionedCall_4:0?????????
>
output_22
StatefulPartitionedCall_4:1?????????
tensorflow/serving/predict:??
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures"
_tf_keras_model
X
0
1
2
3
4
5
	6

7"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
trace_0
trace_1
trace_2
trace_32?
-__inference_brute_force_3_layer_call_fn_45108
-__inference_brute_force_3_layer_call_fn_45584
-__inference_brute_force_3_layer_call_fn_45626
-__inference_brute_force_3_layer_call_fn_45406?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ztrace_0ztrace_1ztrace_2ztrace_3
?
trace_0
trace_1
trace_2
trace_32?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45690
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45754
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45452
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45498?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ztrace_0ztrace_1ztrace_2ztrace_3
?B?
 __inference__wrapped_model_43939cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
 layer_with_weights-0
 layer-0
!layer_with_weights-1
!layer-1
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_build_input_shape"
_tf_keras_sequential
:(2identifiers
:( 2
candidates
?2??
???
FullArgSpec1
args)?&
jself
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
)serving_default"
signature_map
):'e 2embedding_35/embeddings
):' 2embedding_36/embeddings
):' 2embedding_37/embeddings
):' 2embedding_38/embeddings
0:.	? 2sequential_51/dense_12/kernel
):' 2sequential_51/dense_12/bias
.
	0

1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_brute_force_3_layer_call_fn_45108cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
-__inference_brute_force_3_layer_call_fn_45584queries/cheapExpensiveScorequeries/indoorOutdoorScorequeries/leisureThrillScorequeries/userid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
-__inference_brute_force_3_layer_call_fn_45626queries/cheapExpensiveScorequeries/indoorOutdoorScorequeries/leisureThrillScorequeries/userid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
-__inference_brute_force_3_layer_call_fn_45406cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45690queries/cheapExpensiveScorequeries/indoorOutdoorScorequeries/leisureThrillScorequeries/userid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45754queries/cheapExpensiveScorequeries/indoorOutdoorScorequeries/leisureThrillScorequeries/userid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45452cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45498cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0user_embedding
1indoorOutdoorScore
2leisureThrillScore
3cheapExpensiveScore"
_tf_keras_model
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
@trace_1
Atrace_2
Btrace_3
Ctrace_4
Dtrace_52?
-__inference_sequential_51_layer_call_fn_44735
-__inference_sequential_51_layer_call_fn_45790
-__inference_sequential_51_layer_call_fn_45826
-__inference_sequential_51_layer_call_fn_44890
-__inference_sequential_51_layer_call_fn_45862
-__inference_sequential_51_layer_call_fn_45898?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z@trace_1zAtrace_2zBtrace_3zCtrace_4zDtrace_5
?
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3
Itrace_4
Jtrace_52?
H__inference_sequential_51_layer_call_and_return_conditional_losses_45949
H__inference_sequential_51_layer_call_and_return_conditional_losses_46000
H__inference_sequential_51_layer_call_and_return_conditional_losses_44927
H__inference_sequential_51_layer_call_and_return_conditional_losses_44964
H__inference_sequential_51_layer_call_and_return_conditional_losses_46054
H__inference_sequential_51_layer_call_and_return_conditional_losses_46108?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3zItrace_4zJtrace_5
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_45542cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
?
Ptrace_0
Qtrace_1
Rtrace_2
Strace_32?
-__inference_user_model_11_layer_call_fn_44442
-__inference_user_model_11_layer_call_fn_46140
-__inference_user_model_11_layer_call_fn_46172
-__inference_user_model_11_layer_call_fn_44575?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zPtrace_0zQtrace_1zRtrace_2zStrace_3
?
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46217
H__inference_user_model_11_layer_call_and_return_conditional_losses_46262
H__inference_user_model_11_layer_call_and_return_conditional_losses_44612
H__inference_user_model_11_layer_call_and_return_conditional_losses_44649?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
?
Xlayer-0
Ylayer_with_weights-0
Ylayer-1
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
`layer-0
alayer_with_weights-0
alayer-1
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
hlayer-0
ilayer_with_weights-0
ilayer-1
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
player-0
qlayer_with_weights-0
qlayer-1
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_sequential
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?
}trace_02?
(__inference_dense_12_layer_call_fn_46271?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z}trace_0
?
~trace_02?
C__inference_dense_12_layer_call_and_return_conditional_losses_46281?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z~trace_0
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_51_layer_call_fn_44735cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_51_layer_call_fn_45790inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_51_layer_call_fn_45826inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_51_layer_call_fn_44890cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_51_layer_call_fn_45862inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_51_layer_call_fn_45898inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_51_layer_call_and_return_conditional_losses_45949inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46000inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44927cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44964cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46054inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46108inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_user_model_11_layer_call_fn_44442cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
-__inference_user_model_11_layer_call_fn_46140inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
-__inference_user_model_11_layer_call_fn_46172inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
-__inference_user_model_11_layer_call_fn_44575cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46217inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46262inputs/cheapExpensiveScoreinputs/indoorOutdoorScoreinputs/leisureThrillScoreinputs/userid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44612cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44649cheapExpensiveScoreindoorOutdoorScoreleisureThrillScoreuserid"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
;
	keras_api
?lookup_table"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
-__inference_sequential_47_layer_call_fn_43973
-__inference_sequential_47_layer_call_fn_46292
-__inference_sequential_47_layer_call_fn_46303
-__inference_sequential_47_layer_call_fn_44025?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46316
H__inference_sequential_47_layer_call_and_return_conditional_losses_46329
H__inference_sequential_47_layer_call_and_return_conditional_losses_44036
H__inference_sequential_47_layer_call_and_return_conditional_losses_44047?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
<
?	keras_api
?lookup_table"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
-__inference_sequential_48_layer_call_fn_44081
-__inference_sequential_48_layer_call_fn_46340
-__inference_sequential_48_layer_call_fn_46351
-__inference_sequential_48_layer_call_fn_44133?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46364
H__inference_sequential_48_layer_call_and_return_conditional_losses_46377
H__inference_sequential_48_layer_call_and_return_conditional_losses_44144
H__inference_sequential_48_layer_call_and_return_conditional_losses_44155?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
<
?	keras_api
?lookup_table"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
-__inference_sequential_49_layer_call_fn_44189
-__inference_sequential_49_layer_call_fn_46388
-__inference_sequential_49_layer_call_fn_46399
-__inference_sequential_49_layer_call_fn_44241?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46412
H__inference_sequential_49_layer_call_and_return_conditional_losses_46425
H__inference_sequential_49_layer_call_and_return_conditional_losses_44252
H__inference_sequential_49_layer_call_and_return_conditional_losses_44263?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
<
?	keras_api
?lookup_table"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
-__inference_sequential_50_layer_call_fn_44297
-__inference_sequential_50_layer_call_fn_46436
-__inference_sequential_50_layer_call_fn_46447
-__inference_sequential_50_layer_call_fn_44349?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46460
H__inference_sequential_50_layer_call_and_return_conditional_losses_46473
H__inference_sequential_50_layer_call_and_return_conditional_losses_44360
H__inference_sequential_50_layer_call_and_return_conditional_losses_44371?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
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
?B?
(__inference_dense_12_layer_call_fn_46271inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_dense_12_layer_call_and_return_conditional_losses_46281inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_embedding_35_layer_call_fn_46480?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
G__inference_embedding_35_layer_call_and_return_conditional_losses_46489?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_47_layer_call_fn_43973string_lookup_17_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_47_layer_call_fn_46292inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_47_layer_call_fn_46303inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_47_layer_call_fn_44025string_lookup_17_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46316inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46329inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44036string_lookup_17_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44047string_lookup_17_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_embedding_36_layer_call_fn_46496?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
G__inference_embedding_36_layer_call_and_return_conditional_losses_46505?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_48_layer_call_fn_44081integer_lookup_18_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_48_layer_call_fn_46340inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_48_layer_call_fn_46351inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_48_layer_call_fn_44133integer_lookup_18_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46364inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46377inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44144integer_lookup_18_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44155integer_lookup_18_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_embedding_37_layer_call_fn_46512?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
G__inference_embedding_37_layer_call_and_return_conditional_losses_46521?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_49_layer_call_fn_44189integer_lookup_19_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_49_layer_call_fn_46388inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_49_layer_call_fn_46399inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_49_layer_call_fn_44241integer_lookup_19_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46412inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46425inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44252integer_lookup_19_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44263integer_lookup_19_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_embedding_38_layer_call_fn_46528?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
G__inference_embedding_38_layer_call_and_return_conditional_losses_46537?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_50_layer_call_fn_44297integer_lookup_20_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_50_layer_call_fn_46436inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_50_layer_call_fn_46447inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_50_layer_call_fn_44349integer_lookup_20_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46460inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46473inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44360integer_lookup_20_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44371integer_lookup_20_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
"
_generic_user_object
?
?trace_02?
__inference__creator_46542?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_46550?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_46555?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
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
?B?
,__inference_embedding_35_layer_call_fn_46480inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_embedding_35_layer_call_and_return_conditional_losses_46489inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
?
?trace_02?
__inference__creator_46560?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_46568?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_46573?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
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
?B?
,__inference_embedding_36_layer_call_fn_46496inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_embedding_36_layer_call_and_return_conditional_losses_46505inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
?
?trace_02?
__inference__creator_46578?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_46586?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_46591?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
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
?B?
,__inference_embedding_37_layer_call_fn_46512inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_embedding_37_layer_call_and_return_conditional_losses_46521inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
?
?trace_02?
__inference__creator_46596?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_46604?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_46609?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
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
?B?
,__inference_embedding_38_layer_call_fn_46528inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_embedding_38_layer_call_and_return_conditional_losses_46537inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__creator_46542"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_46550"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_46555"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_46560"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_46568"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_46573"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_46578"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_46586"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_46591"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_46596"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_46604"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_46609"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant
!J	
Const_6jtf.TrackableConstant
!J	
Const_7jtf.TrackableConstant
!J	
Const_8jtf.TrackableConstant
!J	
Const_9jtf.TrackableConstant
"J

Const_10jtf.TrackableConstant
"J

Const_11jtf.TrackableConstant6
__inference__creator_46542?

? 
? "? 6
__inference__creator_46560?

? 
? "? 6
__inference__creator_46578?

? 
? "? 6
__inference__creator_46596?

? 
? "? 8
__inference__destroyer_46555?

? 
? "? 8
__inference__destroyer_46573?

? 
? "? 8
__inference__destroyer_46591?

? 
? "? 8
__inference__destroyer_46609?

? 
? "? B
__inference__initializer_46550 ????

? 
? "? B
__inference__initializer_46568 ????

? 
? "? B
__inference__initializer_46586 ????

? 
? "? B
__inference__initializer_46604 ????

? 
? "? ?
 __inference__wrapped_model_43939?????????
	???
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????
>
leisureThrillScore(?%
leisureThrillScore?????????
&
userid?
userid?????????
? "c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45452?????????
	???
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????
>
leisureThrillScore(?%
leisureThrillScore?????????
&
userid?
userid?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45498?????????
	???
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????
>
leisureThrillScore(?%
leisureThrillScore?????????
&
userid?
userid?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45690?????????
	???
???
???
H
cheapExpensiveScore1?.
queries/cheapExpensiveScore?????????
F
indoorOutdoorScore0?-
queries/indoorOutdoorScore?????????
F
leisureThrillScore0?-
queries/leisureThrillScore?????????
.
userid$?!
queries/userid?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
H__inference_brute_force_3_layer_call_and_return_conditional_losses_45754?????????
	???
???
???
H
cheapExpensiveScore1?.
queries/cheapExpensiveScore?????????
F
indoorOutdoorScore0?-
queries/indoorOutdoorScore?????????
F
leisureThrillScore0?-
queries/leisureThrillScore?????????
.
userid$?!
queries/userid?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
-__inference_brute_force_3_layer_call_fn_45108?????????
	???
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????
>
leisureThrillScore(?%
leisureThrillScore?????????
&
userid?
userid?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
-__inference_brute_force_3_layer_call_fn_45406?????????
	???
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????
>
leisureThrillScore(?%
leisureThrillScore?????????
&
userid?
userid?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
-__inference_brute_force_3_layer_call_fn_45584?????????
	???
???
???
H
cheapExpensiveScore1?.
queries/cheapExpensiveScore?????????
F
indoorOutdoorScore0?-
queries/indoorOutdoorScore?????????
F
leisureThrillScore0?-
queries/leisureThrillScore?????????
.
userid$?!
queries/userid?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
-__inference_brute_force_3_layer_call_fn_45626?????????
	???
???
???
H
cheapExpensiveScore1?.
queries/cheapExpensiveScore?????????
F
indoorOutdoorScore0?-
queries/indoorOutdoorScore?????????
F
leisureThrillScore0?-
queries/leisureThrillScore?????????
.
userid$?!
queries/userid?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
C__inference_dense_12_layer_call_and_return_conditional_losses_46281]0?-
&?#
!?
inputs??????????
? "%?"
?
0????????? 
? |
(__inference_dense_12_layer_call_fn_46271P0?-
&?#
!?
inputs??????????
? "?????????? ?
G__inference_embedding_35_layer_call_and_return_conditional_losses_46489W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? z
,__inference_embedding_35_layer_call_fn_46480J+?(
!?
?
inputs?????????	
? "?????????? ?
G__inference_embedding_36_layer_call_and_return_conditional_losses_46505W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? z
,__inference_embedding_36_layer_call_fn_46496J+?(
!?
?
inputs?????????	
? "?????????? ?
G__inference_embedding_37_layer_call_and_return_conditional_losses_46521W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? z
,__inference_embedding_37_layer_call_fn_46512J+?(
!?
?
inputs?????????	
? "?????????? ?
G__inference_embedding_38_layer_call_and_return_conditional_losses_46537W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? z
,__inference_embedding_38_layer_call_fn_46528J+?(
!?
?
inputs?????????	
? "?????????? ?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44036s??C?@
9?6
,?)
string_lookup_17_input?????????
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_47_layer_call_and_return_conditional_losses_44047s??C?@
9?6
,?)
string_lookup_17_input?????????
p

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46316c??3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_47_layer_call_and_return_conditional_losses_46329c??3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
-__inference_sequential_47_layer_call_fn_43973f??C?@
9?6
,?)
string_lookup_17_input?????????
p 

 
? "?????????? ?
-__inference_sequential_47_layer_call_fn_44025f??C?@
9?6
,?)
string_lookup_17_input?????????
p

 
? "?????????? ?
-__inference_sequential_47_layer_call_fn_46292V??3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
-__inference_sequential_47_layer_call_fn_46303V??3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44144t??D?A
:?7
-?*
integer_lookup_18_input?????????	
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_48_layer_call_and_return_conditional_losses_44155t??D?A
:?7
-?*
integer_lookup_18_input?????????	
p

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46364c??3?0
)?&
?
inputs?????????	
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_48_layer_call_and_return_conditional_losses_46377c??3?0
)?&
?
inputs?????????	
p

 
? "%?"
?
0????????? 
? ?
-__inference_sequential_48_layer_call_fn_44081g??D?A
:?7
-?*
integer_lookup_18_input?????????	
p 

 
? "?????????? ?
-__inference_sequential_48_layer_call_fn_44133g??D?A
:?7
-?*
integer_lookup_18_input?????????	
p

 
? "?????????? ?
-__inference_sequential_48_layer_call_fn_46340V??3?0
)?&
?
inputs?????????	
p 

 
? "?????????? ?
-__inference_sequential_48_layer_call_fn_46351V??3?0
)?&
?
inputs?????????	
p

 
? "?????????? ?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44252t??D?A
:?7
-?*
integer_lookup_19_input?????????	
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_49_layer_call_and_return_conditional_losses_44263t??D?A
:?7
-?*
integer_lookup_19_input?????????	
p

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46412c??3?0
)?&
?
inputs?????????	
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_49_layer_call_and_return_conditional_losses_46425c??3?0
)?&
?
inputs?????????	
p

 
? "%?"
?
0????????? 
? ?
-__inference_sequential_49_layer_call_fn_44189g??D?A
:?7
-?*
integer_lookup_19_input?????????	
p 

 
? "?????????? ?
-__inference_sequential_49_layer_call_fn_44241g??D?A
:?7
-?*
integer_lookup_19_input?????????	
p

 
? "?????????? ?
-__inference_sequential_49_layer_call_fn_46388V??3?0
)?&
?
inputs?????????	
p 

 
? "?????????? ?
-__inference_sequential_49_layer_call_fn_46399V??3?0
)?&
?
inputs?????????	
p

 
? "?????????? ?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44360t??D?A
:?7
-?*
integer_lookup_20_input?????????	
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_50_layer_call_and_return_conditional_losses_44371t??D?A
:?7
-?*
integer_lookup_20_input?????????	
p

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46460c??3?0
)?&
?
inputs?????????	
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_50_layer_call_and_return_conditional_losses_46473c??3?0
)?&
?
inputs?????????	
p

 
? "%?"
?
0????????? 
? ?
-__inference_sequential_50_layer_call_fn_44297g??D?A
:?7
-?*
integer_lookup_20_input?????????	
p 

 
? "?????????? ?
-__inference_sequential_50_layer_call_fn_44349g??D?A
:?7
-?*
integer_lookup_20_input?????????	
p

 
? "?????????? ?
-__inference_sequential_50_layer_call_fn_46436V??3?0
)?&
?
inputs?????????	
p 

 
? "?????????? ?
-__inference_sequential_50_layer_call_fn_46447V??3?0
)?&
?
inputs?????????	
p

 
? "?????????? ?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44927????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_51_layer_call_and_return_conditional_losses_44964????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_51_layer_call_and_return_conditional_losses_45949????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46000????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46054????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????
-
userid#? 
inputs/userid?????????
p 

 
? "%?"
?
0????????? 
? ?
H__inference_sequential_51_layer_call_and_return_conditional_losses_46108????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????
-
userid#? 
inputs/userid?????????
p

 
? "%?"
?
0????????? 
? ?
-__inference_sequential_51_layer_call_fn_44735????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p 

 
? "?????????? ?
-__inference_sequential_51_layer_call_fn_44890????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p

 
? "?????????? ?
-__inference_sequential_51_layer_call_fn_45790????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p 

 
? "?????????? ?
-__inference_sequential_51_layer_call_fn_45826????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p

 
? "?????????? ?
-__inference_sequential_51_layer_call_fn_45862????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????
-
userid#? 
inputs/userid?????????
p 

 
? "?????????? ?
-__inference_sequential_51_layer_call_fn_45898????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????
-
userid#? 
inputs/userid?????????
p

 
? "?????????? ?
#__inference_signature_wrapper_45542?????????
	???
? 
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????
>
leisureThrillScore(?%
leisureThrillScore?????????
&
userid?
userid?????????"c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44612????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p 
? "&?#
?
0??????????
? ?
H__inference_user_model_11_layer_call_and_return_conditional_losses_44649????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p
? "&?#
?
0??????????
? ?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46217????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p 
? "&?#
?
0??????????
? ?
H__inference_user_model_11_layer_call_and_return_conditional_losses_46262????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p
? "&?#
?
0??????????
? ?
-__inference_user_model_11_layer_call_fn_44442????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p 
? "????????????
-__inference_user_model_11_layer_call_fn_44575????????????
???
???
@
cheapExpensiveScore)?&
cheapExpensiveScore?????????	
>
indoorOutdoorScore(?%
indoorOutdoorScore?????????	
>
leisureThrillScore(?%
leisureThrillScore?????????	
&
userid?
userid?????????
p
? "????????????
-__inference_user_model_11_layer_call_fn_46140????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p 
? "????????????
-__inference_user_model_11_layer_call_fn_46172????????????
???
???
G
cheapExpensiveScore0?-
inputs/cheapExpensiveScore?????????	
E
indoorOutdoorScore/?,
inputs/indoorOutdoorScore?????????	
E
leisureThrillScore/?,
inputs/leisureThrillScore?????????	
-
userid#? 
inputs/userid?????????
p
? "???????????