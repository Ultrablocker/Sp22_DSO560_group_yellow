Ѕ█
─Ћ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Њй
є
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аюd*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
аюd*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
Є
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*&
shared_namelstm/lstm_cell/kernel
ђ
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	dђ*
dtype0
Џ
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*0
shared_name!lstm/lstm_cell/recurrent_kernel
ћ
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	@ђ*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:ђ*
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
ѓ
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
є
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
Ћ
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*-
shared_nameAdam/lstm/lstm_cell/kernel/m
ј
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	dђ*
dtype0
Е
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
б
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	@ђ*
dtype0
Ї
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*+
shared_nameAdam/lstm/lstm_cell/bias/m
є
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:ђ*
dtype0
ѓ
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
є
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
Ћ
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*-
shared_nameAdam/lstm/lstm_cell/kernel/v
ј
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	dђ*
dtype0
Е
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
б
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	@ђ*
dtype0
Ї
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*+
shared_nameAdam/lstm/lstm_cell/bias/v
є
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:ђ*
dtype0

NoOpNoOp
«:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ж9
value▀9B▄9 BН9
У
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api
*
&call_and_return_all_conditional_losses
__call__
_default_save_signature

signatures*
а

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*&call_and_return_all_conditional_losses
__call__*
ф
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
*&call_and_return_all_conditional_losses
__call__*
д

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
*#&call_and_return_all_conditional_losses
$__call__*
д

%kernel
&bias
'trainable_variables
(	variables
)regularization_losses
*	keras_api
*+&call_and_return_all_conditional_losses
,__call__*
┬
-iter

.beta_1

/beta_2
	0decay
1learning_ratemgmh%mi&mj2mk3ml4mmvnvo%vp&vq2vr3vs4vt*
5
20
31
42
3
4
%5
&6*
<
0
21
32
43
4
5
%6
&7*
* 
░

5layers
trainable_variables
	variables
6non_trainable_variables
regularization_losses
7layer_regularization_losses
8layer_metrics
9metrics
__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

:serving_default* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*
* 
Њ

;layers
trainable_variables
	variables
<non_trainable_variables
regularization_losses
=layer_regularization_losses
>layer_metrics
?metrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
╠
@
state_size

2kernel
3recurrent_kernel
4bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
*E&call_and_return_all_conditional_losses
F__call__*
* 

20
31
42*

20
31
42*
* 
Ъ

Glayers
trainable_variables

Hstates
	variables
Inon_trainable_variables
regularization_losses
Jlayer_regularization_losses
Klayer_metrics
Lmetrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ

Mlayers
trainable_variables
 	variables
Nnon_trainable_variables
!regularization_losses
Olayer_regularization_losses
Player_metrics
Qmetrics
$__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
Њ

Rlayers
'trainable_variables
(	variables
Snon_trainable_variables
)regularization_losses
Tlayer_regularization_losses
Ulayer_metrics
Vmetrics
,__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
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
_Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0*
* 
* 

W0
X1*
* 
* 

0*
* 
* 
* 
* 

20
31
42*

20
31
42*
* 
Њ

Ylayers
Atrainable_variables
B	variables
Znon_trainable_variables
Cregularization_losses
[layer_regularization_losses
\layer_metrics
]metrics
F__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
* 
* 

0*
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
	^total
	_count
`	variables
a	keras_api*
H
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

`	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

b0
c1*

e	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ђ{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ђ{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё
serving_default_embedding_inputPlaceholder*(
_output_shapes
:         г*
dtype0*
shape:         г
У
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_160222
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_161674
ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_161777ЛГ
ё7
Ш
@__inference_lstm_layer_call_and_return_conditional_losses_158567

inputs#
lstm_cell_158486:	dђ
lstm_cell_158488:	ђ#
lstm_cell_158490:	@ђ
identityѕб!lstm_cell/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_158486lstm_cell_158488lstm_cell_158490*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158485n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : «
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_158486lstm_cell_158488lstm_cell_158490*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158499*
condR
while_cond_158498*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
║x
ђ	
while_body_159309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitц
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмv
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @д

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
┴	
Д
lstm_while_cond_160003&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_160003___redundant_placeholder0>
:lstm_while_lstm_while_cond_160003___redundant_placeholder1>
:lstm_while_lstm_while_cond_160003___redundant_placeholder2>
:lstm_while_lstm_while_cond_160003___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
║Ѓ
╔
@__inference_lstm_layer_call_and_return_conditional_losses_159099

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:г         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitђ
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskђ
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158959*
condR
while_cond_158958*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @ё
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         гd: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         гd
 
_user_specified_nameinputs
в	
╠
+__inference_sequential_layer_call_fn_159553
embedding_input
unknown:
аюd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:	@ђ
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_159513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         г
)
_user_specified_nameembedding_input
║x
ђ	
while_body_160611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitц
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмv
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @д

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ш
▓
%__inference_lstm_layer_call_fn_161296

inputs
unknown:	dђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_159099o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         гd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         гd
 
_user_specified_nameinputs
║Ѓ
╔
@__inference_lstm_layer_call_and_return_conditional_losses_159449

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:г         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitђ
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskђ
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_159309*
condR
while_cond_159308*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @ё
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         гd: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         гd
 
_user_specified_nameinputs
х
├
while_cond_160610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_160610___redundant_placeholder04
0while_while_cond_160610___redundant_placeholder14
0while_while_cond_160610___redundant_placeholder24
0while_while_cond_160610___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
┤"
╬
while_body_158499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_158523_0:	dђ'
while_lstm_cell_158525_0:	ђ+
while_lstm_cell_158527_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_158523:	dђ%
while_lstm_cell_158525:	ђ)
while_lstm_cell_158527:	@ђѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_158523_0while_lstm_cell_158525_0while_lstm_cell_158527_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158485┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЇ
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         @v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_158523while_lstm_cell_158523_0"2
while_lstm_cell_158525while_lstm_cell_158525_0"2
while_lstm_cell_158527while_lstm_cell_158527_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
├J
е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_161435

inputs
states_0
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0ъ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:         @\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:         @\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:         @\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:         @[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:         @\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:         @]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:         @[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:         @]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:         @_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:         @└
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         @:         @: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
Ш
▓
%__inference_lstm_layer_call_fn_161307

inputs
unknown:	dђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_159449o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         гd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         гd
 
_user_specified_nameinputs
ї
┤
%__inference_lstm_layer_call_fn_161274
inputs_0
unknown:	dђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_158567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
хJ
д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158485

inputs

states
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0ъ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:         @\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:         @\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:         @\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:         @[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:         @\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:         @]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:         @[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:         @]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:         @_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:         @└
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         @:         @: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates
┴	
Д
lstm_while_cond_159728&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_159728___redundant_placeholder0>
:lstm_while_lstm_while_cond_159728___redundant_placeholder1>
:lstm_while_lstm_while_cond_159728___redundant_placeholder2>
:lstm_while_lstm_while_cond_159728___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
╩
ы
F__inference_sequential_layer_call_and_return_conditional_losses_159577
embedding_input$
embedding_159556:
аюd
lstm_159559:	dђ
lstm_159561:	ђ
lstm_159563:	@ђ
dense_159566:@
dense_159568: 
dense_1_159571:
dense_1_159573:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallы
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_159556*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         гd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_158840ќ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_159559lstm_159561lstm_159563*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_159099є
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_159566dense_159568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_159117Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_159571dense_1_159573*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_159134w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:Y U
(
_output_shapes
:         г
)
_user_specified_nameembedding_input
║x
ђ	
while_body_158959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitц
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмv
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @д

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
ХC
Ў
__inference__traced_save_161674
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: р
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*і
valueђB§ B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHГ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ђ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*Ь
_input_shapes▄
┘: :
аюd:@:::: : : : : :	dђ:	@ђ:ђ: : : : :@::::	dђ:	@ђ:ђ:@::::	dђ:	@ђ:ђ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
аюd:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :%!

_output_shapes
:	dђ:%!

_output_shapes
:	@ђ:!

_output_shapes	
:ђ:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	dђ:%!

_output_shapes
:	@ђ:!

_output_shapes	
:ђ:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	dђ:%!

_output_shapes
:	@ђ:!

_output_shapes	
:ђ: 

_output_shapes
: 
║x
ђ	
while_body_161123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitц
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмv
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @д

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
├J
е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_161524

inputs
states_0
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0ъ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:         @\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:         @\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:         @\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_4MatMulstates_0strided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:         @[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:         @\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskh
MatMul_5MatMulstates_0strided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:         @]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskh
MatMul_6MatMulstates_0strided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:         @[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskh
MatMul_7MatMulstates_0strided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:         @]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:         @_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:         @└
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         @:         @: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
Ъ

З
C__inference_dense_1_layer_call_and_return_conditional_losses_161337

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ЖЃ
╦
@__inference_lstm_layer_call_and_return_conditional_losses_160495
inputs_0:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitђ
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskђ
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_160355*
condR
while_cond_160354*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @ё
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
║Ѓ
╔
@__inference_lstm_layer_call_and_return_conditional_losses_161263

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:г         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitђ
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskђ
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_161123*
condR
while_cond_161122*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @ё
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         гd: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         гd
 
_user_specified_nameinputs
ЙЃ
»

lstm_while_body_160004&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	dђE
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	ђA
.lstm_while_lstm_cell_readvariableop_resource_0:	@ђ
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	dђC
4lstm_while_lstm_cell_split_1_readvariableop_resource:	ђ?
,lstm_while_lstm_cell_readvariableop_resource:	@ђѕб#lstm/while/lstm_cell/ReadVariableOpб%lstm/while/lstm_cell/ReadVariableOp_1б%lstm/while/lstm_cell/ReadVariableOp_2б%lstm/while/lstm_cell/ReadVariableOp_3б)lstm/while/lstm_cell/split/ReadVariableOpб+lstm/while/lstm_cell/split_1/ReadVariableOpЇ
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┐
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0П
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_split│
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @х
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @х
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @х
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ъ
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0М
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitД
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @Ф
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @Ф
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @Ф
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Њ
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskа
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @Б
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ћ
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @џ
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @q
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Й
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @i
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Й
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @Ћ
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskб
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @Д
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @a
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?џ
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @ю
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @s
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?┬
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @k
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ─
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @Ќ
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:         @Ћ
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskб
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @Д
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @s
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @џ
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @Ћ
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @Ћ
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskб
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @Д
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @a
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?џ
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @ю
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @s
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?┬
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @k
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ─
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @u
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @ъ
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @о
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: е
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :жУмЁ
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         @Ё
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         @╔
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"╝
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Э|
ђ
"__inference__traced_restore_161777
file_prefix9
%assignvariableop_embedding_embeddings:
аюd1
assignvariableop_1_dense_kernel:@+
assignvariableop_2_dense_bias:3
!assignvariableop_3_dense_1_kernel:-
assignvariableop_4_dense_1_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: <
)assignvariableop_10_lstm_lstm_cell_kernel:	dђF
3assignvariableop_11_lstm_lstm_cell_recurrent_kernel:	@ђ6
'assignvariableop_12_lstm_lstm_cell_bias:	ђ#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: 9
'assignvariableop_17_adam_dense_kernel_m:@3
%assignvariableop_18_adam_dense_bias_m:;
)assignvariableop_19_adam_dense_1_kernel_m:5
'assignvariableop_20_adam_dense_1_bias_m:C
0assignvariableop_21_adam_lstm_lstm_cell_kernel_m:	dђM
:assignvariableop_22_adam_lstm_lstm_cell_recurrent_kernel_m:	@ђ=
.assignvariableop_23_adam_lstm_lstm_cell_bias_m:	ђ9
'assignvariableop_24_adam_dense_kernel_v:@3
%assignvariableop_25_adam_dense_bias_v:;
)assignvariableop_26_adam_dense_1_kernel_v:5
'assignvariableop_27_adam_dense_1_bias_v:C
0assignvariableop_28_adam_lstm_lstm_cell_kernel_v:	dђM
:assignvariableop_29_adam_lstm_lstm_cell_recurrent_kernel_v:	@ђ=
.assignvariableop_30_adam_lstm_lstm_cell_bias_v:	ђ
identity_32ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9С
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*і
valueђB§ B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH░
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┴
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ќ
_output_shapesЃ
ђ::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_10AssignVariableOp)assignvariableop_10_lstm_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ц
AssignVariableOp_11AssignVariableOp3assignvariableop_11_lstm_lstm_cell_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_12AssignVariableOp'assignvariableop_12_lstm_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_lstm_lstm_cell_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_22AssignVariableOp:assignvariableop_22_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_lstm_lstm_cell_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_1_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_1_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_lstm_lstm_cell_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_29AssignVariableOp:assignvariableop_29_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_lstm_lstm_cell_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 щ
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: Т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302(
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
л	
├
+__inference_sequential_layer_call_fn_160199

inputs
unknown:
аюd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:	@ђ
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_159513o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
╩
ы
F__inference_sequential_layer_call_and_return_conditional_losses_159601
embedding_input$
embedding_159580:
аюd
lstm_159583:	dђ
lstm_159585:	ђ
lstm_159587:	@ђ
dense_159590:@
dense_159592: 
dense_1_159595:
dense_1_159597:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallы
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_159580*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         гd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_158840ќ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_159583lstm_159585lstm_159587*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_159449є
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_159590dense_159592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_159117Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_159595dense_1_159597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_159134w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:Y U
(
_output_shapes
:         г
)
_user_specified_nameembedding_input
ї
┤
%__inference_lstm_layer_call_fn_161285
inputs_0
unknown:	dђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_158814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
─	
Ы
A__inference_dense_layer_call_and_return_conditional_losses_159117

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ

З
C__inference_dense_1_layer_call_and_return_conditional_losses_159134

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
║x
ђ	
while_body_160867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitц
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмv
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @д

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_158745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158745___redundant_placeholder04
0while_while_cond_158745___redundant_placeholder14
0while_while_cond_158745___redundant_placeholder24
0while_while_cond_158745___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
У
з
*__inference_lstm_cell_layer_call_fn_161541

inputs
states_0
states_1
unknown:	dђ
	unknown_0:	ђ
	unknown_1:	@ђ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158485o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
љЦ
▒
F__inference_sequential_layer_call_and_return_conditional_losses_160157

inputs5
!embedding_embedding_lookup_159886:
аюd?
,lstm_lstm_cell_split_readvariableop_resource:	dђ=
.lstm_lstm_cell_split_1_readvariableop_resource:	ђ9
&lstm_lstm_cell_readvariableop_resource:	@ђ6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOpбembedding/embedding_lookupбlstm/lstm_cell/ReadVariableOpбlstm/lstm_cell/ReadVariableOp_1бlstm/lstm_cell/ReadVariableOp_2бlstm/lstm_cell/ReadVariableOp_3б#lstm/lstm_cell/split/ReadVariableOpб%lstm/lstm_cell/split_1/ReadVariableOpб
lstm/while`
embedding/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         гС
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_159886embedding/Cast:y:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/159886*,
_output_shapes
:         гd*
dtype0┴
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/159886*,
_output_shapes
:         гdќ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         гdh

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@ѓ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         @W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@є
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:г         dN
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмІ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   №
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Љ
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╦
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitЈ
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Љ
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0┴
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitЋ
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @Ў
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @Ў
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @Ў
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ё
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Y
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ѓ
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @ѕ
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @k
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?г
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @c
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    г
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @Є
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      └
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @Ћ
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ѕ
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @і
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @m
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?░
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @e
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▓
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:         @Є
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      └
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @Ћ
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @g
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @ѕ
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @Ѓ
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @Є
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      └
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @Ћ
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ѕ
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @і
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @m
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?░
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @e
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▓
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @i
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @ї
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   К
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : х

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_160004*"
condR
lstm_while_cond_160003*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations є
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   м
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          д
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@ђ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0ї
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ѕ
dense_1/MatMulMatMuldense/BiasAdd:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ┬
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
ЖЃ
╦
@__inference_lstm_layer_call_and_return_conditional_losses_160751
inputs_0:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitђ
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskђ
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_160611*
condR
while_cond_160610*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @ё
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ыЏ
░
!sequential_lstm_while_body_158208<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0R
?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0:	dђP
Asequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	ђL
9sequential_lstm_while_lstm_cell_readvariableop_resource_0:	@ђ"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorP
=sequential_lstm_while_lstm_cell_split_readvariableop_resource:	dђN
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resource:	ђJ
7sequential_lstm_while_lstm_cell_readvariableop_resource:	@ђѕб.sequential/lstm/while/lstm_cell/ReadVariableOpб0sequential/lstm/while/lstm_cell/ReadVariableOp_1б0sequential/lstm/while/lstm_cell/ReadVariableOp_2б0sequential/lstm/while/lstm_cell/ReadVariableOp_3б4sequential/lstm/while/lstm_cell/split/ReadVariableOpб6sequential/lstm/while/lstm_cell/split_1/ReadVariableOpў
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ш
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0q
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
4sequential/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0■
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:0<sequential/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitн
&sequential/lstm/while/lstm_cell/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @о
(sequential/lstm/while/lstm_cell/MatMul_1MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @о
(sequential/lstm/while/lstm_cell/MatMul_2MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @о
(sequential/lstm/while/lstm_cell/MatMul_3MatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @s
1sequential/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : х
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0З
'sequential/lstm/while/lstm_cell/split_1Split:sequential/lstm/while/lstm_cell/split_1/split_dim:output:0>sequential/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split╚
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd0sequential/lstm/while/lstm_cell/MatMul:product:00sequential/lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @╠
)sequential/lstm/while/lstm_cell/BiasAdd_1BiasAdd2sequential/lstm/while/lstm_cell/MatMul_1:product:00sequential/lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @╠
)sequential/lstm/while/lstm_cell/BiasAdd_2BiasAdd2sequential/lstm/while/lstm_cell/MatMul_2:product:00sequential/lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @╠
)sequential/lstm/while/lstm_cell/BiasAdd_3BiasAdd2sequential/lstm/while/lstm_cell/MatMul_3:product:00sequential/lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Е
.sequential/lstm/while/lstm_cell/ReadVariableOpReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0ё
3sequential/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        є
5sequential/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   є
5sequential/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
-sequential/lstm/while/lstm_cell/strided_sliceStridedSlice6sequential/lstm/while/lstm_cell/ReadVariableOp:value:0<sequential/lstm/while/lstm_cell/strided_slice/stack:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_1:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask┴
(sequential/lstm/while/lstm_cell/MatMul_4MatMul#sequential_lstm_while_placeholder_26sequential/lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @─
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/BiasAdd:output:02sequential/lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @j
%sequential/lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>l
'sequential/lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?х
#sequential/lstm/while/lstm_cell/MulMul'sequential/lstm/while/lstm_cell/add:z:0.sequential/lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @╗
%sequential/lstm/while/lstm_cell/Add_1AddV2'sequential/lstm/while/lstm_cell/Mul:z:00sequential/lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @|
7sequential/lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?▀
5sequential/lstm/while/lstm_cell/clip_by_value/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_1:z:0@sequential/lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @t
/sequential/lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▀
-sequential/lstm/while/lstm_cell/clip_by_valueMaximum9sequential/lstm/while/lstm_cell/clip_by_value/Minimum:z:08sequential/lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @Ф
0sequential/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0є
5sequential/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   ѕ
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   ѕ
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ћ
/sequential/lstm/while/lstm_cell/strided_slice_1StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_1:value:0>sequential/lstm/while/lstm_cell/strided_slice_1/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask├
(sequential/lstm/while/lstm_cell/MatMul_5MatMul#sequential_lstm_while_placeholder_28sequential/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @╚
%sequential/lstm/while/lstm_cell/add_2AddV22sequential/lstm/while/lstm_cell/BiasAdd_1:output:02sequential/lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @l
'sequential/lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>l
'sequential/lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?╗
%sequential/lstm/while/lstm_cell/Mul_1Mul)sequential/lstm/while/lstm_cell/add_2:z:00sequential/lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @й
%sequential/lstm/while/lstm_cell/Add_3AddV2)sequential/lstm/while/lstm_cell/Mul_1:z:00sequential/lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @~
9sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?с
7sequential/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_3:z:0Bsequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @v
1sequential/lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    т
/sequential/lstm/while/lstm_cell/clip_by_value_1Maximum;sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0:sequential/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @И
%sequential/lstm/while/lstm_cell/mul_2Mul3sequential/lstm/while/lstm_cell/clip_by_value_1:z:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:         @Ф
0sequential/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0є
5sequential/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ѕ
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   ѕ
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ћ
/sequential/lstm/while/lstm_cell/strided_slice_2StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_2:value:0>sequential/lstm/while/lstm_cell/strided_slice_2/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask├
(sequential/lstm/while/lstm_cell/MatMul_6MatMul#sequential_lstm_while_placeholder_28sequential/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @╚
%sequential/lstm/while/lstm_cell/add_4AddV22sequential/lstm/while/lstm_cell/BiasAdd_2:output:02sequential/lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @Ѕ
$sequential/lstm/while/lstm_cell/TanhTanh)sequential/lstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @╗
%sequential/lstm/while/lstm_cell/mul_3Mul1sequential/lstm/while/lstm_cell/clip_by_value:z:0(sequential/lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @Х
%sequential/lstm/while/lstm_cell/add_5AddV2)sequential/lstm/while/lstm_cell/mul_2:z:0)sequential/lstm/while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @Ф
0sequential/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0є
5sequential/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   ѕ
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ѕ
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ћ
/sequential/lstm/while/lstm_cell/strided_slice_3StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_3:value:0>sequential/lstm/while/lstm_cell/strided_slice_3/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask├
(sequential/lstm/while/lstm_cell/MatMul_7MatMul#sequential_lstm_while_placeholder_28sequential/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @╚
%sequential/lstm/while/lstm_cell/add_6AddV22sequential/lstm/while/lstm_cell/BiasAdd_3:output:02sequential/lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @l
'sequential/lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>l
'sequential/lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?╗
%sequential/lstm/while/lstm_cell/Mul_4Mul)sequential/lstm/while/lstm_cell/add_6:z:00sequential/lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @й
%sequential/lstm/while/lstm_cell/Add_7AddV2)sequential/lstm/while/lstm_cell/Mul_4:z:00sequential/lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @~
9sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?с
7sequential/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_7:z:0Bsequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @v
1sequential/lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    т
/sequential/lstm/while/lstm_cell/clip_by_value_2Maximum;sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0:sequential/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @І
&sequential/lstm/while/lstm_cell/Tanh_1Tanh)sequential/lstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @┐
%sequential/lstm/while/lstm_cell/mul_5Mul3sequential/lstm/while/lstm_cell/clip_by_value_2:z:0*sequential/lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @ѓ
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder)sequential/lstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУм]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: ф
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Ѕ
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: ╔
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: :жУмд
 sequential/lstm/while/Identity_4Identity)sequential/lstm/while/lstm_cell/mul_5:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:         @д
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_5:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:         @ќ
sequential/lstm/while/NoOpNoOp/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"t
7sequential_lstm_while_lstm_cell_readvariableop_resource9sequential_lstm_while_lstm_cell_readvariableop_resource_0"ё
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resourceAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0"ђ
=sequential_lstm_while_lstm_cell_split_readvariableop_resource?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"У
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2`
.sequential/lstm/while/lstm_cell/ReadVariableOp.sequential/lstm/while/lstm_cell/ReadVariableOp2d
0sequential/lstm/while/lstm_cell/ReadVariableOp_10sequential/lstm/while/lstm_cell/ReadVariableOp_12d
0sequential/lstm/while/lstm_cell/ReadVariableOp_20sequential/lstm/while/lstm_cell/ReadVariableOp_22d
0sequential/lstm/while/lstm_cell/ReadVariableOp_30sequential/lstm/while/lstm_cell/ReadVariableOp_32l
4sequential/lstm/while/lstm_cell/split/ReadVariableOp4sequential/lstm/while/lstm_cell/split/ReadVariableOp2p
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
├
Ћ
(__inference_dense_1_layer_call_fn_161346

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_159134o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ё7
Ш
@__inference_lstm_layer_call_and_return_conditional_losses_158814

inputs#
lstm_cell_158733:	dђ
lstm_cell_158735:	ђ#
lstm_cell_158737:	@ђ
identityѕб!lstm_cell/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_158733lstm_cell_158735lstm_cell_158737*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158687n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : «
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_158733lstm_cell_158735lstm_cell_158737*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_158746*
condR
while_cond_158745*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
─	
Ы
A__inference_dense_layer_call_and_return_conditional_losses_161317

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ф	
ц
E__inference_embedding_layer_call_and_return_conditional_losses_160232

inputs+
embedding_lookup_160226:
аюd
identityѕбembedding_lookupV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         г╝
embedding_lookupResourceGatherembedding_lookup_160226Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/160226*,
_output_shapes
:         гd*
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/160226*,
_output_shapes
:         гdѓ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         гdx
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:         гdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         г: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
┐
Њ
&__inference_dense_layer_call_fn_161326

inputs
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_159117o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ш
Ѓ
!sequential_lstm_while_cond_158207<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1T
Psequential_lstm_while_sequential_lstm_while_cond_158207___redundant_placeholder0T
Psequential_lstm_while_sequential_lstm_while_cond_158207___redundant_placeholder1T
Psequential_lstm_while_sequential_lstm_while_cond_158207___redundant_placeholder2T
Psequential_lstm_while_sequential_lstm_while_cond_158207___redundant_placeholder3"
sequential_lstm_while_identity
б
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
ЙЃ
»

lstm_while_body_159729&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0G
4lstm_while_lstm_cell_split_readvariableop_resource_0:	dђE
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	ђA
.lstm_while_lstm_cell_readvariableop_resource_0:	@ђ
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorE
2lstm_while_lstm_cell_split_readvariableop_resource:	dђC
4lstm_while_lstm_cell_split_1_readvariableop_resource:	ђ?
,lstm_while_lstm_cell_readvariableop_resource:	@ђѕб#lstm/while/lstm_cell/ReadVariableOpб%lstm/while/lstm_cell/ReadVariableOp_1б%lstm/while/lstm_cell/ReadVariableOp_2б%lstm/while/lstm_cell/ReadVariableOp_3б)lstm/while/lstm_cell/split/ReadVariableOpб+lstm/while/lstm_cell/split_1/ReadVariableOpЇ
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┐
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0f
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0П
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_split│
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @х
lstm/while/lstm_cell/MatMul_1MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @х
lstm/while/lstm_cell/MatMul_2MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @х
lstm/while/lstm_cell/MatMul_3MatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @h
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ъ
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0М
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitД
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @Ф
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @Ф
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @Ф
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Њ
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0y
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskа
lstm/while/lstm_cell/MatMul_4MatMullstm_while_placeholder_2+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @Б
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @_
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>a
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ћ
lstm/while/lstm_cell/MulMullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @џ
lstm/while/lstm_cell/Add_1AddV2lstm/while/lstm_cell/Mul:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @q
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Й
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @i
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Й
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @Ћ
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0{
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   }
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   }
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskб
lstm/while/lstm_cell/MatMul_5MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @Д
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @a
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>a
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?џ
lstm/while/lstm_cell/Mul_1Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @ю
lstm/while/lstm_cell/Add_3AddV2lstm/while/lstm_cell/Mul_1:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @s
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?┬
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @k
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ─
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @Ќ
lstm/while/lstm_cell/mul_2Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:         @Ћ
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0{
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   }
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   }
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskб
lstm/while/lstm_cell/MatMul_6MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @Д
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @s
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @џ
lstm/while/lstm_cell/mul_3Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @Ћ
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_2:z:0lstm/while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @Ћ
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0{
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   }
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      я
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskб
lstm/while/lstm_cell/MatMul_7MatMullstm_while_placeholder_2-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @Д
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @a
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>a
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?џ
lstm/while/lstm_cell/Mul_4Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @ю
lstm/while/lstm_cell/Add_7AddV2lstm/while/lstm_cell/Mul_4:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @s
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?┬
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @k
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ─
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @u
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @ъ
lstm/while/lstm_cell/mul_5Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @о
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: е
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :жУмЁ
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         @Ё
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         @╔
lstm/while/NoOpNoOp$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"╝
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
┐	
┼
$__inference_signature_wrapper_160222
embedding_input
unknown:
аюd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:	@ђ
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_158361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         г
)
_user_specified_nameembedding_input
х
├
while_cond_158958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158958___redundant_placeholder04
0while_while_cond_158958___redundant_placeholder14
0while_while_cond_158958___redundant_placeholder24
0while_while_cond_158958___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
х
├
while_cond_160866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_160866___redundant_placeholder04
0while_while_cond_160866___redundant_placeholder14
0while_while_cond_160866___redundant_placeholder24
0while_while_cond_160866___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
в	
╠
+__inference_sequential_layer_call_fn_159160
embedding_input
unknown:
аюd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:	@ђ
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_159141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:         г
)
_user_specified_nameembedding_input
х
├
while_cond_159308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_159308___redundant_placeholder04
0while_while_cond_159308___redundant_placeholder14
0while_while_cond_159308___redundant_placeholder24
0while_while_cond_159308___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
ф	
ц
E__inference_embedding_layer_call_and_return_conditional_losses_158840

inputs+
embedding_lookup_158834:
аюd
identityѕбembedding_lookupV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         г╝
embedding_lookupResourceGatherembedding_lookup_158834Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/158834*,
_output_shapes
:         гd*
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/158834*,
_output_shapes
:         гdѓ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         гdx
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:         гdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         г: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
х
├
while_cond_160354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_160354___redundant_placeholder04
0while_while_cond_160354___redundant_placeholder14
0while_while_cond_160354___redundant_placeholder24
0while_while_cond_160354___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
»
У
F__inference_sequential_layer_call_and_return_conditional_losses_159513

inputs$
embedding_159492:
аюd
lstm_159495:	dђ
lstm_159497:	ђ
lstm_159499:	@ђ
dense_159502:@
dense_159504: 
dense_1_159507:
dense_1_159509:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallУ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_159492*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         гd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_158840ќ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_159495lstm_159497lstm_159499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_159449є
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_159502dense_159504*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_159117Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_159507dense_1_159509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_159134w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
х
├
while_cond_161122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_161122___redundant_placeholder04
0while_while_cond_161122___redundant_placeholder14
0while_while_cond_161122___redundant_placeholder24
0while_while_cond_161122___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
л	
├
+__inference_sequential_layer_call_fn_160178

inputs
unknown:
аюd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:	@ђ
	unknown_3:@
	unknown_4:
	unknown_5:
	unknown_6:
identityѕбStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_159141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
Г
ђ
*__inference_embedding_layer_call_fn_160239

inputs
unknown:
аюd
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         гd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_158840t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         гd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         г: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
У
з
*__inference_lstm_cell_layer_call_fn_161558

inputs
states_0
states_1
unknown:	dђ
	unknown_0:	ђ
	unknown_1:	@ђ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
»
У
F__inference_sequential_layer_call_and_return_conditional_losses_159141

inputs$
embedding_158841:
аюd
lstm_159100:	dђ
lstm_159102:	ђ
lstm_159104:	@ђ
dense_159118:@
dense_159120: 
dense_1_159135:
dense_1_159137:
identityѕбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallУ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_158841*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         гd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_158840ќ
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0lstm_159100lstm_159102lstm_159104*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_159099є
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_159118dense_159120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_159117Ј
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_159135dense_1_159137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_159134w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╦
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
хJ
д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158687

inputs

states
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0ъ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:         @\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:         @\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:         @\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskd
MatMul_4MatMulstatesstrided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?U
MulMuladd:z:0Const:output:0*
T0*'
_output_shapes
:         @[
Add_1AddV2Mul:z:0Const_1:output:0*
T0*'
_output_shapes
:         @\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_5MatMulstatesstrided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:         @]
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @]
mul_2Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_6MatMulstatesstrided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:         @[
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskf
MatMul_7MatMulstatesstrided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?[
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:         @]
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*'
_output_shapes
:         @^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѓ
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:         @_
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @X
IdentityIdentity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_1Identity	mul_5:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_5:z:0^NoOp*
T0*'
_output_shapes
:         @└
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         @:         @: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates
љЦ
▒
F__inference_sequential_layer_call_and_return_conditional_losses_159882

inputs5
!embedding_embedding_lookup_159611:
аюd?
,lstm_lstm_cell_split_readvariableop_resource:	dђ=
.lstm_lstm_cell_split_1_readvariableop_resource:	ђ9
&lstm_lstm_cell_readvariableop_resource:	@ђ6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOpбembedding/embedding_lookupбlstm/lstm_cell/ReadVariableOpбlstm/lstm_cell/ReadVariableOp_1бlstm/lstm_cell/ReadVariableOp_2бlstm/lstm_cell/ReadVariableOp_3б#lstm/lstm_cell/split/ReadVariableOpб%lstm/lstm_cell/split_1/ReadVariableOpб
lstm/while`
embedding/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         гС
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_159611embedding/Cast:y:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/159611*,
_output_shapes
:         гd*
dtype0┴
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/159611*,
_output_shapes
:         гdќ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         гdh

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@ѓ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         @W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@є
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:г         dN
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмІ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   №
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Љ
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╦
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitЈ
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/MatMul_1MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/MatMul_2MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/MatMul_3MatMullstm/strided_slice_2:output:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @b
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Љ
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0┴
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitЋ
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @Ў
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @Ў
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @Ў
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ё
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0s
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        u
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Х
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЈ
lstm/lstm_cell/MatMul_4MatMullstm/zeros:output:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @Љ
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Y
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>[
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ѓ
lstm/lstm_cell/MulMullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @ѕ
lstm/lstm_cell/Add_1AddV2lstm/lstm_cell/Mul:z:0lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @k
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?г
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @c
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    г
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @Є
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0u
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   w
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   w
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      └
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
lstm/lstm_cell/MatMul_5MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @Ћ
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @[
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>[
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ѕ
lstm/lstm_cell/Mul_1Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @і
lstm/lstm_cell/Add_3AddV2lstm/lstm_cell/Mul_1:z:0lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @m
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?░
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @e
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▓
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
lstm/lstm_cell/mul_2Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:         @Є
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0u
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   w
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   w
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      └
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
lstm/lstm_cell/MatMul_6MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @Ћ
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @g
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @ѕ
lstm/lstm_cell/mul_3Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @Ѓ
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_2:z:0lstm/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @Є
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0u
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   w
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      └
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
lstm/lstm_cell/MatMul_7MatMullstm/zeros:output:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @Ћ
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @[
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>[
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?ѕ
lstm/lstm_cell/Mul_4Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @і
lstm/lstm_cell/Add_7AddV2lstm/lstm_cell/Mul_4:z:0lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @m
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?░
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @e
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ▓
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @i
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @ї
lstm/lstm_cell/mul_5Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   К
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : х

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_159729*"
condR
lstm_while_cond_159728*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations є
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   м
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          д
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@ђ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0ї
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ѕ
dense_1/MatMulMatMuldense/BiasAdd:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ┬
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:P L
(
_output_shapes
:         г
 
_user_specified_nameinputs
║Ѓ
╔
@__inference_lstm_layer_call_and_return_conditional_losses_161007

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:г         dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0╝
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitђ
lstm_cell/MatMulMatMulstrided_slice_2:output:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_1MatMulstrided_slice_2:output:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_2MatMulstrided_slice_2:output:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @ѓ
lstm_cell/MatMul_3MatMulstrided_slice_2:output:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskђ
lstm_cell/MatMul_4MatMulzeros:output:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @T
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?s
lstm_cell/MulMullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/Add_1AddV2lstm_cell/Mul:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @f
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_5MatMulzeros:output:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_1Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_3AddV2lstm_cell/Mul_1:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_2Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_6MatMulzeros:output:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @y
lstm_cell/mul_3Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_5AddV2lstm_cell/mul_2:z:0lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskѓ
lstm_cell/MatMul_7MatMulzeros:output:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @V
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>V
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?y
lstm_cell/Mul_4Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/Add_7AddV2lstm_cell/Mul_4:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @h
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/mul_5Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_160867*
condR
while_cond_160866*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @ё
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         гd: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         гd
 
_user_specified_nameinputs
х
├
while_cond_158498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_158498___redundant_placeholder04
0while_while_cond_158498___redundant_placeholder14
0while_while_cond_158498___redundant_placeholder24
0while_while_cond_158498___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
║x
ђ	
while_body_160355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0╬
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_splitц
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @д
while/lstm_cell/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЉ
while/lstm_cell/MatMul_4MatMulwhile_placeholder_2&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Z
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
while/lstm_cell/MulMulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/Add_1AddV2while/lstm_cell/Mul:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @l
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_5MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_1Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_3AddV2while/lstm_cell/Mul_1:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @ѕ
while/lstm_cell/mul_2Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_6MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @І
while/lstm_cell/mul_3Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_5AddV2while/lstm_cell/mul_2:z:0while/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЊ
while/lstm_cell/MatMul_7MatMulwhile_placeholder_2(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @\
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>\
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?І
while/lstm_cell/Mul_4Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ї
while/lstm_cell/Add_7AddV2while/lstm_cell/Mul_4:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @n
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    х
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/mul_5Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_5:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмv
while/Identity_4Identitywhile/lstm_cell/mul_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/NoOp*
T0*'
_output_shapes
:         @д

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
ы┬
ы
!__inference__wrapped_model_158361
embedding_input@
,sequential_embedding_embedding_lookup_158090:
аюdJ
7sequential_lstm_lstm_cell_split_readvariableop_resource:	dђH
9sequential_lstm_lstm_cell_split_1_readvariableop_resource:	ђD
1sequential_lstm_lstm_cell_readvariableop_resource:	@ђA
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:C
1sequential_dense_1_matmul_readvariableop_resource:@
2sequential_dense_1_biasadd_readvariableop_resource:
identityѕб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб)sequential/dense_1/BiasAdd/ReadVariableOpб(sequential/dense_1/MatMul/ReadVariableOpб%sequential/embedding/embedding_lookupб(sequential/lstm/lstm_cell/ReadVariableOpб*sequential/lstm/lstm_cell/ReadVariableOp_1б*sequential/lstm/lstm_cell/ReadVariableOp_2б*sequential/lstm/lstm_cell/ReadVariableOp_3б.sequential/lstm/lstm_cell/split/ReadVariableOpб0sequential/lstm/lstm_cell/split_1/ReadVariableOpбsequential/lstm/whilet
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*(
_output_shapes
:         гљ
%sequential/embedding/embedding_lookupResourceGather,sequential_embedding_embedding_lookup_158090sequential/embedding/Cast:y:0*
Tindices0*?
_class5
31loc:@sequential/embedding/embedding_lookup/158090*,
_output_shapes
:         гd*
dtype0Р
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*?
_class5
31loc:@sequential/embedding/embedding_lookup/158090*,
_output_shapes
:         гdг
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         гd~
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Б
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         @b
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@Д
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┴
sequential/lstm/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0'sequential/lstm/transpose/perm:output:0*
T0*,
_output_shapes
:г         dd
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   љ
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskk
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
.sequential/lstm/lstm_cell/split/ReadVariableOpReadVariableOp7sequential_lstm_lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0В
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:06sequential/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:d@:d@:d@:d@*
	num_split░
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @▓
"sequential/lstm/lstm_cell/MatMul_1MatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @▓
"sequential/lstm/lstm_cell/MatMul_2MatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @▓
"sequential/lstm/lstm_cell/MatMul_3MatMul(sequential/lstm/strided_slice_2:output:0(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @m
+sequential/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Д
0sequential/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Р
!sequential/lstm/lstm_cell/split_1Split4sequential/lstm/lstm_cell/split_1/split_dim:output:08sequential/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitХ
!sequential/lstm/lstm_cell/BiasAddBiasAdd*sequential/lstm/lstm_cell/MatMul:product:0*sequential/lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @║
#sequential/lstm/lstm_cell/BiasAdd_1BiasAdd,sequential/lstm/lstm_cell/MatMul_1:product:0*sequential/lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @║
#sequential/lstm/lstm_cell/BiasAdd_2BiasAdd,sequential/lstm/lstm_cell/MatMul_2:product:0*sequential/lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @║
#sequential/lstm/lstm_cell/BiasAdd_3BiasAdd,sequential/lstm/lstm_cell/MatMul_3:product:0*sequential/lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Џ
(sequential/lstm/lstm_cell/ReadVariableOpReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0~
-sequential/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ђ
/sequential/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   ђ
/sequential/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
'sequential/lstm/lstm_cell/strided_sliceStridedSlice0sequential/lstm/lstm_cell/ReadVariableOp:value:06sequential/lstm/lstm_cell/strided_slice/stack:output:08sequential/lstm/lstm_cell/strided_slice/stack_1:output:08sequential/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask░
"sequential/lstm/lstm_cell/MatMul_4MatMulsequential/lstm/zeros:output:00sequential/lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @▓
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/BiasAdd:output:0,sequential/lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @d
sequential/lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>f
!sequential/lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Б
sequential/lstm/lstm_cell/MulMul!sequential/lstm/lstm_cell/add:z:0(sequential/lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:         @Е
sequential/lstm/lstm_cell/Add_1AddV2!sequential/lstm/lstm_cell/Mul:z:0*sequential/lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:         @v
1sequential/lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?═
/sequential/lstm/lstm_cell/clip_by_value/MinimumMinimum#sequential/lstm/lstm_cell/Add_1:z:0:sequential/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:         @n
)sequential/lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ═
'sequential/lstm/lstm_cell/clip_by_valueMaximum3sequential/lstm/lstm_cell/clip_by_value/Minimum:z:02sequential/lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:         @Ю
*sequential/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ђ
/sequential/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   ѓ
1sequential/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   ѓ
1sequential/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
)sequential/lstm/lstm_cell/strided_slice_1StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_1:value:08sequential/lstm/lstm_cell/strided_slice_1/stack:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask▓
"sequential/lstm/lstm_cell/MatMul_5MatMulsequential/lstm/zeros:output:02sequential/lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @Х
sequential/lstm/lstm_cell/add_2AddV2,sequential/lstm/lstm_cell/BiasAdd_1:output:0,sequential/lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @f
!sequential/lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>f
!sequential/lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
sequential/lstm/lstm_cell/Mul_1Mul#sequential/lstm/lstm_cell/add_2:z:0*sequential/lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:         @Ф
sequential/lstm/lstm_cell/Add_3AddV2#sequential/lstm/lstm_cell/Mul_1:z:0*sequential/lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:         @x
3sequential/lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Л
1sequential/lstm/lstm_cell/clip_by_value_1/MinimumMinimum#sequential/lstm/lstm_cell/Add_3:z:0<sequential/lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:         @p
+sequential/lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    М
)sequential/lstm/lstm_cell/clip_by_value_1Maximum5sequential/lstm/lstm_cell/clip_by_value_1/Minimum:z:04sequential/lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:         @Е
sequential/lstm/lstm_cell/mul_2Mul-sequential/lstm/lstm_cell/clip_by_value_1:z:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:         @Ю
*sequential/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ђ
/sequential/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ѓ
1sequential/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   ѓ
1sequential/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
)sequential/lstm/lstm_cell/strided_slice_2StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_2:value:08sequential/lstm/lstm_cell/strided_slice_2/stack:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask▓
"sequential/lstm/lstm_cell/MatMul_6MatMulsequential/lstm/zeros:output:02sequential/lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @Х
sequential/lstm/lstm_cell/add_4AddV2,sequential/lstm/lstm_cell/BiasAdd_2:output:0,sequential/lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @}
sequential/lstm/lstm_cell/TanhTanh#sequential/lstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @Е
sequential/lstm/lstm_cell/mul_3Mul+sequential/lstm/lstm_cell/clip_by_value:z:0"sequential/lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @ц
sequential/lstm/lstm_cell/add_5AddV2#sequential/lstm/lstm_cell/mul_2:z:0#sequential/lstm/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:         @Ю
*sequential/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ђ
/sequential/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   ѓ
1sequential/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ѓ
1sequential/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
)sequential/lstm/lstm_cell/strided_slice_3StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_3:value:08sequential/lstm/lstm_cell/strided_slice_3/stack:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask▓
"sequential/lstm/lstm_cell/MatMul_7MatMulsequential/lstm/zeros:output:02sequential/lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @Х
sequential/lstm/lstm_cell/add_6AddV2,sequential/lstm/lstm_cell/BiasAdd_3:output:0,sequential/lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @f
!sequential/lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *═╠L>f
!sequential/lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Е
sequential/lstm/lstm_cell/Mul_4Mul#sequential/lstm/lstm_cell/add_6:z:0*sequential/lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:         @Ф
sequential/lstm/lstm_cell/Add_7AddV2#sequential/lstm/lstm_cell/Mul_4:z:0*sequential/lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:         @x
3sequential/lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Л
1sequential/lstm/lstm_cell/clip_by_value_2/MinimumMinimum#sequential/lstm/lstm_cell/Add_7:z:0<sequential/lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:         @p
+sequential/lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    М
)sequential/lstm/lstm_cell/clip_by_value_2Maximum5sequential/lstm/lstm_cell/clip_by_value_2/Minimum:z:04sequential/lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:         @
 sequential/lstm/lstm_cell/Tanh_1Tanh#sequential/lstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:         @Г
sequential/lstm/lstm_cell/mul_5Mul-sequential/lstm/lstm_cell/clip_by_value_2:z:0$sequential/lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   У
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¤
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07sequential_lstm_lstm_cell_split_readvariableop_resource9sequential_lstm_lstm_cell_split_1_readvariableop_resource1sequential_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!sequential_lstm_while_body_158208*-
cond%R#
!sequential_lstm_while_cond_158207*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Љ
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   з
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:г         @*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          К
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         г@ќ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Г
sequential/dense/MatMulMatMul(sequential/lstm/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ћ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         џ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ф
sequential/dense_1/MatMulMatMul!sequential/dense/BiasAdd:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ў
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         s
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         к
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup)^sequential/lstm/lstm_cell/ReadVariableOp+^sequential/lstm/lstm_cell/ReadVariableOp_1+^sequential/lstm/lstm_cell/ReadVariableOp_2+^sequential/lstm/lstm_cell/ReadVariableOp_3/^sequential/lstm/lstm_cell/split/ReadVariableOp1^sequential/lstm/lstm_cell/split_1/ReadVariableOp^sequential/lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         г: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2T
(sequential/lstm/lstm_cell/ReadVariableOp(sequential/lstm/lstm_cell/ReadVariableOp2X
*sequential/lstm/lstm_cell/ReadVariableOp_1*sequential/lstm/lstm_cell/ReadVariableOp_12X
*sequential/lstm/lstm_cell/ReadVariableOp_2*sequential/lstm/lstm_cell/ReadVariableOp_22X
*sequential/lstm/lstm_cell/ReadVariableOp_3*sequential/lstm/lstm_cell/ReadVariableOp_32`
.sequential/lstm/lstm_cell/split/ReadVariableOp.sequential/lstm/lstm_cell/split/ReadVariableOp2d
0sequential/lstm/lstm_cell/split_1/ReadVariableOp0sequential/lstm/lstm_cell/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:Y U
(
_output_shapes
:         г
)
_user_specified_nameembedding_input
┤"
╬
while_body_158746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_158770_0:	dђ'
while_lstm_cell_158772_0:	ђ+
while_lstm_cell_158774_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_158770:	dђ%
while_lstm_cell_158772:	ђ)
while_lstm_cell_158774:	@ђѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_158770_0while_lstm_cell_158772_0while_lstm_cell_158774_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_158687┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ў
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :жУмЇ
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         @v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_158770while_lstm_cell_158770_0"2
while_lstm_cell_158772while_lstm_cell_158772_0"2
while_lstm_cell_158774while_lstm_cell_158774_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: "█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultД
L
embedding_input9
!serving_default_embedding_input:0         г;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:╗
ѓ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api
*
&call_and_return_all_conditional_losses
__call__
_default_save_signature

signatures"
_tf_keras_sequential
х

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
*&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
├
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
*&call_and_return_all_conditional_losses
__call__"
_tf_keras_rnn_layer
╗

kernel
bias
trainable_variables
 	variables
!regularization_losses
"	keras_api
*#&call_and_return_all_conditional_losses
$__call__"
_tf_keras_layer
╗

%kernel
&bias
'trainable_variables
(	variables
)regularization_losses
*	keras_api
*+&call_and_return_all_conditional_losses
,__call__"
_tf_keras_layer
Л
-iter

.beta_1

/beta_2
	0decay
1learning_ratemgmh%mi&mj2mk3ml4mmvnvo%vp&vq2vr3vs4vt"
	optimizer
Q
20
31
42
3
4
%5
&6"
trackable_list_wrapper
X
0
21
32
43
4
5
%6
&7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩

5layers
trainable_variables
	variables
6non_trainable_variables
regularization_losses
7layer_regularization_losses
8layer_metrics
9metrics
__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
Т2с
F__inference_sequential_layer_call_and_return_conditional_losses_159882
F__inference_sequential_layer_call_and_return_conditional_losses_160157
F__inference_sequential_layer_call_and_return_conditional_losses_159577
F__inference_sequential_layer_call_and_return_conditional_losses_159601└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Щ2э
+__inference_sequential_layer_call_fn_159160
+__inference_sequential_layer_call_fn_160178
+__inference_sequential_layer_call_fn_160199
+__inference_sequential_layer_call_fn_159553└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
!__inference__wrapped_model_158361embedding_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
:serving_default"
signature_map
(:&
аюd2embedding/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г

;layers
trainable_variables
	variables
<non_trainable_variables
regularization_losses
=layer_regularization_losses
>layer_metrics
?metrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
№2В
E__inference_embedding_layer_call_and_return_conditional_losses_160232б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
н2Л
*__inference_embedding_layer_call_fn_160239б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
р
@
state_size

2kernel
3recurrent_kernel
4bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
*E&call_and_return_all_conditional_losses
F__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Glayers
trainable_variables

Hstates
	variables
Inon_trainable_variables
regularization_losses
Jlayer_regularization_losses
Klayer_metrics
Lmetrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с2Я
@__inference_lstm_layer_call_and_return_conditional_losses_160495
@__inference_lstm_layer_call_and_return_conditional_losses_160751
@__inference_lstm_layer_call_and_return_conditional_losses_161007
@__inference_lstm_layer_call_and_return_conditional_losses_161263Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
%__inference_lstm_layer_call_fn_161274
%__inference_lstm_layer_call_fn_161285
%__inference_lstm_layer_call_fn_161296
%__inference_lstm_layer_call_fn_161307Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
:@2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г

Mlayers
trainable_variables
 	variables
Nnon_trainable_variables
!regularization_losses
Olayer_regularization_losses
Player_metrics
Qmetrics
$__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
в2У
A__inference_dense_layer_call_and_return_conditional_losses_161317б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
л2═
&__inference_dense_layer_call_fn_161326б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 :2dense_1/kernel
:2dense_1/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г

Rlayers
'trainable_variables
(	variables
Snon_trainable_variables
)regularization_losses
Tlayer_regularization_losses
Ulayer_metrics
Vmetrics
,__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
ь2Ж
C__inference_dense_1_layer_call_and_return_conditional_losses_161337б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
(__inference_dense_1_layer_call_fn_161346б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	dђ2lstm/lstm_cell/kernel
2:0	@ђ2lstm/lstm_cell/recurrent_kernel
": ђ2lstm/lstm_cell/bias
<
0
1
2
3"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
W0
X1"
trackable_list_wrapper
МBл
$__inference_signature_wrapper_160222embedding_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
 "
trackable_list_wrapper
Г

Ylayers
Atrainable_variables
B	variables
Znon_trainable_variables
Cregularization_losses
[layer_regularization_losses
\layer_metrics
]metrics
F__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
м2¤
E__inference_lstm_cell_layer_call_and_return_conditional_losses_161435
E__inference_lstm_cell_layer_call_and_return_conditional_losses_161524Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ю2Ў
*__inference_lstm_cell_layer_call_fn_161541
*__inference_lstm_cell_layer_call_fn_161558Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
^
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
#:!@2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
-:+	dђ2Adam/lstm/lstm_cell/kernel/m
7:5	@ђ2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%ђ2Adam/lstm/lstm_cell/bias/m
#:!@2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
-:+	dђ2Adam/lstm/lstm_cell/kernel/v
7:5	@ђ2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%ђ2Adam/lstm/lstm_cell/bias/vЮ
!__inference__wrapped_model_158361x243%&9б6
/б,
*і'
embedding_input         г
ф "1ф.
,
dense_1!і
dense_1         Б
C__inference_dense_1_layer_call_and_return_conditional_losses_161337\%&/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ {
(__inference_dense_1_layer_call_fn_161346O%&/б,
%б"
 і
inputs         
ф "і         А
A__inference_dense_layer_call_and_return_conditional_losses_161317\/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ y
&__inference_dense_layer_call_fn_161326O/б,
%б"
 і
inputs         @
ф "і         ф
E__inference_embedding_layer_call_and_return_conditional_losses_160232a0б-
&б#
!і
inputs         г
ф "*б'
 і
0         гd
џ ѓ
*__inference_embedding_layer_call_fn_160239T0б-
&б#
!і
inputs         г
ф "і         гdК
E__inference_lstm_cell_layer_call_and_return_conditional_losses_161435§243ђб}
vбs
 і
inputs         d
KбH
"і
states/0         @
"і
states/1         @
p 
ф "sбp
iбf
і
0/0         @
EџB
і
0/1/0         @
і
0/1/1         @
џ К
E__inference_lstm_cell_layer_call_and_return_conditional_losses_161524§243ђб}
vбs
 і
inputs         d
KбH
"і
states/0         @
"і
states/1         @
p
ф "sбp
iбf
і
0/0         @
EџB
і
0/1/0         @
і
0/1/1         @
џ ю
*__inference_lstm_cell_layer_call_fn_161541ь243ђб}
vбs
 і
inputs         d
KбH
"і
states/0         @
"і
states/1         @
p 
ф "cб`
і
0         @
Aџ>
і
1/0         @
і
1/1         @ю
*__inference_lstm_cell_layer_call_fn_161558ь243ђб}
vбs
 і
inputs         d
KбH
"і
states/0         @
"і
states/1         @
p
ф "cб`
і
0         @
Aџ>
і
1/0         @
і
1/1         @┴
@__inference_lstm_layer_call_and_return_conditional_losses_160495}243OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "%б"
і
0         @
џ ┴
@__inference_lstm_layer_call_and_return_conditional_losses_160751}243OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "%б"
і
0         @
џ ▓
@__inference_lstm_layer_call_and_return_conditional_losses_161007n243@б=
6б3
%і"
inputs         гd

 
p 

 
ф "%б"
і
0         @
џ ▓
@__inference_lstm_layer_call_and_return_conditional_losses_161263n243@б=
6б3
%і"
inputs         гd

 
p

 
ф "%б"
і
0         @
џ Ў
%__inference_lstm_layer_call_fn_161274p243OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "і         @Ў
%__inference_lstm_layer_call_fn_161285p243OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "і         @і
%__inference_lstm_layer_call_fn_161296a243@б=
6б3
%і"
inputs         гd

 
p 

 
ф "і         @і
%__inference_lstm_layer_call_fn_161307a243@б=
6б3
%і"
inputs         гd

 
p

 
ф "і         @Й
F__inference_sequential_layer_call_and_return_conditional_losses_159577t243%&Aб>
7б4
*і'
embedding_input         г
p 

 
ф "%б"
і
0         
џ Й
F__inference_sequential_layer_call_and_return_conditional_losses_159601t243%&Aб>
7б4
*і'
embedding_input         г
p

 
ф "%б"
і
0         
џ х
F__inference_sequential_layer_call_and_return_conditional_losses_159882k243%&8б5
.б+
!і
inputs         г
p 

 
ф "%б"
і
0         
џ х
F__inference_sequential_layer_call_and_return_conditional_losses_160157k243%&8б5
.б+
!і
inputs         г
p

 
ф "%б"
і
0         
џ ќ
+__inference_sequential_layer_call_fn_159160g243%&Aб>
7б4
*і'
embedding_input         г
p 

 
ф "і         ќ
+__inference_sequential_layer_call_fn_159553g243%&Aб>
7б4
*і'
embedding_input         г
p

 
ф "і         Ї
+__inference_sequential_layer_call_fn_160178^243%&8б5
.б+
!і
inputs         г
p 

 
ф "і         Ї
+__inference_sequential_layer_call_fn_160199^243%&8б5
.б+
!і
inputs         г
p

 
ф "і         ┤
$__inference_signature_wrapper_160222І243%&LбI
б 
Bф?
=
embedding_input*і'
embedding_input         г"1ф.
,
dense_1!і
dense_1         