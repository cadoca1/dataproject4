??,
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
executor_typestring ?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??%
?
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
?
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
?
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_8/kernel
|
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*'
_output_shapes
:@?*
dtype0
s
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_8/bias
l
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes	
:?*
dtype0
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_9/kernel
}
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_9/bias
l
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes	
:?*
dtype0
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_10/kernel

$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_10/bias
n
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes	
:?*
dtype0
?
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_11/kernel

$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_11/bias
n
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes	
:?*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
?H?*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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
?
#module_wrapper_11/batchnorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#module_wrapper_11/batchnorm_1/gamma
?
7module_wrapper_11/batchnorm_1/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_11/batchnorm_1/gamma*
_output_shapes
:@*
dtype0
?
"module_wrapper_11/batchnorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"module_wrapper_11/batchnorm_1/beta
?
6module_wrapper_11/batchnorm_1/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_11/batchnorm_1/beta*
_output_shapes
:@*
dtype0
?
)module_wrapper_11/batchnorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)module_wrapper_11/batchnorm_1/moving_mean
?
=module_wrapper_11/batchnorm_1/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_11/batchnorm_1/moving_mean*
_output_shapes
:@*
dtype0
?
-module_wrapper_11/batchnorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-module_wrapper_11/batchnorm_1/moving_variance
?
Amodule_wrapper_11/batchnorm_1/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_11/batchnorm_1/moving_variance*
_output_shapes
:@*
dtype0
?
#module_wrapper_12/batchnorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#module_wrapper_12/batchnorm_2/gamma
?
7module_wrapper_12/batchnorm_2/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_12/batchnorm_2/gamma*
_output_shapes
:@*
dtype0
?
"module_wrapper_12/batchnorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"module_wrapper_12/batchnorm_2/beta
?
6module_wrapper_12/batchnorm_2/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_12/batchnorm_2/beta*
_output_shapes
:@*
dtype0
?
)module_wrapper_12/batchnorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)module_wrapper_12/batchnorm_2/moving_mean
?
=module_wrapper_12/batchnorm_2/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_12/batchnorm_2/moving_mean*
_output_shapes
:@*
dtype0
?
-module_wrapper_12/batchnorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*>
shared_name/-module_wrapper_12/batchnorm_2/moving_variance
?
Amodule_wrapper_12/batchnorm_2/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_12/batchnorm_2/moving_variance*
_output_shapes
:@*
dtype0
?
#module_wrapper_14/batchnorm_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#module_wrapper_14/batchnorm_3/gamma
?
7module_wrapper_14/batchnorm_3/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_14/batchnorm_3/gamma*
_output_shapes	
:?*
dtype0
?
"module_wrapper_14/batchnorm_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"module_wrapper_14/batchnorm_3/beta
?
6module_wrapper_14/batchnorm_3/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_14/batchnorm_3/beta*
_output_shapes	
:?*
dtype0
?
)module_wrapper_14/batchnorm_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_14/batchnorm_3/moving_mean
?
=module_wrapper_14/batchnorm_3/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_14/batchnorm_3/moving_mean*
_output_shapes	
:?*
dtype0
?
-module_wrapper_14/batchnorm_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_14/batchnorm_3/moving_variance
?
Amodule_wrapper_14/batchnorm_3/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_14/batchnorm_3/moving_variance*
_output_shapes	
:?*
dtype0
?
#module_wrapper_15/batchnorm_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#module_wrapper_15/batchnorm_4/gamma
?
7module_wrapper_15/batchnorm_4/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_15/batchnorm_4/gamma*
_output_shapes	
:?*
dtype0
?
"module_wrapper_15/batchnorm_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"module_wrapper_15/batchnorm_4/beta
?
6module_wrapper_15/batchnorm_4/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_15/batchnorm_4/beta*
_output_shapes	
:?*
dtype0
?
)module_wrapper_15/batchnorm_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_15/batchnorm_4/moving_mean
?
=module_wrapper_15/batchnorm_4/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_15/batchnorm_4/moving_mean*
_output_shapes	
:?*
dtype0
?
-module_wrapper_15/batchnorm_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_15/batchnorm_4/moving_variance
?
Amodule_wrapper_15/batchnorm_4/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_15/batchnorm_4/moving_variance*
_output_shapes	
:?*
dtype0
?
#module_wrapper_17/batchnorm_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#module_wrapper_17/batchnorm_5/gamma
?
7module_wrapper_17/batchnorm_5/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_17/batchnorm_5/gamma*
_output_shapes	
:?*
dtype0
?
"module_wrapper_17/batchnorm_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"module_wrapper_17/batchnorm_5/beta
?
6module_wrapper_17/batchnorm_5/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_17/batchnorm_5/beta*
_output_shapes	
:?*
dtype0
?
)module_wrapper_17/batchnorm_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_17/batchnorm_5/moving_mean
?
=module_wrapper_17/batchnorm_5/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_17/batchnorm_5/moving_mean*
_output_shapes	
:?*
dtype0
?
-module_wrapper_17/batchnorm_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_17/batchnorm_5/moving_variance
?
Amodule_wrapper_17/batchnorm_5/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_17/batchnorm_5/moving_variance*
_output_shapes	
:?*
dtype0
?
#module_wrapper_18/batchnorm_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#module_wrapper_18/batchnorm_6/gamma
?
7module_wrapper_18/batchnorm_6/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_18/batchnorm_6/gamma*
_output_shapes	
:?*
dtype0
?
"module_wrapper_18/batchnorm_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"module_wrapper_18/batchnorm_6/beta
?
6module_wrapper_18/batchnorm_6/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_18/batchnorm_6/beta*
_output_shapes	
:?*
dtype0
?
)module_wrapper_18/batchnorm_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_18/batchnorm_6/moving_mean
?
=module_wrapper_18/batchnorm_6/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_18/batchnorm_6/moving_mean*
_output_shapes	
:?*
dtype0
?
-module_wrapper_18/batchnorm_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_18/batchnorm_6/moving_variance
?
Amodule_wrapper_18/batchnorm_6/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_18/batchnorm_6/moving_variance*
_output_shapes	
:?*
dtype0
?
#module_wrapper_20/batchnorm_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#module_wrapper_20/batchnorm_7/gamma
?
7module_wrapper_20/batchnorm_7/gamma/Read/ReadVariableOpReadVariableOp#module_wrapper_20/batchnorm_7/gamma*
_output_shapes	
:?*
dtype0
?
"module_wrapper_20/batchnorm_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"module_wrapper_20/batchnorm_7/beta
?
6module_wrapper_20/batchnorm_7/beta/Read/ReadVariableOpReadVariableOp"module_wrapper_20/batchnorm_7/beta*
_output_shapes	
:?*
dtype0
?
)module_wrapper_20/batchnorm_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)module_wrapper_20/batchnorm_7/moving_mean
?
=module_wrapper_20/batchnorm_7/moving_mean/Read/ReadVariableOpReadVariableOp)module_wrapper_20/batchnorm_7/moving_mean*
_output_shapes	
:?*
dtype0
?
-module_wrapper_20/batchnorm_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-module_wrapper_20/batchnorm_7/moving_variance
?
Amodule_wrapper_20/batchnorm_7/moving_variance/Read/ReadVariableOpReadVariableOp-module_wrapper_20/batchnorm_7/moving_variance*
_output_shapes	
:?*
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
?
Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_6/kernel/m
?
*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_7/kernel/m
?
*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_8/kernel/m
?
*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_8/bias/m
z
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_9/kernel/m
?
*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_9/bias/m
z
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_10/kernel/m
?
+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_10/bias/m
|
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_11/kernel/m
?
+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_11/bias/m
|
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
?H?*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
*Adam/module_wrapper_11/batchnorm_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/module_wrapper_11/batchnorm_1/gamma/m
?
>Adam/module_wrapper_11/batchnorm_1/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_11/batchnorm_1/gamma/m*
_output_shapes
:@*
dtype0
?
)Adam/module_wrapper_11/batchnorm_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/module_wrapper_11/batchnorm_1/beta/m
?
=Adam/module_wrapper_11/batchnorm_1/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_11/batchnorm_1/beta/m*
_output_shapes
:@*
dtype0
?
*Adam/module_wrapper_12/batchnorm_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/module_wrapper_12/batchnorm_2/gamma/m
?
>Adam/module_wrapper_12/batchnorm_2/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_12/batchnorm_2/gamma/m*
_output_shapes
:@*
dtype0
?
)Adam/module_wrapper_12/batchnorm_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/module_wrapper_12/batchnorm_2/beta/m
?
=Adam/module_wrapper_12/batchnorm_2/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_12/batchnorm_2/beta/m*
_output_shapes
:@*
dtype0
?
*Adam/module_wrapper_14/batchnorm_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_14/batchnorm_3/gamma/m
?
>Adam/module_wrapper_14/batchnorm_3/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_14/batchnorm_3/gamma/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_14/batchnorm_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_14/batchnorm_3/beta/m
?
=Adam/module_wrapper_14/batchnorm_3/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_14/batchnorm_3/beta/m*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_15/batchnorm_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_15/batchnorm_4/gamma/m
?
>Adam/module_wrapper_15/batchnorm_4/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_15/batchnorm_4/gamma/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_15/batchnorm_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_15/batchnorm_4/beta/m
?
=Adam/module_wrapper_15/batchnorm_4/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_15/batchnorm_4/beta/m*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_17/batchnorm_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_17/batchnorm_5/gamma/m
?
>Adam/module_wrapper_17/batchnorm_5/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_17/batchnorm_5/gamma/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_17/batchnorm_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_17/batchnorm_5/beta/m
?
=Adam/module_wrapper_17/batchnorm_5/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_17/batchnorm_5/beta/m*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_18/batchnorm_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_18/batchnorm_6/gamma/m
?
>Adam/module_wrapper_18/batchnorm_6/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_18/batchnorm_6/gamma/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_18/batchnorm_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_18/batchnorm_6/beta/m
?
=Adam/module_wrapper_18/batchnorm_6/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_18/batchnorm_6/beta/m*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_20/batchnorm_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_20/batchnorm_7/gamma/m
?
>Adam/module_wrapper_20/batchnorm_7/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_20/batchnorm_7/gamma/m*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_20/batchnorm_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_20/batchnorm_7/beta/m
?
=Adam/module_wrapper_20/batchnorm_7/beta/m/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_20/batchnorm_7/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_6/kernel/v
?
*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
:@*
dtype0
?
Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_7/kernel/v
?
*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_8/kernel/v
?
*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_8/bias/v
z
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_9/kernel/v
?
*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_9/bias/v
z
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_10/kernel/v
?
+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_10/bias/v
|
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_11/kernel/v
?
+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_11/bias/v
|
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?H?*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
?H?*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
?
*Adam/module_wrapper_11/batchnorm_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/module_wrapper_11/batchnorm_1/gamma/v
?
>Adam/module_wrapper_11/batchnorm_1/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_11/batchnorm_1/gamma/v*
_output_shapes
:@*
dtype0
?
)Adam/module_wrapper_11/batchnorm_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/module_wrapper_11/batchnorm_1/beta/v
?
=Adam/module_wrapper_11/batchnorm_1/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_11/batchnorm_1/beta/v*
_output_shapes
:@*
dtype0
?
*Adam/module_wrapper_12/batchnorm_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/module_wrapper_12/batchnorm_2/gamma/v
?
>Adam/module_wrapper_12/batchnorm_2/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_12/batchnorm_2/gamma/v*
_output_shapes
:@*
dtype0
?
)Adam/module_wrapper_12/batchnorm_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)Adam/module_wrapper_12/batchnorm_2/beta/v
?
=Adam/module_wrapper_12/batchnorm_2/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_12/batchnorm_2/beta/v*
_output_shapes
:@*
dtype0
?
*Adam/module_wrapper_14/batchnorm_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_14/batchnorm_3/gamma/v
?
>Adam/module_wrapper_14/batchnorm_3/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_14/batchnorm_3/gamma/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_14/batchnorm_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_14/batchnorm_3/beta/v
?
=Adam/module_wrapper_14/batchnorm_3/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_14/batchnorm_3/beta/v*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_15/batchnorm_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_15/batchnorm_4/gamma/v
?
>Adam/module_wrapper_15/batchnorm_4/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_15/batchnorm_4/gamma/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_15/batchnorm_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_15/batchnorm_4/beta/v
?
=Adam/module_wrapper_15/batchnorm_4/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_15/batchnorm_4/beta/v*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_17/batchnorm_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_17/batchnorm_5/gamma/v
?
>Adam/module_wrapper_17/batchnorm_5/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_17/batchnorm_5/gamma/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_17/batchnorm_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_17/batchnorm_5/beta/v
?
=Adam/module_wrapper_17/batchnorm_5/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_17/batchnorm_5/beta/v*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_18/batchnorm_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_18/batchnorm_6/gamma/v
?
>Adam/module_wrapper_18/batchnorm_6/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_18/batchnorm_6/gamma/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_18/batchnorm_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_18/batchnorm_6/beta/v
?
=Adam/module_wrapper_18/batchnorm_6/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_18/batchnorm_6/beta/v*
_output_shapes	
:?*
dtype0
?
*Adam/module_wrapper_20/batchnorm_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*Adam/module_wrapper_20/batchnorm_7/gamma/v
?
>Adam/module_wrapper_20/batchnorm_7/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/module_wrapper_20/batchnorm_7/gamma/v*
_output_shapes	
:?*
dtype0
?
)Adam/module_wrapper_20/batchnorm_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*:
shared_name+)Adam/module_wrapper_20/batchnorm_7/beta/v
?
=Adam/module_wrapper_20/batchnorm_7/beta/v/Read/ReadVariableOpReadVariableOp)Adam/module_wrapper_20/batchnorm_7/beta/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
_
$_module
%regularization_losses
&	variables
'trainable_variables
(	keras_api
h

)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
_
/_module
0regularization_losses
1	variables
2trainable_variables
3	keras_api
R
4regularization_losses
5	variables
6trainable_variables
7	keras_api
_
8_module
9regularization_losses
:	variables
;trainable_variables
<	keras_api
h

=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
_
C_module
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
_
N_module
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
R
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
_
W_module
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
h

\kernel
]bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
_
b_module
cregularization_losses
d	variables
etrainable_variables
f	keras_api
h

gkernel
hbias
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
_
m_module
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
R
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
_
v_module
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
R
{regularization_losses
|	variables
}trainable_variables
~	keras_api
m

kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
d
?_module
?regularization_losses
?	variables
?trainable_variables
?	keras_api
d
?_module
?regularization_losses
?	variables
?trainable_variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?)m?*m?=m?>m?Hm?Im?\m?]m?gm?hm?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?v?v?)v?*v?=v?>v?Hv?Iv?\v?]v?gv?hv?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
 
?
0
1
?2
?3
?4
?5
)6
*7
?8
?9
?10
?11
=12
>13
?14
?15
?16
?17
H18
I19
?20
?21
?22
?23
\24
]25
?26
?27
?28
?29
g30
h31
?32
?33
?34
?35
36
?37
?38
?39
?40
?41
?42
?43
?
0
1
?2
?3
)4
*5
?6
?7
=8
>9
?10
?11
H12
I13
?14
?15
\16
]17
?18
?19
g20
h21
?22
?23
24
?25
?26
?27
?28
?29
?
?layers
regularization_losses
	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?non_trainable_variables
trainable_variables
 
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
?layers
 regularization_losses
!	variables
?layer_metrics
?metrics
?non_trainable_variables
"trainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
%regularization_losses
&	variables
?layer_metrics
?metrics
?non_trainable_variables
'trainable_variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
?
?layers
+regularization_losses
,	variables
?layer_metrics
?metrics
?non_trainable_variables
-trainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
0regularization_losses
1	variables
?layer_metrics
?metrics
?non_trainable_variables
2trainable_variables
 ?layer_regularization_losses
 
 
 
?
?layers
4regularization_losses
5	variables
?layer_metrics
?metrics
?non_trainable_variables
6trainable_variables
 ?layer_regularization_losses
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
 
?
?layers
9regularization_losses
:	variables
?layer_metrics
?metrics
?non_trainable_variables
;trainable_variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

=0
>1
?
?layers
?regularization_losses
@	variables
?layer_metrics
?metrics
?non_trainable_variables
Atrainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
Dregularization_losses
E	variables
?layer_metrics
?metrics
?non_trainable_variables
Ftrainable_variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
?
?layers
Jregularization_losses
K	variables
?layer_metrics
?metrics
?non_trainable_variables
Ltrainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
Oregularization_losses
P	variables
?layer_metrics
?metrics
?non_trainable_variables
Qtrainable_variables
 ?layer_regularization_losses
 
 
 
?
?layers
Sregularization_losses
T	variables
?layer_metrics
?metrics
?non_trainable_variables
Utrainable_variables
 ?layer_regularization_losses
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
 
?
?layers
Xregularization_losses
Y	variables
?layer_metrics
?metrics
?non_trainable_variables
Ztrainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1

\0
]1
?
?layers
^regularization_losses
_	variables
?layer_metrics
?metrics
?non_trainable_variables
`trainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
cregularization_losses
d	variables
?layer_metrics
?metrics
?non_trainable_variables
etrainable_variables
 ?layer_regularization_losses
][
VARIABLE_VALUEconv2d_11/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_11/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1

g0
h1
?
?layers
iregularization_losses
j	variables
?layer_metrics
?metrics
?non_trainable_variables
ktrainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
nregularization_losses
o	variables
?layer_metrics
?metrics
?non_trainable_variables
ptrainable_variables
 ?layer_regularization_losses
 
 
 
?
?layers
rregularization_losses
s	variables
?layer_metrics
?metrics
?non_trainable_variables
ttrainable_variables
 ?layer_regularization_losses
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
 
?
?layers
wregularization_losses
x	variables
?layer_metrics
?metrics
?non_trainable_variables
ytrainable_variables
 ?layer_regularization_losses
 
 
 
?
?layers
{regularization_losses
|	variables
?layer_metrics
?metrics
?non_trainable_variables
}trainable_variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_2/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
?1

0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 
 
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_3/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#module_wrapper_11/batchnorm_1/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE"module_wrapper_11/batchnorm_1/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE)module_wrapper_11/batchnorm_1/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE-module_wrapper_11/batchnorm_1/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#module_wrapper_12/batchnorm_2/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE"module_wrapper_12/batchnorm_2/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)module_wrapper_12/batchnorm_2/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_12/batchnorm_2/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#module_wrapper_14/batchnorm_3/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_14/batchnorm_3/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)module_wrapper_14/batchnorm_3/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_14/batchnorm_3/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#module_wrapper_15/batchnorm_4/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_15/batchnorm_4/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)module_wrapper_15/batchnorm_4/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_15/batchnorm_4/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#module_wrapper_17/batchnorm_5/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_17/batchnorm_5/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)module_wrapper_17/batchnorm_5/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_17/batchnorm_5/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#module_wrapper_18/batchnorm_6/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_18/batchnorm_6/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)module_wrapper_18/batchnorm_6/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_18/batchnorm_6/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#module_wrapper_20/batchnorm_7/gamma'variables/38/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"module_wrapper_20/batchnorm_7/beta'variables/39/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)module_wrapper_20/batchnorm_7/moving_mean'variables/40/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-module_wrapper_20/batchnorm_7/moving_variance'variables/41/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
 

?0
?1
 
t
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?0
?1
?2
?3

?0
?1
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 

?0
?1
 
 
 
 
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 

?0
?1
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_11/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_11/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_3/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_3/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_11/batchnorm_1/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE)Adam/module_wrapper_11/batchnorm_1/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_12/batchnorm_2/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE)Adam/module_wrapper_12/batchnorm_2/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_14/batchnorm_3/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_14/batchnorm_3/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_15/batchnorm_4/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_15/batchnorm_4/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_17/batchnorm_5/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_17/batchnorm_5/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_18/batchnorm_6/gamma/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_18/batchnorm_6/beta/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_20/batchnorm_7/gamma/mCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_20/batchnorm_7/beta/mCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_9/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_11/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_11/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_3/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_3/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_11/batchnorm_1/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE)Adam/module_wrapper_11/batchnorm_1/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_12/batchnorm_2/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE)Adam/module_wrapper_12/batchnorm_2/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_14/batchnorm_3/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_14/batchnorm_3/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_15/batchnorm_4/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_15/batchnorm_4/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_17/batchnorm_5/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_17/batchnorm_5/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_18/batchnorm_6/gamma/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_18/batchnorm_6/beta/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/module_wrapper_20/batchnorm_7/gamma/vCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/module_wrapper_20/batchnorm_7/beta/vCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_6_inputPlaceholder*/
_output_shapes
:?????????00*
dtype0*$
shape:?????????00
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_6_inputconv2d_6/kernelconv2d_6/bias#module_wrapper_11/batchnorm_1/gamma"module_wrapper_11/batchnorm_1/beta)module_wrapper_11/batchnorm_1/moving_mean-module_wrapper_11/batchnorm_1/moving_varianceconv2d_7/kernelconv2d_7/bias#module_wrapper_12/batchnorm_2/gamma"module_wrapper_12/batchnorm_2/beta)module_wrapper_12/batchnorm_2/moving_mean-module_wrapper_12/batchnorm_2/moving_varianceconv2d_8/kernelconv2d_8/bias#module_wrapper_14/batchnorm_3/gamma"module_wrapper_14/batchnorm_3/beta)module_wrapper_14/batchnorm_3/moving_mean-module_wrapper_14/batchnorm_3/moving_varianceconv2d_9/kernelconv2d_9/bias#module_wrapper_15/batchnorm_4/gamma"module_wrapper_15/batchnorm_4/beta)module_wrapper_15/batchnorm_4/moving_mean-module_wrapper_15/batchnorm_4/moving_varianceconv2d_10/kernelconv2d_10/bias#module_wrapper_17/batchnorm_5/gamma"module_wrapper_17/batchnorm_5/beta)module_wrapper_17/batchnorm_5/moving_mean-module_wrapper_17/batchnorm_5/moving_varianceconv2d_11/kernelconv2d_11/bias#module_wrapper_18/batchnorm_6/gamma"module_wrapper_18/batchnorm_6/beta)module_wrapper_18/batchnorm_6/moving_mean-module_wrapper_18/batchnorm_6/moving_variancedense_2/kerneldense_2/bias-module_wrapper_20/batchnorm_7/moving_variance#module_wrapper_20/batchnorm_7/gamma)module_wrapper_20/batchnorm_7/moving_mean"module_wrapper_20/batchnorm_7/betadense_3/kerneldense_3/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_72296
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?/
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp7module_wrapper_11/batchnorm_1/gamma/Read/ReadVariableOp6module_wrapper_11/batchnorm_1/beta/Read/ReadVariableOp=module_wrapper_11/batchnorm_1/moving_mean/Read/ReadVariableOpAmodule_wrapper_11/batchnorm_1/moving_variance/Read/ReadVariableOp7module_wrapper_12/batchnorm_2/gamma/Read/ReadVariableOp6module_wrapper_12/batchnorm_2/beta/Read/ReadVariableOp=module_wrapper_12/batchnorm_2/moving_mean/Read/ReadVariableOpAmodule_wrapper_12/batchnorm_2/moving_variance/Read/ReadVariableOp7module_wrapper_14/batchnorm_3/gamma/Read/ReadVariableOp6module_wrapper_14/batchnorm_3/beta/Read/ReadVariableOp=module_wrapper_14/batchnorm_3/moving_mean/Read/ReadVariableOpAmodule_wrapper_14/batchnorm_3/moving_variance/Read/ReadVariableOp7module_wrapper_15/batchnorm_4/gamma/Read/ReadVariableOp6module_wrapper_15/batchnorm_4/beta/Read/ReadVariableOp=module_wrapper_15/batchnorm_4/moving_mean/Read/ReadVariableOpAmodule_wrapper_15/batchnorm_4/moving_variance/Read/ReadVariableOp7module_wrapper_17/batchnorm_5/gamma/Read/ReadVariableOp6module_wrapper_17/batchnorm_5/beta/Read/ReadVariableOp=module_wrapper_17/batchnorm_5/moving_mean/Read/ReadVariableOpAmodule_wrapper_17/batchnorm_5/moving_variance/Read/ReadVariableOp7module_wrapper_18/batchnorm_6/gamma/Read/ReadVariableOp6module_wrapper_18/batchnorm_6/beta/Read/ReadVariableOp=module_wrapper_18/batchnorm_6/moving_mean/Read/ReadVariableOpAmodule_wrapper_18/batchnorm_6/moving_variance/Read/ReadVariableOp7module_wrapper_20/batchnorm_7/gamma/Read/ReadVariableOp6module_wrapper_20/batchnorm_7/beta/Read/ReadVariableOp=module_wrapper_20/batchnorm_7/moving_mean/Read/ReadVariableOpAmodule_wrapper_20/batchnorm_7/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp>Adam/module_wrapper_11/batchnorm_1/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_11/batchnorm_1/beta/m/Read/ReadVariableOp>Adam/module_wrapper_12/batchnorm_2/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_12/batchnorm_2/beta/m/Read/ReadVariableOp>Adam/module_wrapper_14/batchnorm_3/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_14/batchnorm_3/beta/m/Read/ReadVariableOp>Adam/module_wrapper_15/batchnorm_4/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_15/batchnorm_4/beta/m/Read/ReadVariableOp>Adam/module_wrapper_17/batchnorm_5/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_17/batchnorm_5/beta/m/Read/ReadVariableOp>Adam/module_wrapper_18/batchnorm_6/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_18/batchnorm_6/beta/m/Read/ReadVariableOp>Adam/module_wrapper_20/batchnorm_7/gamma/m/Read/ReadVariableOp=Adam/module_wrapper_20/batchnorm_7/beta/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp>Adam/module_wrapper_11/batchnorm_1/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_11/batchnorm_1/beta/v/Read/ReadVariableOp>Adam/module_wrapper_12/batchnorm_2/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_12/batchnorm_2/beta/v/Read/ReadVariableOp>Adam/module_wrapper_14/batchnorm_3/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_14/batchnorm_3/beta/v/Read/ReadVariableOp>Adam/module_wrapper_15/batchnorm_4/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_15/batchnorm_4/beta/v/Read/ReadVariableOp>Adam/module_wrapper_17/batchnorm_5/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_17/batchnorm_5/beta/v/Read/ReadVariableOp>Adam/module_wrapper_18/batchnorm_6/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_18/batchnorm_6/beta/v/Read/ReadVariableOp>Adam/module_wrapper_20/batchnorm_7/gamma/v/Read/ReadVariableOp=Adam/module_wrapper_20/batchnorm_7/beta/v/Read/ReadVariableOpConst*~
Tinw
u2s	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_75325
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate#module_wrapper_11/batchnorm_1/gamma"module_wrapper_11/batchnorm_1/beta)module_wrapper_11/batchnorm_1/moving_mean-module_wrapper_11/batchnorm_1/moving_variance#module_wrapper_12/batchnorm_2/gamma"module_wrapper_12/batchnorm_2/beta)module_wrapper_12/batchnorm_2/moving_mean-module_wrapper_12/batchnorm_2/moving_variance#module_wrapper_14/batchnorm_3/gamma"module_wrapper_14/batchnorm_3/beta)module_wrapper_14/batchnorm_3/moving_mean-module_wrapper_14/batchnorm_3/moving_variance#module_wrapper_15/batchnorm_4/gamma"module_wrapper_15/batchnorm_4/beta)module_wrapper_15/batchnorm_4/moving_mean-module_wrapper_15/batchnorm_4/moving_variance#module_wrapper_17/batchnorm_5/gamma"module_wrapper_17/batchnorm_5/beta)module_wrapper_17/batchnorm_5/moving_mean-module_wrapper_17/batchnorm_5/moving_variance#module_wrapper_18/batchnorm_6/gamma"module_wrapper_18/batchnorm_6/beta)module_wrapper_18/batchnorm_6/moving_mean-module_wrapper_18/batchnorm_6/moving_variance#module_wrapper_20/batchnorm_7/gamma"module_wrapper_20/batchnorm_7/beta)module_wrapper_20/batchnorm_7/moving_mean-module_wrapper_20/batchnorm_7/moving_variancetotalcounttotal_1count_1Adam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m*Adam/module_wrapper_11/batchnorm_1/gamma/m)Adam/module_wrapper_11/batchnorm_1/beta/m*Adam/module_wrapper_12/batchnorm_2/gamma/m)Adam/module_wrapper_12/batchnorm_2/beta/m*Adam/module_wrapper_14/batchnorm_3/gamma/m)Adam/module_wrapper_14/batchnorm_3/beta/m*Adam/module_wrapper_15/batchnorm_4/gamma/m)Adam/module_wrapper_15/batchnorm_4/beta/m*Adam/module_wrapper_17/batchnorm_5/gamma/m)Adam/module_wrapper_17/batchnorm_5/beta/m*Adam/module_wrapper_18/batchnorm_6/gamma/m)Adam/module_wrapper_18/batchnorm_6/beta/m*Adam/module_wrapper_20/batchnorm_7/gamma/m)Adam/module_wrapper_20/batchnorm_7/beta/mAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*Adam/module_wrapper_11/batchnorm_1/gamma/v)Adam/module_wrapper_11/batchnorm_1/beta/v*Adam/module_wrapper_12/batchnorm_2/gamma/v)Adam/module_wrapper_12/batchnorm_2/beta/v*Adam/module_wrapper_14/batchnorm_3/gamma/v)Adam/module_wrapper_14/batchnorm_3/beta/v*Adam/module_wrapper_15/batchnorm_4/gamma/v)Adam/module_wrapper_15/batchnorm_4/beta/v*Adam/module_wrapper_17/batchnorm_5/gamma/v)Adam/module_wrapper_17/batchnorm_5/beta/v*Adam/module_wrapper_18/batchnorm_6/gamma/v)Adam/module_wrapper_18/batchnorm_6/beta/v*Adam/module_wrapper_20/batchnorm_7/gamma/v)Adam/module_wrapper_20/batchnorm_7/beta/v*}
Tinv
t2r*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_75674ٟ!
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_70873

args_02
#batchnorm_6_readvariableop_resource:	?4
%batchnorm_6_readvariableop_1_resource:	?C
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_6/FusedBatchNormV3/ReadVariableOp?-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?batchnorm_6/ReadVariableOp?batchnorm_6/ReadVariableOp_1?
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp?
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp_1?
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp?
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_6/FusedBatchNormV3?
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
'__inference_dense_2_layer_call_fn_74384

inputs
unknown:
?H?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_709102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_12_layer_call_fn_73944

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_714952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_70560

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_70730

args_02
#batchnorm_3_readvariableop_resource:	?4
%batchnorm_3_readvariableop_1_resource:	?C
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_3/FusedBatchNormV3/ReadVariableOp?-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?batchnorm_3/ReadVariableOp?batchnorm_3/ReadVariableOp_1?
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp?
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp_1?
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp?
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_3/FusedBatchNormV3?
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72195
conv2d_6_input(
conv2d_6_72083:@
conv2d_6_72085:@%
module_wrapper_11_72088:@%
module_wrapper_11_72090:@%
module_wrapper_11_72092:@%
module_wrapper_11_72094:@(
conv2d_7_72097:@@
conv2d_7_72099:@%
module_wrapper_12_72102:@%
module_wrapper_12_72104:@%
module_wrapper_12_72106:@%
module_wrapper_12_72108:@)
conv2d_8_72113:@?
conv2d_8_72115:	?&
module_wrapper_14_72118:	?&
module_wrapper_14_72120:	?&
module_wrapper_14_72122:	?&
module_wrapper_14_72124:	?*
conv2d_9_72127:??
conv2d_9_72129:	?&
module_wrapper_15_72132:	?&
module_wrapper_15_72134:	?&
module_wrapper_15_72136:	?&
module_wrapper_15_72138:	?+
conv2d_10_72143:??
conv2d_10_72145:	?&
module_wrapper_17_72148:	?&
module_wrapper_17_72150:	?&
module_wrapper_17_72152:	?&
module_wrapper_17_72154:	?+
conv2d_11_72157:??
conv2d_11_72159:	?&
module_wrapper_18_72162:	?&
module_wrapper_18_72164:	?&
module_wrapper_18_72166:	?&
module_wrapper_18_72168:	?!
dense_2_72174:
?H?
dense_2_72176:	?&
module_wrapper_20_72179:	?&
module_wrapper_20_72181:	?&
module_wrapper_20_72183:	?&
module_wrapper_20_72185:	? 
dense_3_72189:	?
dense_3_72191:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_14/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_16/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?)module_wrapper_18/StatefulPartitionedCall?)module_wrapper_19/StatefulPartitionedCall?)module_wrapper_20/StatefulPartitionedCall?)module_wrapper_21/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputconv2d_6_72083conv2d_6_72085*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_706082"
 conv2d_6/StatefulPartitionedCall?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0module_wrapper_11_72088module_wrapper_11_72090module_wrapper_11_72092module_wrapper_11_72094*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_715502+
)module_wrapper_11/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0conv2d_7_72097conv2d_7_72099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_706532"
 conv2d_7/StatefulPartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0module_wrapper_12_72102module_wrapper_12_72104module_wrapper_12_72106module_wrapper_12_72108*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_714952+
)module_wrapper_12/StatefulPartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall2module_wrapper_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_705602!
max_pooling2d_3/PartitionedCall?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_714582+
)module_wrapper_13/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0conv2d_8_72113conv2d_8_72115*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_707062"
 conv2d_8/StatefulPartitionedCall?
)module_wrapper_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0module_wrapper_14_72118module_wrapper_14_72120module_wrapper_14_72122module_wrapper_14_72124*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_714172+
)module_wrapper_14/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_14/StatefulPartitionedCall:output:0conv2d_9_72127conv2d_9_72129*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_707512"
 conv2d_9/StatefulPartitionedCall?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0module_wrapper_15_72132module_wrapper_15_72134module_wrapper_15_72136module_wrapper_15_72138*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_713622+
)module_wrapper_15/StatefulPartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_705722!
max_pooling2d_4/PartitionedCall?
)module_wrapper_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*^module_wrapper_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_713252+
)module_wrapper_16/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_16/StatefulPartitionedCall:output:0conv2d_10_72143conv2d_10_72145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_708042#
!conv2d_10/StatefulPartitionedCall?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0module_wrapper_17_72148module_wrapper_17_72150module_wrapper_17_72152module_wrapper_17_72154*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_712842+
)module_wrapper_17/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_17/StatefulPartitionedCall:output:0conv2d_11_72157conv2d_11_72159*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_708492#
!conv2d_11/StatefulPartitionedCall?
)module_wrapper_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0module_wrapper_18_72162module_wrapper_18_72164module_wrapper_18_72166module_wrapper_18_72168*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_712292+
)module_wrapper_18/StatefulPartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall2module_wrapper_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_705842!
max_pooling2d_5/PartitionedCall?
)module_wrapper_19/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*^module_wrapper_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_711922+
)module_wrapper_19/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall2module_wrapper_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_708972
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_72174dense_2_72176*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_709102!
dense_2/StatefulPartitionedCall?
)module_wrapper_20/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0module_wrapper_20_72179module_wrapper_20_72181module_wrapper_20_72183module_wrapper_20_72185*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_711452+
)module_wrapper_20/StatefulPartitionedCall?
)module_wrapper_21/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_20/StatefulPartitionedCall:output:0*^module_wrapper_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_710922+
)module_wrapper_21/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_21/StatefulPartitionedCall:output:0dense_3_72189dense_3_72191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_709642!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_14/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_16/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall*^module_wrapper_18/StatefulPartitionedCall*^module_wrapper_19/StatefulPartitionedCall*^module_wrapper_20/StatefulPartitionedCall*^module_wrapper_21/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_14/StatefulPartitionedCall)module_wrapper_14/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_16/StatefulPartitionedCall)module_wrapper_16/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2V
)module_wrapper_18/StatefulPartitionedCall)module_wrapper_18/StatefulPartitionedCall2V
)module_wrapper_19/StatefulPartitionedCall)module_wrapper_19/StatefulPartitionedCall2V
)module_wrapper_20/StatefulPartitionedCall)module_wrapper_20/StatefulPartitionedCall2V
)module_wrapper_21/StatefulPartitionedCall)module_wrapper_21/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????00
(
_user_specified_nameconv2d_6_input
?
?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_74200

args_02
#batchnorm_5_readvariableop_resource:	?4
%batchnorm_5_readvariableop_1_resource:	?C
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_5/FusedBatchNormV3/ReadVariableOp?-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?batchnorm_5/ReadVariableOp?batchnorm_5/ReadVariableOp_1?
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp?
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp_1?
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp?
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_5/FusedBatchNormV3?
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_74481

args_0
identity?w
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMulargs_0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mulh
dropout_7/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul_1p
IdentityIdentitydropout_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_74375

inputs2
matmul_readvariableop_resource:
?H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddV
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_74591

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_72822

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_74469

args_0
identityo
dropout_7/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_7/Identityp
IdentityIdentitydropout_7/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_74671

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_73949

args_0
identityv
dropout_4/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout_4/Identityw
IdentityIdentitydropout_4/Identity:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_16_layer_call_fn_74157

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_707912
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
C__inference_conv2d_8_layer_call_and_return_conditional_losses_70706

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_2_layer_call_fn_74635

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_724882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_73818

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identity??+batchnorm_1/FusedBatchNormV3/ReadVariableOp?-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?batchnorm_1/ReadVariableOp?batchnorm_1/ReadVariableOp_1?
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp?
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1?
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp?
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2
batchnorm_1/FusedBatchNormV3?
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_74109

args_02
#batchnorm_4_readvariableop_resource:	?4
%batchnorm_4_readvariableop_1_resource:	?C
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_4/AssignNewValue?batchnorm_4/AssignNewValue_1?+batchnorm_4/FusedBatchNormV3/ReadVariableOp?-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?batchnorm_4/ReadVariableOp?batchnorm_4/ReadVariableOp_1?
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp?
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp_1?
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp?
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_4/FusedBatchNormV3?
batchnorm_4/AssignNewValueAssignVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource)batchnorm_4/FusedBatchNormV3:batch_mean:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValue?
batchnorm_4/AssignNewValue_1AssignVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource-batchnorm_4/FusedBatchNormV3:batch_variance:0.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValue_1?
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0^batchnorm_4/AssignNewValue^batchnorm_4/AssignNewValue_1,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_4/AssignNewValuebatchnorm_4/AssignNewValue2<
batchnorm_4/AssignNewValue_1batchnorm_4/AssignNewValue_12Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_70632

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identity??+batchnorm_1/FusedBatchNormV3/ReadVariableOp?-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?batchnorm_1/ReadVariableOp?batchnorm_1/ReadVariableOp_1?
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp?
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1?
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp?
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2
batchnorm_1/FusedBatchNormV3?
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
+__inference_batchnorm_3_layer_call_fn_74697

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_726142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?O
!__inference__traced_restore_75674
file_prefix:
 assignvariableop_conv2d_6_kernel:@.
 assignvariableop_1_conv2d_6_bias:@<
"assignvariableop_2_conv2d_7_kernel:@@.
 assignvariableop_3_conv2d_7_bias:@=
"assignvariableop_4_conv2d_8_kernel:@?/
 assignvariableop_5_conv2d_8_bias:	?>
"assignvariableop_6_conv2d_9_kernel:??/
 assignvariableop_7_conv2d_9_bias:	??
#assignvariableop_8_conv2d_10_kernel:??0
!assignvariableop_9_conv2d_10_bias:	?@
$assignvariableop_10_conv2d_11_kernel:??1
"assignvariableop_11_conv2d_11_bias:	?6
"assignvariableop_12_dense_2_kernel:
?H?/
 assignvariableop_13_dense_2_bias:	?5
"assignvariableop_14_dense_3_kernel:	?.
 assignvariableop_15_dense_3_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: E
7assignvariableop_21_module_wrapper_11_batchnorm_1_gamma:@D
6assignvariableop_22_module_wrapper_11_batchnorm_1_beta:@K
=assignvariableop_23_module_wrapper_11_batchnorm_1_moving_mean:@O
Aassignvariableop_24_module_wrapper_11_batchnorm_1_moving_variance:@E
7assignvariableop_25_module_wrapper_12_batchnorm_2_gamma:@D
6assignvariableop_26_module_wrapper_12_batchnorm_2_beta:@K
=assignvariableop_27_module_wrapper_12_batchnorm_2_moving_mean:@O
Aassignvariableop_28_module_wrapper_12_batchnorm_2_moving_variance:@F
7assignvariableop_29_module_wrapper_14_batchnorm_3_gamma:	?E
6assignvariableop_30_module_wrapper_14_batchnorm_3_beta:	?L
=assignvariableop_31_module_wrapper_14_batchnorm_3_moving_mean:	?P
Aassignvariableop_32_module_wrapper_14_batchnorm_3_moving_variance:	?F
7assignvariableop_33_module_wrapper_15_batchnorm_4_gamma:	?E
6assignvariableop_34_module_wrapper_15_batchnorm_4_beta:	?L
=assignvariableop_35_module_wrapper_15_batchnorm_4_moving_mean:	?P
Aassignvariableop_36_module_wrapper_15_batchnorm_4_moving_variance:	?F
7assignvariableop_37_module_wrapper_17_batchnorm_5_gamma:	?E
6assignvariableop_38_module_wrapper_17_batchnorm_5_beta:	?L
=assignvariableop_39_module_wrapper_17_batchnorm_5_moving_mean:	?P
Aassignvariableop_40_module_wrapper_17_batchnorm_5_moving_variance:	?F
7assignvariableop_41_module_wrapper_18_batchnorm_6_gamma:	?E
6assignvariableop_42_module_wrapper_18_batchnorm_6_beta:	?L
=assignvariableop_43_module_wrapper_18_batchnorm_6_moving_mean:	?P
Aassignvariableop_44_module_wrapper_18_batchnorm_6_moving_variance:	?F
7assignvariableop_45_module_wrapper_20_batchnorm_7_gamma:	?E
6assignvariableop_46_module_wrapper_20_batchnorm_7_beta:	?L
=assignvariableop_47_module_wrapper_20_batchnorm_7_moving_mean:	?P
Aassignvariableop_48_module_wrapper_20_batchnorm_7_moving_variance:	?#
assignvariableop_49_total: #
assignvariableop_50_count: %
assignvariableop_51_total_1: %
assignvariableop_52_count_1: D
*assignvariableop_53_adam_conv2d_6_kernel_m:@6
(assignvariableop_54_adam_conv2d_6_bias_m:@D
*assignvariableop_55_adam_conv2d_7_kernel_m:@@6
(assignvariableop_56_adam_conv2d_7_bias_m:@E
*assignvariableop_57_adam_conv2d_8_kernel_m:@?7
(assignvariableop_58_adam_conv2d_8_bias_m:	?F
*assignvariableop_59_adam_conv2d_9_kernel_m:??7
(assignvariableop_60_adam_conv2d_9_bias_m:	?G
+assignvariableop_61_adam_conv2d_10_kernel_m:??8
)assignvariableop_62_adam_conv2d_10_bias_m:	?G
+assignvariableop_63_adam_conv2d_11_kernel_m:??8
)assignvariableop_64_adam_conv2d_11_bias_m:	?=
)assignvariableop_65_adam_dense_2_kernel_m:
?H?6
'assignvariableop_66_adam_dense_2_bias_m:	?<
)assignvariableop_67_adam_dense_3_kernel_m:	?5
'assignvariableop_68_adam_dense_3_bias_m:L
>assignvariableop_69_adam_module_wrapper_11_batchnorm_1_gamma_m:@K
=assignvariableop_70_adam_module_wrapper_11_batchnorm_1_beta_m:@L
>assignvariableop_71_adam_module_wrapper_12_batchnorm_2_gamma_m:@K
=assignvariableop_72_adam_module_wrapper_12_batchnorm_2_beta_m:@M
>assignvariableop_73_adam_module_wrapper_14_batchnorm_3_gamma_m:	?L
=assignvariableop_74_adam_module_wrapper_14_batchnorm_3_beta_m:	?M
>assignvariableop_75_adam_module_wrapper_15_batchnorm_4_gamma_m:	?L
=assignvariableop_76_adam_module_wrapper_15_batchnorm_4_beta_m:	?M
>assignvariableop_77_adam_module_wrapper_17_batchnorm_5_gamma_m:	?L
=assignvariableop_78_adam_module_wrapper_17_batchnorm_5_beta_m:	?M
>assignvariableop_79_adam_module_wrapper_18_batchnorm_6_gamma_m:	?L
=assignvariableop_80_adam_module_wrapper_18_batchnorm_6_beta_m:	?M
>assignvariableop_81_adam_module_wrapper_20_batchnorm_7_gamma_m:	?L
=assignvariableop_82_adam_module_wrapper_20_batchnorm_7_beta_m:	?D
*assignvariableop_83_adam_conv2d_6_kernel_v:@6
(assignvariableop_84_adam_conv2d_6_bias_v:@D
*assignvariableop_85_adam_conv2d_7_kernel_v:@@6
(assignvariableop_86_adam_conv2d_7_bias_v:@E
*assignvariableop_87_adam_conv2d_8_kernel_v:@?7
(assignvariableop_88_adam_conv2d_8_bias_v:	?F
*assignvariableop_89_adam_conv2d_9_kernel_v:??7
(assignvariableop_90_adam_conv2d_9_bias_v:	?G
+assignvariableop_91_adam_conv2d_10_kernel_v:??8
)assignvariableop_92_adam_conv2d_10_bias_v:	?G
+assignvariableop_93_adam_conv2d_11_kernel_v:??8
)assignvariableop_94_adam_conv2d_11_bias_v:	?=
)assignvariableop_95_adam_dense_2_kernel_v:
?H?6
'assignvariableop_96_adam_dense_2_bias_v:	?<
)assignvariableop_97_adam_dense_3_kernel_v:	?5
'assignvariableop_98_adam_dense_3_bias_v:L
>assignvariableop_99_adam_module_wrapper_11_batchnorm_1_gamma_v:@L
>assignvariableop_100_adam_module_wrapper_11_batchnorm_1_beta_v:@M
?assignvariableop_101_adam_module_wrapper_12_batchnorm_2_gamma_v:@L
>assignvariableop_102_adam_module_wrapper_12_batchnorm_2_beta_v:@N
?assignvariableop_103_adam_module_wrapper_14_batchnorm_3_gamma_v:	?M
>assignvariableop_104_adam_module_wrapper_14_batchnorm_3_beta_v:	?N
?assignvariableop_105_adam_module_wrapper_15_batchnorm_4_gamma_v:	?M
>assignvariableop_106_adam_module_wrapper_15_batchnorm_4_beta_v:	?N
?assignvariableop_107_adam_module_wrapper_17_batchnorm_5_gamma_v:	?M
>assignvariableop_108_adam_module_wrapper_17_batchnorm_5_beta_v:	?N
?assignvariableop_109_adam_module_wrapper_18_batchnorm_6_gamma_v:	?M
>assignvariableop_110_adam_module_wrapper_18_batchnorm_6_beta_v:	?N
?assignvariableop_111_adam_module_wrapper_20_batchnorm_7_gamma_v:	?M
>assignvariableop_112_adam_module_wrapper_20_batchnorm_7_beta_v:	?
identity_114??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?8
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*?7
value?7B?7rB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*?
value?B?rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypesv
t2r	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_10_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_10_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_11_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_11_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_module_wrapper_11_batchnorm_1_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_module_wrapper_11_batchnorm_1_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp=assignvariableop_23_module_wrapper_11_batchnorm_1_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpAassignvariableop_24_module_wrapper_11_batchnorm_1_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp7assignvariableop_25_module_wrapper_12_batchnorm_2_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp6assignvariableop_26_module_wrapper_12_batchnorm_2_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp=assignvariableop_27_module_wrapper_12_batchnorm_2_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpAassignvariableop_28_module_wrapper_12_batchnorm_2_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_module_wrapper_14_batchnorm_3_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_module_wrapper_14_batchnorm_3_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp=assignvariableop_31_module_wrapper_14_batchnorm_3_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpAassignvariableop_32_module_wrapper_14_batchnorm_3_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp7assignvariableop_33_module_wrapper_15_batchnorm_4_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_module_wrapper_15_batchnorm_4_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp=assignvariableop_35_module_wrapper_15_batchnorm_4_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpAassignvariableop_36_module_wrapper_15_batchnorm_4_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp7assignvariableop_37_module_wrapper_17_batchnorm_5_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp6assignvariableop_38_module_wrapper_17_batchnorm_5_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp=assignvariableop_39_module_wrapper_17_batchnorm_5_moving_meanIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpAassignvariableop_40_module_wrapper_17_batchnorm_5_moving_varianceIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp7assignvariableop_41_module_wrapper_18_batchnorm_6_gammaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp6assignvariableop_42_module_wrapper_18_batchnorm_6_betaIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp=assignvariableop_43_module_wrapper_18_batchnorm_6_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpAassignvariableop_44_module_wrapper_18_batchnorm_6_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp7assignvariableop_45_module_wrapper_20_batchnorm_7_gammaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp6assignvariableop_46_module_wrapper_20_batchnorm_7_betaIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp=assignvariableop_47_module_wrapper_20_batchnorm_7_moving_meanIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpAassignvariableop_48_module_wrapper_20_batchnorm_7_moving_varianceIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpassignvariableop_49_totalIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_countIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_6_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_6_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_7_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_7_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv2d_8_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_conv2d_8_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv2d_9_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv2d_9_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_10_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_10_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_11_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_11_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_dense_2_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_dense_2_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_3_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_3_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp>assignvariableop_69_adam_module_wrapper_11_batchnorm_1_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp=assignvariableop_70_adam_module_wrapper_11_batchnorm_1_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp>assignvariableop_71_adam_module_wrapper_12_batchnorm_2_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp=assignvariableop_72_adam_module_wrapper_12_batchnorm_2_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp>assignvariableop_73_adam_module_wrapper_14_batchnorm_3_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp=assignvariableop_74_adam_module_wrapper_14_batchnorm_3_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp>assignvariableop_75_adam_module_wrapper_15_batchnorm_4_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp=assignvariableop_76_adam_module_wrapper_15_batchnorm_4_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp>assignvariableop_77_adam_module_wrapper_17_batchnorm_5_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp=assignvariableop_78_adam_module_wrapper_17_batchnorm_5_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp>assignvariableop_79_adam_module_wrapper_18_batchnorm_6_gamma_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp=assignvariableop_80_adam_module_wrapper_18_batchnorm_6_beta_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp>assignvariableop_81_adam_module_wrapper_20_batchnorm_7_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp=assignvariableop_82_adam_module_wrapper_20_batchnorm_7_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_conv2d_6_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_conv2d_6_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_conv2d_7_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_conv2d_7_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_conv2d_8_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_conv2d_8_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_conv2d_9_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_conv2d_9_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_conv2d_10_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_conv2d_10_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv2d_11_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv2d_11_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp)assignvariableop_95_adam_dense_2_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp'assignvariableop_96_adam_dense_2_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_dense_3_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp'assignvariableop_98_adam_dense_3_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp>assignvariableop_99_adam_module_wrapper_11_batchnorm_1_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp>assignvariableop_100_adam_module_wrapper_11_batchnorm_1_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp?assignvariableop_101_adam_module_wrapper_12_batchnorm_2_gamma_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp>assignvariableop_102_adam_module_wrapper_12_batchnorm_2_beta_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp?assignvariableop_103_adam_module_wrapper_14_batchnorm_3_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp>assignvariableop_104_adam_module_wrapper_14_batchnorm_3_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp?assignvariableop_105_adam_module_wrapper_15_batchnorm_4_gamma_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp>assignvariableop_106_adam_module_wrapper_15_batchnorm_4_beta_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp?assignvariableop_107_adam_module_wrapper_17_batchnorm_5_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp>assignvariableop_108_adam_module_wrapper_17_batchnorm_5_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp?assignvariableop_109_adam_module_wrapper_18_batchnorm_6_gamma_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp>assignvariableop_110_adam_module_wrapper_18_batchnorm_6_beta_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp?assignvariableop_111_adam_module_wrapper_20_batchnorm_7_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp>assignvariableop_112_adam_module_wrapper_20_batchnorm_7_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1129
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_113Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_113?
Identity_114IdentityIdentity_113:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_114"%
identity_114Identity_114:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122*
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
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_73900

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identity??+batchnorm_2/FusedBatchNormV3/ReadVariableOp?-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?batchnorm_2/ReadVariableOp?batchnorm_2/ReadVariableOp_1?
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp?
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1?
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp?
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2
batchnorm_2/FusedBatchNormV3?
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_20_layer_call_fn_74451

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_709362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_71284

args_02
#batchnorm_5_readvariableop_resource:	?4
%batchnorm_5_readvariableop_1_resource:	?C
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_5/AssignNewValue?batchnorm_5/AssignNewValue_1?+batchnorm_5/FusedBatchNormV3/ReadVariableOp?-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?batchnorm_5/ReadVariableOp?batchnorm_5/ReadVariableOp_1?
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp?
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp_1?
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp?
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_5/FusedBatchNormV3?
batchnorm_5/AssignNewValueAssignVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource)batchnorm_5/FusedBatchNormV3:batch_mean:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValue?
batchnorm_5/AssignNewValue_1AssignVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource-batchnorm_5/FusedBatchNormV3:batch_variance:0.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValue_1?
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0^batchnorm_5/AssignNewValue^batchnorm_5/AssignNewValue_1,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_5/AssignNewValuebatchnorm_5/AssignNewValue2<
batchnorm_5/AssignNewValue_1batchnorm_5/AssignNewValue_12Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
+__inference_batchnorm_1_layer_call_fn_74560

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_723182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?*
?
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_74937

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_3_layer_call_fn_70566

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_705602
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?

,__inference_sequential_1_layer_call_fn_71965
conv2d_6_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:
?H?

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:	?

unknown_42:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
 !"%&)*+,*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_717812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????00
(
_user_specified_nameconv2d_6_input
?
?
1__inference_module_wrapper_18_layer_call_fn_74313

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_708732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
D__inference_conv2d_10_layer_call_and_return_conditional_losses_70804

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_9_layer_call_and_return_conditional_losses_70751

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_70897

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????H2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_3_layer_call_fn_74684

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_725702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_74152

args_0
identity?w
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulargs_0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mulh
dropout_5/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mul_1x
IdentityIdentitydropout_5/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
+__inference_batchnorm_5_layer_call_fn_74821

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_728662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_7_layer_call_and_return_conditional_losses_73873

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_71550

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identity??batchnorm_1/AssignNewValue?batchnorm_1/AssignNewValue_1?+batchnorm_1/FusedBatchNormV3/ReadVariableOp?-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?batchnorm_1/ReadVariableOp?batchnorm_1/ReadVariableOp_1?
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp?
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1?
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp?
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_1/FusedBatchNormV3?
batchnorm_1/AssignNewValueAssignVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource)batchnorm_1/FusedBatchNormV3:batch_mean:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValue?
batchnorm_1/AssignNewValue_1AssignVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource-batchnorm_1/FusedBatchNormV3:batch_variance:0.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValue_1?
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0^batchnorm_1/AssignNewValue^batchnorm_1/AssignNewValue_1,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 28
batchnorm_1/AssignNewValuebatchnorm_1/AssignNewValue2<
batchnorm_1/AssignNewValue_1batchnorm_1/AssignNewValue_12Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_74839

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_11_layer_call_fn_74264

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_708492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_72362

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_70951

args_0
identityo
dropout_7/IdentityIdentityargs_0*
T0*(
_output_shapes
:??????????2
dropout_7/Identityp
IdentityIdentitydropout_7/Identity:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
C__inference_conv2d_6_layer_call_and_return_conditional_losses_70608

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_4_layer_call_fn_74759

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_727402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_74027

args_02
#batchnorm_3_readvariableop_resource:	?4
%batchnorm_3_readvariableop_1_resource:	?C
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_3/AssignNewValue?batchnorm_3/AssignNewValue_1?+batchnorm_3/FusedBatchNormV3/ReadVariableOp?-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?batchnorm_3/ReadVariableOp?batchnorm_3/ReadVariableOp_1?
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp?
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp_1?
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp?
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_3/FusedBatchNormV3?
batchnorm_3/AssignNewValueAssignVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource)batchnorm_3/FusedBatchNormV3:batch_mean:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValue?
batchnorm_3/AssignNewValue_1AssignVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource-batchnorm_3/FusedBatchNormV3:batch_variance:0.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValue_1?
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0^batchnorm_3/AssignNewValue^batchnorm_3/AssignNewValue_1,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_3/AssignNewValuebatchnorm_3/AssignNewValue2<
batchnorm_3/AssignNewValue_1batchnorm_3/AssignNewValue_12Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_71458

args_0
identity?w
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/dropout/Const?
dropout_4/dropout/MulMulargs_0 dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_4/dropout/Mulh
dropout_4/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_4/dropout/Mul_1w
IdentityIdentitydropout_4/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
??
?/
G__inference_sequential_1_layer_call_and_return_conditional_losses_73594

inputsA
'conv2d_6_conv2d_readvariableop_resource:@6
(conv2d_6_biasadd_readvariableop_resource:@C
5module_wrapper_11_batchnorm_1_readvariableop_resource:@E
7module_wrapper_11_batchnorm_1_readvariableop_1_resource:@T
Fmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource:@V
Hmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_7_conv2d_readvariableop_resource:@@6
(conv2d_7_biasadd_readvariableop_resource:@C
5module_wrapper_12_batchnorm_2_readvariableop_resource:@E
7module_wrapper_12_batchnorm_2_readvariableop_1_resource:@T
Fmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@V
Hmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_8_conv2d_readvariableop_resource:@?7
(conv2d_8_biasadd_readvariableop_resource:	?D
5module_wrapper_14_batchnorm_3_readvariableop_resource:	?F
7module_wrapper_14_batchnorm_3_readvariableop_1_resource:	?U
Fmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_9_conv2d_readvariableop_resource:??7
(conv2d_9_biasadd_readvariableop_resource:	?D
5module_wrapper_15_batchnorm_4_readvariableop_resource:	?F
7module_wrapper_15_batchnorm_4_readvariableop_1_resource:	?U
Fmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_10_conv2d_readvariableop_resource:??8
)conv2d_10_biasadd_readvariableop_resource:	?D
5module_wrapper_17_batchnorm_5_readvariableop_resource:	?F
7module_wrapper_17_batchnorm_5_readvariableop_1_resource:	?U
Fmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_11_conv2d_readvariableop_resource:??8
)conv2d_11_biasadd_readvariableop_resource:	?D
5module_wrapper_18_batchnorm_6_readvariableop_resource:	?F
7module_wrapper_18_batchnorm_6_readvariableop_1_resource:	?U
Fmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?:
&dense_2_matmul_readvariableop_resource:
?H?6
'dense_2_biasadd_readvariableop_resource:	?T
Emodule_wrapper_20_batchnorm_7_assignmovingavg_readvariableop_resource:	?V
Gmodule_wrapper_20_batchnorm_7_assignmovingavg_1_readvariableop_resource:	?R
Cmodule_wrapper_20_batchnorm_7_batchnorm_mul_readvariableop_resource:	?N
?module_wrapper_20_batchnorm_7_batchnorm_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?,module_wrapper_11/batchnorm_1/AssignNewValue?.module_wrapper_11/batchnorm_1/AssignNewValue_1?=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp??module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_11/batchnorm_1/ReadVariableOp?.module_wrapper_11/batchnorm_1/ReadVariableOp_1?,module_wrapper_12/batchnorm_2/AssignNewValue?.module_wrapper_12/batchnorm_2/AssignNewValue_1?=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp??module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_12/batchnorm_2/ReadVariableOp?.module_wrapper_12/batchnorm_2/ReadVariableOp_1?,module_wrapper_14/batchnorm_3/AssignNewValue?.module_wrapper_14/batchnorm_3/AssignNewValue_1?=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp??module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_14/batchnorm_3/ReadVariableOp?.module_wrapper_14/batchnorm_3/ReadVariableOp_1?,module_wrapper_15/batchnorm_4/AssignNewValue?.module_wrapper_15/batchnorm_4/AssignNewValue_1?=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp??module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_15/batchnorm_4/ReadVariableOp?.module_wrapper_15/batchnorm_4/ReadVariableOp_1?,module_wrapper_17/batchnorm_5/AssignNewValue?.module_wrapper_17/batchnorm_5/AssignNewValue_1?=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp??module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_17/batchnorm_5/ReadVariableOp?.module_wrapper_17/batchnorm_5/ReadVariableOp_1?,module_wrapper_18/batchnorm_6/AssignNewValue?.module_wrapper_18/batchnorm_6/AssignNewValue_1?=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp??module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_18/batchnorm_6/ReadVariableOp?.module_wrapper_18/batchnorm_6/ReadVariableOp_1?-module_wrapper_20/batchnorm_7/AssignMovingAvg?<module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp?/module_wrapper_20/batchnorm_7/AssignMovingAvg_1?>module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp?6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp?:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_6/Conv2D?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_6/BiasAddx
conv2d_6/EluEluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_6/Elu?
,module_wrapper_11/batchnorm_1/ReadVariableOpReadVariableOp5module_wrapper_11_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02.
,module_wrapper_11/batchnorm_1/ReadVariableOp?
.module_wrapper_11/batchnorm_1/ReadVariableOp_1ReadVariableOp7module_wrapper_11_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype020
.module_wrapper_11/batchnorm_1/ReadVariableOp_1?
=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02?
=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02A
?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_11/batchnorm_1/FusedBatchNormV3FusedBatchNormV3conv2d_6/Elu:activations:04module_wrapper_11/batchnorm_1/ReadVariableOp:value:06module_wrapper_11/batchnorm_1/ReadVariableOp_1:value:0Emodule_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.module_wrapper_11/batchnorm_1/FusedBatchNormV3?
,module_wrapper_11/batchnorm_1/AssignNewValueAssignVariableOpFmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource;module_wrapper_11/batchnorm_1/FusedBatchNormV3:batch_mean:0>^module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_11/batchnorm_1/AssignNewValue?
.module_wrapper_11/batchnorm_1/AssignNewValue_1AssignVariableOpHmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource?module_wrapper_11/batchnorm_1/FusedBatchNormV3:batch_variance:0@^module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.module_wrapper_11/batchnorm_1/AssignNewValue_1?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2DConv2D2module_wrapper_11/batchnorm_1/FusedBatchNormV3:y:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_7/Conv2D?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_7/BiasAddx
conv2d_7/EluEluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_7/Elu?
,module_wrapper_12/batchnorm_2/ReadVariableOpReadVariableOp5module_wrapper_12_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02.
,module_wrapper_12/batchnorm_2/ReadVariableOp?
.module_wrapper_12/batchnorm_2/ReadVariableOp_1ReadVariableOp7module_wrapper_12_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype020
.module_wrapper_12/batchnorm_2/ReadVariableOp_1?
=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02?
=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02A
?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_12/batchnorm_2/FusedBatchNormV3FusedBatchNormV3conv2d_7/Elu:activations:04module_wrapper_12/batchnorm_2/ReadVariableOp:value:06module_wrapper_12/batchnorm_2/ReadVariableOp_1:value:0Emodule_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.module_wrapper_12/batchnorm_2/FusedBatchNormV3?
,module_wrapper_12/batchnorm_2/AssignNewValueAssignVariableOpFmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource;module_wrapper_12/batchnorm_2/FusedBatchNormV3:batch_mean:0>^module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_12/batchnorm_2/AssignNewValue?
.module_wrapper_12/batchnorm_2/AssignNewValue_1AssignVariableOpHmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource?module_wrapper_12/batchnorm_2/FusedBatchNormV3:batch_variance:0@^module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.module_wrapper_12/batchnorm_2/AssignNewValue_1?
max_pooling2d_3/MaxPoolMaxPool2module_wrapper_12/batchnorm_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool?
)module_wrapper_13/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)module_wrapper_13/dropout_4/dropout/Const?
'module_wrapper_13/dropout_4/dropout/MulMul max_pooling2d_3/MaxPool:output:02module_wrapper_13/dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2)
'module_wrapper_13/dropout_4/dropout/Mul?
)module_wrapper_13/dropout_4/dropout/ShapeShape max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_13/dropout_4/dropout/Shape?
@module_wrapper_13/dropout_4/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_13/dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02B
@module_wrapper_13/dropout_4/dropout/random_uniform/RandomUniform?
2module_wrapper_13/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>24
2module_wrapper_13/dropout_4/dropout/GreaterEqual/y?
0module_wrapper_13/dropout_4/dropout/GreaterEqualGreaterEqualImodule_wrapper_13/dropout_4/dropout/random_uniform/RandomUniform:output:0;module_wrapper_13/dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@22
0module_wrapper_13/dropout_4/dropout/GreaterEqual?
(module_wrapper_13/dropout_4/dropout/CastCast4module_wrapper_13/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2*
(module_wrapper_13/dropout_4/dropout/Cast?
)module_wrapper_13/dropout_4/dropout/Mul_1Mul+module_wrapper_13/dropout_4/dropout/Mul:z:0,module_wrapper_13/dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2+
)module_wrapper_13/dropout_4/dropout/Mul_1?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2D-module_wrapper_13/dropout_4/dropout/Mul_1:z:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_8/BiasAddy
conv2d_8/EluEluconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_8/Elu?
,module_wrapper_14/batchnorm_3/ReadVariableOpReadVariableOp5module_wrapper_14_batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_14/batchnorm_3/ReadVariableOp?
.module_wrapper_14/batchnorm_3/ReadVariableOp_1ReadVariableOp7module_wrapper_14_batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_14/batchnorm_3/ReadVariableOp_1?
=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_14/batchnorm_3/FusedBatchNormV3FusedBatchNormV3conv2d_8/Elu:activations:04module_wrapper_14/batchnorm_3/ReadVariableOp:value:06module_wrapper_14/batchnorm_3/ReadVariableOp_1:value:0Emodule_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.module_wrapper_14/batchnorm_3/FusedBatchNormV3?
,module_wrapper_14/batchnorm_3/AssignNewValueAssignVariableOpFmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource;module_wrapper_14/batchnorm_3/FusedBatchNormV3:batch_mean:0>^module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_14/batchnorm_3/AssignNewValue?
.module_wrapper_14/batchnorm_3/AssignNewValue_1AssignVariableOpHmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource?module_wrapper_14/batchnorm_3/FusedBatchNormV3:batch_variance:0@^module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.module_wrapper_14/batchnorm_3/AssignNewValue_1?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2D2module_wrapper_14/batchnorm_3/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_9/BiasAddy
conv2d_9/EluEluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_9/Elu?
,module_wrapper_15/batchnorm_4/ReadVariableOpReadVariableOp5module_wrapper_15_batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_15/batchnorm_4/ReadVariableOp?
.module_wrapper_15/batchnorm_4/ReadVariableOp_1ReadVariableOp7module_wrapper_15_batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_15/batchnorm_4/ReadVariableOp_1?
=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_15/batchnorm_4/FusedBatchNormV3FusedBatchNormV3conv2d_9/Elu:activations:04module_wrapper_15/batchnorm_4/ReadVariableOp:value:06module_wrapper_15/batchnorm_4/ReadVariableOp_1:value:0Emodule_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.module_wrapper_15/batchnorm_4/FusedBatchNormV3?
,module_wrapper_15/batchnorm_4/AssignNewValueAssignVariableOpFmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource;module_wrapper_15/batchnorm_4/FusedBatchNormV3:batch_mean:0>^module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_15/batchnorm_4/AssignNewValue?
.module_wrapper_15/batchnorm_4/AssignNewValue_1AssignVariableOpHmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource?module_wrapper_15/batchnorm_4/FusedBatchNormV3:batch_variance:0@^module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.module_wrapper_15/batchnorm_4/AssignNewValue_1?
max_pooling2d_4/MaxPoolMaxPool2module_wrapper_15/batchnorm_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
)module_wrapper_16/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)module_wrapper_16/dropout_5/dropout/Const?
'module_wrapper_16/dropout_5/dropout/MulMul max_pooling2d_4/MaxPool:output:02module_wrapper_16/dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2)
'module_wrapper_16/dropout_5/dropout/Mul?
)module_wrapper_16/dropout_5/dropout/ShapeShape max_pooling2d_4/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_16/dropout_5/dropout/Shape?
@module_wrapper_16/dropout_5/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_16/dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02B
@module_wrapper_16/dropout_5/dropout/random_uniform/RandomUniform?
2module_wrapper_16/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>24
2module_wrapper_16/dropout_5/dropout/GreaterEqual/y?
0module_wrapper_16/dropout_5/dropout/GreaterEqualGreaterEqualImodule_wrapper_16/dropout_5/dropout/random_uniform/RandomUniform:output:0;module_wrapper_16/dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????22
0module_wrapper_16/dropout_5/dropout/GreaterEqual?
(module_wrapper_16/dropout_5/dropout/CastCast4module_wrapper_16/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2*
(module_wrapper_16/dropout_5/dropout/Cast?
)module_wrapper_16/dropout_5/dropout/Mul_1Mul+module_wrapper_16/dropout_5/dropout/Mul:z:0,module_wrapper_16/dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2+
)module_wrapper_16/dropout_5/dropout/Mul_1?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2D-module_wrapper_16/dropout_5/dropout/Mul_1:z:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_10/BiasAdd|
conv2d_10/EluEluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_10/Elu?
,module_wrapper_17/batchnorm_5/ReadVariableOpReadVariableOp5module_wrapper_17_batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_17/batchnorm_5/ReadVariableOp?
.module_wrapper_17/batchnorm_5/ReadVariableOp_1ReadVariableOp7module_wrapper_17_batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_17/batchnorm_5/ReadVariableOp_1?
=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_17/batchnorm_5/FusedBatchNormV3FusedBatchNormV3conv2d_10/Elu:activations:04module_wrapper_17/batchnorm_5/ReadVariableOp:value:06module_wrapper_17/batchnorm_5/ReadVariableOp_1:value:0Emodule_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.module_wrapper_17/batchnorm_5/FusedBatchNormV3?
,module_wrapper_17/batchnorm_5/AssignNewValueAssignVariableOpFmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource;module_wrapper_17/batchnorm_5/FusedBatchNormV3:batch_mean:0>^module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_17/batchnorm_5/AssignNewValue?
.module_wrapper_17/batchnorm_5/AssignNewValue_1AssignVariableOpHmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource?module_wrapper_17/batchnorm_5/FusedBatchNormV3:batch_variance:0@^module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.module_wrapper_17/batchnorm_5/AssignNewValue_1?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D2module_wrapper_17/batchnorm_5/FusedBatchNormV3:y:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_11/BiasAdd|
conv2d_11/EluEluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_11/Elu?
,module_wrapper_18/batchnorm_6/ReadVariableOpReadVariableOp5module_wrapper_18_batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_18/batchnorm_6/ReadVariableOp?
.module_wrapper_18/batchnorm_6/ReadVariableOp_1ReadVariableOp7module_wrapper_18_batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_18/batchnorm_6/ReadVariableOp_1?
=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_18/batchnorm_6/FusedBatchNormV3FusedBatchNormV3conv2d_11/Elu:activations:04module_wrapper_18/batchnorm_6/ReadVariableOp:value:06module_wrapper_18/batchnorm_6/ReadVariableOp_1:value:0Emodule_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.module_wrapper_18/batchnorm_6/FusedBatchNormV3?
,module_wrapper_18/batchnorm_6/AssignNewValueAssignVariableOpFmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource;module_wrapper_18/batchnorm_6/FusedBatchNormV3:batch_mean:0>^module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02.
,module_wrapper_18/batchnorm_6/AssignNewValue?
.module_wrapper_18/batchnorm_6/AssignNewValue_1AssignVariableOpHmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource?module_wrapper_18/batchnorm_6/FusedBatchNormV3:batch_variance:0@^module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype020
.module_wrapper_18/batchnorm_6/AssignNewValue_1?
max_pooling2d_5/MaxPoolMaxPool2module_wrapper_18/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPool?
)module_wrapper_19/dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)module_wrapper_19/dropout_6/dropout/Const?
'module_wrapper_19/dropout_6/dropout/MulMul max_pooling2d_5/MaxPool:output:02module_wrapper_19/dropout_6/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2)
'module_wrapper_19/dropout_6/dropout/Mul?
)module_wrapper_19/dropout_6/dropout/ShapeShape max_pooling2d_5/MaxPool:output:0*
T0*
_output_shapes
:2+
)module_wrapper_19/dropout_6/dropout/Shape?
@module_wrapper_19/dropout_6/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_19/dropout_6/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02B
@module_wrapper_19/dropout_6/dropout/random_uniform/RandomUniform?
2module_wrapper_19/dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>24
2module_wrapper_19/dropout_6/dropout/GreaterEqual/y?
0module_wrapper_19/dropout_6/dropout/GreaterEqualGreaterEqualImodule_wrapper_19/dropout_6/dropout/random_uniform/RandomUniform:output:0;module_wrapper_19/dropout_6/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????22
0module_wrapper_19/dropout_6/dropout/GreaterEqual?
(module_wrapper_19/dropout_6/dropout/CastCast4module_wrapper_19/dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2*
(module_wrapper_19/dropout_6/dropout/Cast?
)module_wrapper_19/dropout_6/dropout/Mul_1Mul+module_wrapper_19/dropout_6/dropout/Mul:z:0,module_wrapper_19/dropout_6/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2+
)module_wrapper_19/dropout_6/dropout/Mul_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
flatten_1/Const?
flatten_1/ReshapeReshape-module_wrapper_19/dropout_6/dropout/Mul_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????H2
flatten_1/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddn
dense_2/EluEludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Elu?
<module_wrapper_20/batchnorm_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2>
<module_wrapper_20/batchnorm_7/moments/mean/reduction_indices?
*module_wrapper_20/batchnorm_7/moments/meanMeandense_2/Elu:activations:0Emodule_wrapper_20/batchnorm_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2,
*module_wrapper_20/batchnorm_7/moments/mean?
2module_wrapper_20/batchnorm_7/moments/StopGradientStopGradient3module_wrapper_20/batchnorm_7/moments/mean:output:0*
T0*
_output_shapes
:	?24
2module_wrapper_20/batchnorm_7/moments/StopGradient?
7module_wrapper_20/batchnorm_7/moments/SquaredDifferenceSquaredDifferencedense_2/Elu:activations:0;module_wrapper_20/batchnorm_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????29
7module_wrapper_20/batchnorm_7/moments/SquaredDifference?
@module_wrapper_20/batchnorm_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2B
@module_wrapper_20/batchnorm_7/moments/variance/reduction_indices?
.module_wrapper_20/batchnorm_7/moments/varianceMean;module_wrapper_20/batchnorm_7/moments/SquaredDifference:z:0Imodule_wrapper_20/batchnorm_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(20
.module_wrapper_20/batchnorm_7/moments/variance?
-module_wrapper_20/batchnorm_7/moments/SqueezeSqueeze3module_wrapper_20/batchnorm_7/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2/
-module_wrapper_20/batchnorm_7/moments/Squeeze?
/module_wrapper_20/batchnorm_7/moments/Squeeze_1Squeeze7module_wrapper_20/batchnorm_7/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 21
/module_wrapper_20/batchnorm_7/moments/Squeeze_1?
3module_wrapper_20/batchnorm_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<25
3module_wrapper_20/batchnorm_7/AssignMovingAvg/decay?
<module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOpReadVariableOpEmodule_wrapper_20_batchnorm_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp?
1module_wrapper_20/batchnorm_7/AssignMovingAvg/subSubDmodule_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp:value:06module_wrapper_20/batchnorm_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:?23
1module_wrapper_20/batchnorm_7/AssignMovingAvg/sub?
1module_wrapper_20/batchnorm_7/AssignMovingAvg/mulMul5module_wrapper_20/batchnorm_7/AssignMovingAvg/sub:z:0<module_wrapper_20/batchnorm_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?23
1module_wrapper_20/batchnorm_7/AssignMovingAvg/mul?
-module_wrapper_20/batchnorm_7/AssignMovingAvgAssignSubVariableOpEmodule_wrapper_20_batchnorm_7_assignmovingavg_readvariableop_resource5module_wrapper_20/batchnorm_7/AssignMovingAvg/mul:z:0=^module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02/
-module_wrapper_20/batchnorm_7/AssignMovingAvg?
5module_wrapper_20/batchnorm_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<27
5module_wrapper_20/batchnorm_7/AssignMovingAvg_1/decay?
>module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOpReadVariableOpGmodule_wrapper_20_batchnorm_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp?
3module_wrapper_20/batchnorm_7/AssignMovingAvg_1/subSubFmodule_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp:value:08module_wrapper_20/batchnorm_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?25
3module_wrapper_20/batchnorm_7/AssignMovingAvg_1/sub?
3module_wrapper_20/batchnorm_7/AssignMovingAvg_1/mulMul7module_wrapper_20/batchnorm_7/AssignMovingAvg_1/sub:z:0>module_wrapper_20/batchnorm_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?25
3module_wrapper_20/batchnorm_7/AssignMovingAvg_1/mul?
/module_wrapper_20/batchnorm_7/AssignMovingAvg_1AssignSubVariableOpGmodule_wrapper_20_batchnorm_7_assignmovingavg_1_readvariableop_resource7module_wrapper_20/batchnorm_7/AssignMovingAvg_1/mul:z:0?^module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype021
/module_wrapper_20/batchnorm_7/AssignMovingAvg_1?
-module_wrapper_20/batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2/
-module_wrapper_20/batchnorm_7/batchnorm/add/y?
+module_wrapper_20/batchnorm_7/batchnorm/addAddV28module_wrapper_20/batchnorm_7/moments/Squeeze_1:output:06module_wrapper_20/batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2-
+module_wrapper_20/batchnorm_7/batchnorm/add?
-module_wrapper_20/batchnorm_7/batchnorm/RsqrtRsqrt/module_wrapper_20/batchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2/
-module_wrapper_20/batchnorm_7/batchnorm/Rsqrt?
:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOpCmodule_wrapper_20_batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp?
+module_wrapper_20/batchnorm_7/batchnorm/mulMul1module_wrapper_20/batchnorm_7/batchnorm/Rsqrt:y:0Bmodule_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2-
+module_wrapper_20/batchnorm_7/batchnorm/mul?
-module_wrapper_20/batchnorm_7/batchnorm/mul_1Muldense_2/Elu:activations:0/module_wrapper_20/batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2/
-module_wrapper_20/batchnorm_7/batchnorm/mul_1?
-module_wrapper_20/batchnorm_7/batchnorm/mul_2Mul6module_wrapper_20/batchnorm_7/moments/Squeeze:output:0/module_wrapper_20/batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2/
-module_wrapper_20/batchnorm_7/batchnorm/mul_2?
6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOpReadVariableOp?module_wrapper_20_batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp?
+module_wrapper_20/batchnorm_7/batchnorm/subSub>module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp:value:01module_wrapper_20/batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2-
+module_wrapper_20/batchnorm_7/batchnorm/sub?
-module_wrapper_20/batchnorm_7/batchnorm/add_1AddV21module_wrapper_20/batchnorm_7/batchnorm/mul_1:z:0/module_wrapper_20/batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2/
-module_wrapper_20/batchnorm_7/batchnorm/add_1?
)module_wrapper_21/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)module_wrapper_21/dropout_7/dropout/Const?
'module_wrapper_21/dropout_7/dropout/MulMul1module_wrapper_20/batchnorm_7/batchnorm/add_1:z:02module_wrapper_21/dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2)
'module_wrapper_21/dropout_7/dropout/Mul?
)module_wrapper_21/dropout_7/dropout/ShapeShape1module_wrapper_20/batchnorm_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)module_wrapper_21/dropout_7/dropout/Shape?
@module_wrapper_21/dropout_7/dropout/random_uniform/RandomUniformRandomUniform2module_wrapper_21/dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02B
@module_wrapper_21/dropout_7/dropout/random_uniform/RandomUniform?
2module_wrapper_21/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>24
2module_wrapper_21/dropout_7/dropout/GreaterEqual/y?
0module_wrapper_21/dropout_7/dropout/GreaterEqualGreaterEqualImodule_wrapper_21/dropout_7/dropout/random_uniform/RandomUniform:output:0;module_wrapper_21/dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????22
0module_wrapper_21/dropout_7/dropout/GreaterEqual?
(module_wrapper_21/dropout_7/dropout/CastCast4module_wrapper_21/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2*
(module_wrapper_21/dropout_7/dropout/Cast?
)module_wrapper_21/dropout_7/dropout/Mul_1Mul+module_wrapper_21/dropout_7/dropout/Mul:z:0,module_wrapper_21/dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2+
)module_wrapper_21/dropout_7/dropout/Mul_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul-module_wrapper_21/dropout_7/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_3/Softmax?
IdentityIdentitydense_3/Softmax:softmax:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp-^module_wrapper_11/batchnorm_1/AssignNewValue/^module_wrapper_11/batchnorm_1/AssignNewValue_1>^module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp@^module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_11/batchnorm_1/ReadVariableOp/^module_wrapper_11/batchnorm_1/ReadVariableOp_1-^module_wrapper_12/batchnorm_2/AssignNewValue/^module_wrapper_12/batchnorm_2/AssignNewValue_1>^module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp@^module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_12/batchnorm_2/ReadVariableOp/^module_wrapper_12/batchnorm_2/ReadVariableOp_1-^module_wrapper_14/batchnorm_3/AssignNewValue/^module_wrapper_14/batchnorm_3/AssignNewValue_1>^module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp@^module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_14/batchnorm_3/ReadVariableOp/^module_wrapper_14/batchnorm_3/ReadVariableOp_1-^module_wrapper_15/batchnorm_4/AssignNewValue/^module_wrapper_15/batchnorm_4/AssignNewValue_1>^module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp@^module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_15/batchnorm_4/ReadVariableOp/^module_wrapper_15/batchnorm_4/ReadVariableOp_1-^module_wrapper_17/batchnorm_5/AssignNewValue/^module_wrapper_17/batchnorm_5/AssignNewValue_1>^module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp@^module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_17/batchnorm_5/ReadVariableOp/^module_wrapper_17/batchnorm_5/ReadVariableOp_1-^module_wrapper_18/batchnorm_6/AssignNewValue/^module_wrapper_18/batchnorm_6/AssignNewValue_1>^module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp@^module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_18/batchnorm_6/ReadVariableOp/^module_wrapper_18/batchnorm_6/ReadVariableOp_1.^module_wrapper_20/batchnorm_7/AssignMovingAvg=^module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp0^module_wrapper_20/batchnorm_7/AssignMovingAvg_1?^module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp7^module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp;^module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2\
,module_wrapper_11/batchnorm_1/AssignNewValue,module_wrapper_11/batchnorm_1/AssignNewValue2`
.module_wrapper_11/batchnorm_1/AssignNewValue_1.module_wrapper_11/batchnorm_1/AssignNewValue_12~
=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_11/batchnorm_1/ReadVariableOp,module_wrapper_11/batchnorm_1/ReadVariableOp2`
.module_wrapper_11/batchnorm_1/ReadVariableOp_1.module_wrapper_11/batchnorm_1/ReadVariableOp_12\
,module_wrapper_12/batchnorm_2/AssignNewValue,module_wrapper_12/batchnorm_2/AssignNewValue2`
.module_wrapper_12/batchnorm_2/AssignNewValue_1.module_wrapper_12/batchnorm_2/AssignNewValue_12~
=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_12/batchnorm_2/ReadVariableOp,module_wrapper_12/batchnorm_2/ReadVariableOp2`
.module_wrapper_12/batchnorm_2/ReadVariableOp_1.module_wrapper_12/batchnorm_2/ReadVariableOp_12\
,module_wrapper_14/batchnorm_3/AssignNewValue,module_wrapper_14/batchnorm_3/AssignNewValue2`
.module_wrapper_14/batchnorm_3/AssignNewValue_1.module_wrapper_14/batchnorm_3/AssignNewValue_12~
=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_14/batchnorm_3/ReadVariableOp,module_wrapper_14/batchnorm_3/ReadVariableOp2`
.module_wrapper_14/batchnorm_3/ReadVariableOp_1.module_wrapper_14/batchnorm_3/ReadVariableOp_12\
,module_wrapper_15/batchnorm_4/AssignNewValue,module_wrapper_15/batchnorm_4/AssignNewValue2`
.module_wrapper_15/batchnorm_4/AssignNewValue_1.module_wrapper_15/batchnorm_4/AssignNewValue_12~
=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_15/batchnorm_4/ReadVariableOp,module_wrapper_15/batchnorm_4/ReadVariableOp2`
.module_wrapper_15/batchnorm_4/ReadVariableOp_1.module_wrapper_15/batchnorm_4/ReadVariableOp_12\
,module_wrapper_17/batchnorm_5/AssignNewValue,module_wrapper_17/batchnorm_5/AssignNewValue2`
.module_wrapper_17/batchnorm_5/AssignNewValue_1.module_wrapper_17/batchnorm_5/AssignNewValue_12~
=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_17/batchnorm_5/ReadVariableOp,module_wrapper_17/batchnorm_5/ReadVariableOp2`
.module_wrapper_17/batchnorm_5/ReadVariableOp_1.module_wrapper_17/batchnorm_5/ReadVariableOp_12\
,module_wrapper_18/batchnorm_6/AssignNewValue,module_wrapper_18/batchnorm_6/AssignNewValue2`
.module_wrapper_18/batchnorm_6/AssignNewValue_1.module_wrapper_18/batchnorm_6/AssignNewValue_12~
=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_18/batchnorm_6/ReadVariableOp,module_wrapper_18/batchnorm_6/ReadVariableOp2`
.module_wrapper_18/batchnorm_6/ReadVariableOp_1.module_wrapper_18/batchnorm_6/ReadVariableOp_12^
-module_wrapper_20/batchnorm_7/AssignMovingAvg-module_wrapper_20/batchnorm_7/AssignMovingAvg2|
<module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp<module_wrapper_20/batchnorm_7/AssignMovingAvg/ReadVariableOp2b
/module_wrapper_20/batchnorm_7/AssignMovingAvg_1/module_wrapper_20/batchnorm_7/AssignMovingAvg_12?
>module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp>module_wrapper_20/batchnorm_7/AssignMovingAvg_1/ReadVariableOp2p
6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp2x
:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_74255

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_70775

args_02
#batchnorm_4_readvariableop_resource:	?4
%batchnorm_4_readvariableop_1_resource:	?C
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_4/FusedBatchNormV3/ReadVariableOp?-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?batchnorm_4/ReadVariableOp?batchnorm_4/ReadVariableOp_1?
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp?
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp_1?
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp?
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_4/FusedBatchNormV3?
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
C__inference_conv2d_9_layer_call_and_return_conditional_losses_74064

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_70791

args_0
identityw
dropout_5/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_5/Identityx
IdentityIdentitydropout_5/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_72488

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_70849

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_72444

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?

,__inference_sequential_1_layer_call_fn_73687

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:
?H?

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:	?

unknown_42:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_709712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_71092

args_0
identity?w
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/dropout/Const?
dropout_7/dropout/MulMulargs_0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mulh
dropout_7/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform?
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_7/dropout/GreaterEqual/y?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_7/dropout/GreaterEqual?
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/dropout/Cast?
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/dropout/Mul_1p
IdentityIdentitydropout_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_74547

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
C__inference_conv2d_8_layer_call_and_return_conditional_losses_73982

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_7_layer_call_fn_74950

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_730762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_73918

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identity??batchnorm_2/AssignNewValue?batchnorm_2/AssignNewValue_1?+batchnorm_2/FusedBatchNormV3/ReadVariableOp?-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?batchnorm_2/ReadVariableOp?batchnorm_2/ReadVariableOp_1?
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp?
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1?
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp?
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_2/FusedBatchNormV3?
batchnorm_2/AssignNewValueAssignVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource)batchnorm_2/FusedBatchNormV3:batch_mean:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValue?
batchnorm_2/AssignNewValue_1AssignVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource-batchnorm_2/FusedBatchNormV3:batch_variance:0.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValue_1?
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0^batchnorm_2/AssignNewValue^batchnorm_2/AssignNewValue_1,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 28
batchnorm_2/AssignNewValuebatchnorm_2/AssignNewValue2<
batchnorm_2/AssignNewValue_1batchnorm_2/AssignNewValue_12Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?w
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72080
conv2d_6_input(
conv2d_6_71968:@
conv2d_6_71970:@%
module_wrapper_11_71973:@%
module_wrapper_11_71975:@%
module_wrapper_11_71977:@%
module_wrapper_11_71979:@(
conv2d_7_71982:@@
conv2d_7_71984:@%
module_wrapper_12_71987:@%
module_wrapper_12_71989:@%
module_wrapper_12_71991:@%
module_wrapper_12_71993:@)
conv2d_8_71998:@?
conv2d_8_72000:	?&
module_wrapper_14_72003:	?&
module_wrapper_14_72005:	?&
module_wrapper_14_72007:	?&
module_wrapper_14_72009:	?*
conv2d_9_72012:??
conv2d_9_72014:	?&
module_wrapper_15_72017:	?&
module_wrapper_15_72019:	?&
module_wrapper_15_72021:	?&
module_wrapper_15_72023:	?+
conv2d_10_72028:??
conv2d_10_72030:	?&
module_wrapper_17_72033:	?&
module_wrapper_17_72035:	?&
module_wrapper_17_72037:	?&
module_wrapper_17_72039:	?+
conv2d_11_72042:??
conv2d_11_72044:	?&
module_wrapper_18_72047:	?&
module_wrapper_18_72049:	?&
module_wrapper_18_72051:	?&
module_wrapper_18_72053:	?!
dense_2_72059:
?H?
dense_2_72061:	?&
module_wrapper_20_72064:	?&
module_wrapper_20_72066:	?&
module_wrapper_20_72068:	?&
module_wrapper_20_72070:	? 
dense_3_72074:	?
dense_3_72076:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?)module_wrapper_14/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?)module_wrapper_18/StatefulPartitionedCall?)module_wrapper_20/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputconv2d_6_71968conv2d_6_71970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_706082"
 conv2d_6/StatefulPartitionedCall?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0module_wrapper_11_71973module_wrapper_11_71975module_wrapper_11_71977module_wrapper_11_71979*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_706322+
)module_wrapper_11/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0conv2d_7_71982conv2d_7_71984*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_706532"
 conv2d_7/StatefulPartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0module_wrapper_12_71987module_wrapper_12_71989module_wrapper_12_71991module_wrapper_12_71993*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_706772+
)module_wrapper_12/StatefulPartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall2module_wrapper_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_705602!
max_pooling2d_3/PartitionedCall?
!module_wrapper_13/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_706932#
!module_wrapper_13/PartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_13/PartitionedCall:output:0conv2d_8_71998conv2d_8_72000*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_707062"
 conv2d_8/StatefulPartitionedCall?
)module_wrapper_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0module_wrapper_14_72003module_wrapper_14_72005module_wrapper_14_72007module_wrapper_14_72009*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_707302+
)module_wrapper_14/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_14/StatefulPartitionedCall:output:0conv2d_9_72012conv2d_9_72014*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_707512"
 conv2d_9/StatefulPartitionedCall?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0module_wrapper_15_72017module_wrapper_15_72019module_wrapper_15_72021module_wrapper_15_72023*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_707752+
)module_wrapper_15/StatefulPartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_705722!
max_pooling2d_4/PartitionedCall?
!module_wrapper_16/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_707912#
!module_wrapper_16/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_16/PartitionedCall:output:0conv2d_10_72028conv2d_10_72030*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_708042#
!conv2d_10/StatefulPartitionedCall?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0module_wrapper_17_72033module_wrapper_17_72035module_wrapper_17_72037module_wrapper_17_72039*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_708282+
)module_wrapper_17/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_17/StatefulPartitionedCall:output:0conv2d_11_72042conv2d_11_72044*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_708492#
!conv2d_11/StatefulPartitionedCall?
)module_wrapper_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0module_wrapper_18_72047module_wrapper_18_72049module_wrapper_18_72051module_wrapper_18_72053*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_708732+
)module_wrapper_18/StatefulPartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall2module_wrapper_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_705842!
max_pooling2d_5/PartitionedCall?
!module_wrapper_19/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_708892#
!module_wrapper_19/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall*module_wrapper_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_708972
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_72059dense_2_72061*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_709102!
dense_2/StatefulPartitionedCall?
)module_wrapper_20/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0module_wrapper_20_72064module_wrapper_20_72066module_wrapper_20_72068module_wrapper_20_72070*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_709362+
)module_wrapper_20/StatefulPartitionedCall?
!module_wrapper_21/PartitionedCallPartitionedCall2module_wrapper_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_709512#
!module_wrapper_21/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_21/PartitionedCall:output:0dense_3_72074dense_3_72076*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_709642!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall*^module_wrapper_14/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall*^module_wrapper_18/StatefulPartitionedCall*^module_wrapper_20/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2V
)module_wrapper_14/StatefulPartitionedCall)module_wrapper_14/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2V
)module_wrapper_18/StatefulPartitionedCall)module_wrapper_18/StatefulPartitionedCall2V
)module_wrapper_20/StatefulPartitionedCall)module_wrapper_20/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????00
(
_user_specified_nameconv2d_6_input
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_74282

args_02
#batchnorm_6_readvariableop_resource:	?4
%batchnorm_6_readvariableop_1_resource:	?C
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_6/FusedBatchNormV3/ReadVariableOp?-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?batchnorm_6/ReadVariableOp?batchnorm_6/ReadVariableOp_1?
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp?
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp_1?
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp?
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_6/FusedBatchNormV3?
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_74331

args_0
identityw
dropout_6/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_6/Identityx
IdentityIdentitydropout_6/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
'__inference_dense_3_layer_call_fn_74511

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_709642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_74404

args_0<
-batchnorm_7_batchnorm_readvariableop_resource:	?@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	?>
/batchnorm_7_batchnorm_readvariableop_1_resource:	?>
/batchnorm_7_batchnorm_readvariableop_2_resource:	?
identity??$batchnorm_7/batchnorm/ReadVariableOp?&batchnorm_7/batchnorm/ReadVariableOp_1?&batchnorm_7/batchnorm/ReadVariableOp_2?(batchnorm_7/batchnorm/mul/ReadVariableOp?
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm_7/batchnorm/add/y?
batchnorm_7/batchnorm/addAddV2,batchnorm_7/batchnorm/ReadVariableOp:value:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/add?
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/Rsqrt?
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp?
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul?
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/mul_1?
&batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_1?
batchnorm_7/batchnorm/mul_2Mul.batchnorm_7/batchnorm/ReadVariableOp_1:value:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul_2?
&batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_2?
batchnorm_7/batchnorm/subSub.batchnorm_7/batchnorm/ReadVariableOp_2:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/sub?
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/add_1?
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0%^batchnorm_7/batchnorm/ReadVariableOp'^batchnorm_7/batchnorm/ReadVariableOp_1'^batchnorm_7/batchnorm/ReadVariableOp_2)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2P
&batchnorm_7/batchnorm/ReadVariableOp_1&batchnorm_7/batchnorm/ReadVariableOp_12P
&batchnorm_7/batchnorm/ReadVariableOp_2&batchnorm_7/batchnorm/ReadVariableOp_22T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
+__inference_batchnorm_4_layer_call_fn_74746

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_726962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_7_layer_call_and_return_conditional_losses_70653

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_74795

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_70936

args_0<
-batchnorm_7_batchnorm_readvariableop_resource:	?@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	?>
/batchnorm_7_batchnorm_readvariableop_1_resource:	?>
/batchnorm_7_batchnorm_readvariableop_2_resource:	?
identity??$batchnorm_7/batchnorm/ReadVariableOp?&batchnorm_7/batchnorm/ReadVariableOp_1?&batchnorm_7/batchnorm/ReadVariableOp_2?(batchnorm_7/batchnorm/mul/ReadVariableOp?
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm_7/batchnorm/add/y?
batchnorm_7/batchnorm/addAddV2,batchnorm_7/batchnorm/ReadVariableOp:value:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/add?
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/Rsqrt?
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp?
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul?
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/mul_1?
&batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_1?
batchnorm_7/batchnorm/mul_2Mul.batchnorm_7/batchnorm/ReadVariableOp_1:value:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul_2?
&batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02(
&batchnorm_7/batchnorm/ReadVariableOp_2?
batchnorm_7/batchnorm/subSub.batchnorm_7/batchnorm/ReadVariableOp_2:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/sub?
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/add_1?
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0%^batchnorm_7/batchnorm/ReadVariableOp'^batchnorm_7/batchnorm/ReadVariableOp_1'^batchnorm_7/batchnorm/ReadVariableOp_2)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2P
&batchnorm_7/batchnorm/ReadVariableOp_1&batchnorm_7/batchnorm/ReadVariableOp_12P
&batchnorm_7/batchnorm/ReadVariableOp_2&batchnorm_7/batchnorm/ReadVariableOp_22T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
(__inference_conv2d_7_layer_call_fn_73882

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_706532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_10_layer_call_fn_74182

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_708042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_74343

args_0
identity?w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMulargs_0 dropout_6/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_6/dropout/Mulh
dropout_6/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_6/dropout/Mul_1x
IdentityIdentitydropout_6/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_11_layer_call_fn_73862

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_715502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_70910

inputs2
matmul_readvariableop_resource:
?H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddV
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????H
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_74140

args_0
identityw
dropout_5/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_5/Identityx
IdentityIdentitydropout_5/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
D__inference_conv2d_10_layer_call_and_return_conditional_losses_74173

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_72614

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?

,__inference_sequential_1_layer_call_fn_71062
conv2d_6_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:
?H?

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:	?

unknown_42:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_709712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????00
(
_user_specified_nameconv2d_6_input
?
?
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_72866

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_9_layer_call_fn_74073

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_707512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_module_wrapper_19_layer_call_fn_74348

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_708892
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_74609

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_74715

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_7_layer_call_fn_74963

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_731362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?w
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_70971

inputs(
conv2d_6_70609:@
conv2d_6_70611:@%
module_wrapper_11_70633:@%
module_wrapper_11_70635:@%
module_wrapper_11_70637:@%
module_wrapper_11_70639:@(
conv2d_7_70654:@@
conv2d_7_70656:@%
module_wrapper_12_70678:@%
module_wrapper_12_70680:@%
module_wrapper_12_70682:@%
module_wrapper_12_70684:@)
conv2d_8_70707:@?
conv2d_8_70709:	?&
module_wrapper_14_70731:	?&
module_wrapper_14_70733:	?&
module_wrapper_14_70735:	?&
module_wrapper_14_70737:	?*
conv2d_9_70752:??
conv2d_9_70754:	?&
module_wrapper_15_70776:	?&
module_wrapper_15_70778:	?&
module_wrapper_15_70780:	?&
module_wrapper_15_70782:	?+
conv2d_10_70805:??
conv2d_10_70807:	?&
module_wrapper_17_70829:	?&
module_wrapper_17_70831:	?&
module_wrapper_17_70833:	?&
module_wrapper_17_70835:	?+
conv2d_11_70850:??
conv2d_11_70852:	?&
module_wrapper_18_70874:	?&
module_wrapper_18_70876:	?&
module_wrapper_18_70878:	?&
module_wrapper_18_70880:	?!
dense_2_70911:
?H?
dense_2_70913:	?&
module_wrapper_20_70937:	?&
module_wrapper_20_70939:	?&
module_wrapper_20_70941:	?&
module_wrapper_20_70943:	? 
dense_3_70965:	?
dense_3_70967:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?)module_wrapper_14/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?)module_wrapper_18/StatefulPartitionedCall?)module_wrapper_20/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6_70609conv2d_6_70611*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_706082"
 conv2d_6/StatefulPartitionedCall?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0module_wrapper_11_70633module_wrapper_11_70635module_wrapper_11_70637module_wrapper_11_70639*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_706322+
)module_wrapper_11/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0conv2d_7_70654conv2d_7_70656*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_706532"
 conv2d_7/StatefulPartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0module_wrapper_12_70678module_wrapper_12_70680module_wrapper_12_70682module_wrapper_12_70684*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_706772+
)module_wrapper_12/StatefulPartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall2module_wrapper_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_705602!
max_pooling2d_3/PartitionedCall?
!module_wrapper_13/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_706932#
!module_wrapper_13/PartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_13/PartitionedCall:output:0conv2d_8_70707conv2d_8_70709*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_707062"
 conv2d_8/StatefulPartitionedCall?
)module_wrapper_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0module_wrapper_14_70731module_wrapper_14_70733module_wrapper_14_70735module_wrapper_14_70737*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_707302+
)module_wrapper_14/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_14/StatefulPartitionedCall:output:0conv2d_9_70752conv2d_9_70754*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_707512"
 conv2d_9/StatefulPartitionedCall?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0module_wrapper_15_70776module_wrapper_15_70778module_wrapper_15_70780module_wrapper_15_70782*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_707752+
)module_wrapper_15/StatefulPartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_705722!
max_pooling2d_4/PartitionedCall?
!module_wrapper_16/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_707912#
!module_wrapper_16/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_16/PartitionedCall:output:0conv2d_10_70805conv2d_10_70807*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_708042#
!conv2d_10/StatefulPartitionedCall?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0module_wrapper_17_70829module_wrapper_17_70831module_wrapper_17_70833module_wrapper_17_70835*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_708282+
)module_wrapper_17/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_17/StatefulPartitionedCall:output:0conv2d_11_70850conv2d_11_70852*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_708492#
!conv2d_11/StatefulPartitionedCall?
)module_wrapper_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0module_wrapper_18_70874module_wrapper_18_70876module_wrapper_18_70878module_wrapper_18_70880*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_708732+
)module_wrapper_18/StatefulPartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall2module_wrapper_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_705842!
max_pooling2d_5/PartitionedCall?
!module_wrapper_19/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_708892#
!module_wrapper_19/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall*module_wrapper_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_708972
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_70911dense_2_70913*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_709102!
dense_2/StatefulPartitionedCall?
)module_wrapper_20/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0module_wrapper_20_70937module_wrapper_20_70939module_wrapper_20_70941module_wrapper_20_70943*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_709362+
)module_wrapper_20/StatefulPartitionedCall?
!module_wrapper_21/PartitionedCallPartitionedCall2module_wrapper_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_709512#
!module_wrapper_21/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*module_wrapper_21/PartitionedCall:output:0dense_3_70965dense_3_70967*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_709642!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall*^module_wrapper_14/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall*^module_wrapper_18/StatefulPartitionedCall*^module_wrapper_20/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2V
)module_wrapper_14/StatefulPartitionedCall)module_wrapper_14/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2V
)module_wrapper_18/StatefulPartitionedCall)module_wrapper_18/StatefulPartitionedCall2V
)module_wrapper_20/StatefulPartitionedCall)module_wrapper_20/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_6_layer_call_fn_74870

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_729482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_71229

args_02
#batchnorm_6_readvariableop_resource:	?4
%batchnorm_6_readvariableop_1_resource:	?C
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_6/AssignNewValue?batchnorm_6/AssignNewValue_1?+batchnorm_6/FusedBatchNormV3/ReadVariableOp?-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?batchnorm_6/ReadVariableOp?batchnorm_6/ReadVariableOp_1?
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp?
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp_1?
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp?
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_6/FusedBatchNormV3?
batchnorm_6/AssignNewValueAssignVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource)batchnorm_6/FusedBatchNormV3:batch_mean:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValue?
batchnorm_6/AssignNewValue_1AssignVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource-batchnorm_6/FusedBatchNormV3:batch_variance:0.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValue_1?
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0^batchnorm_6/AssignNewValue^batchnorm_6/AssignNewValue_1,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_6/AssignNewValuebatchnorm_6/AssignNewValue2<
batchnorm_6/AssignNewValue_1batchnorm_6/AssignNewValue_12Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_70889

args_0
identityw
dropout_6/IdentityIdentityargs_0*
T0*0
_output_shapes
:??????????2
dropout_6/Identityx
IdentityIdentitydropout_6/Identity:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_14_layer_call_fn_74053

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_714172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_72696

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_71362

args_02
#batchnorm_4_readvariableop_resource:	?4
%batchnorm_4_readvariableop_1_resource:	?C
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_4/AssignNewValue?batchnorm_4/AssignNewValue_1?+batchnorm_4/FusedBatchNormV3/ReadVariableOp?-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?batchnorm_4/ReadVariableOp?batchnorm_4/ReadVariableOp_1?
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp?
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp_1?
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp?
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_4/FusedBatchNormV3?
batchnorm_4/AssignNewValueAssignVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource)batchnorm_4/FusedBatchNormV3:batch_mean:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValue?
batchnorm_4/AssignNewValue_1AssignVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource-batchnorm_4/FusedBatchNormV3:batch_variance:0.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_4/AssignNewValue_1?
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0^batchnorm_4/AssignNewValue^batchnorm_4/AssignNewValue_1,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_4/AssignNewValuebatchnorm_4/AssignNewValue2<
batchnorm_4/AssignNewValue_1batchnorm_4/AssignNewValue_12Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
ҵ
?3
 __inference__wrapped_model_70554
conv2d_6_inputN
4sequential_1_conv2d_6_conv2d_readvariableop_resource:@C
5sequential_1_conv2d_6_biasadd_readvariableop_resource:@P
Bsequential_1_module_wrapper_11_batchnorm_1_readvariableop_resource:@R
Dsequential_1_module_wrapper_11_batchnorm_1_readvariableop_1_resource:@a
Ssequential_1_module_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource:@c
Usequential_1_module_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@N
4sequential_1_conv2d_7_conv2d_readvariableop_resource:@@C
5sequential_1_conv2d_7_biasadd_readvariableop_resource:@P
Bsequential_1_module_wrapper_12_batchnorm_2_readvariableop_resource:@R
Dsequential_1_module_wrapper_12_batchnorm_2_readvariableop_1_resource:@a
Ssequential_1_module_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@c
Usequential_1_module_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@O
4sequential_1_conv2d_8_conv2d_readvariableop_resource:@?D
5sequential_1_conv2d_8_biasadd_readvariableop_resource:	?Q
Bsequential_1_module_wrapper_14_batchnorm_3_readvariableop_resource:	?S
Dsequential_1_module_wrapper_14_batchnorm_3_readvariableop_1_resource:	?b
Ssequential_1_module_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?d
Usequential_1_module_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?P
4sequential_1_conv2d_9_conv2d_readvariableop_resource:??D
5sequential_1_conv2d_9_biasadd_readvariableop_resource:	?Q
Bsequential_1_module_wrapper_15_batchnorm_4_readvariableop_resource:	?S
Dsequential_1_module_wrapper_15_batchnorm_4_readvariableop_1_resource:	?b
Ssequential_1_module_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?d
Usequential_1_module_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?Q
5sequential_1_conv2d_10_conv2d_readvariableop_resource:??E
6sequential_1_conv2d_10_biasadd_readvariableop_resource:	?Q
Bsequential_1_module_wrapper_17_batchnorm_5_readvariableop_resource:	?S
Dsequential_1_module_wrapper_17_batchnorm_5_readvariableop_1_resource:	?b
Ssequential_1_module_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?d
Usequential_1_module_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?Q
5sequential_1_conv2d_11_conv2d_readvariableop_resource:??E
6sequential_1_conv2d_11_biasadd_readvariableop_resource:	?Q
Bsequential_1_module_wrapper_18_batchnorm_6_readvariableop_resource:	?S
Dsequential_1_module_wrapper_18_batchnorm_6_readvariableop_1_resource:	?b
Ssequential_1_module_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?d
Usequential_1_module_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?G
3sequential_1_dense_2_matmul_readvariableop_resource:
?H?C
4sequential_1_dense_2_biasadd_readvariableop_resource:	?[
Lsequential_1_module_wrapper_20_batchnorm_7_batchnorm_readvariableop_resource:	?_
Psequential_1_module_wrapper_20_batchnorm_7_batchnorm_mul_readvariableop_resource:	?]
Nsequential_1_module_wrapper_20_batchnorm_7_batchnorm_readvariableop_1_resource:	?]
Nsequential_1_module_wrapper_20_batchnorm_7_batchnorm_readvariableop_2_resource:	?F
3sequential_1_dense_3_matmul_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identity??-sequential_1/conv2d_10/BiasAdd/ReadVariableOp?,sequential_1/conv2d_10/Conv2D/ReadVariableOp?-sequential_1/conv2d_11/BiasAdd/ReadVariableOp?,sequential_1/conv2d_11/Conv2D/ReadVariableOp?,sequential_1/conv2d_6/BiasAdd/ReadVariableOp?+sequential_1/conv2d_6/Conv2D/ReadVariableOp?,sequential_1/conv2d_7/BiasAdd/ReadVariableOp?+sequential_1/conv2d_7/Conv2D/ReadVariableOp?,sequential_1/conv2d_8/BiasAdd/ReadVariableOp?+sequential_1/conv2d_8/Conv2D/ReadVariableOp?,sequential_1/conv2d_9/BiasAdd/ReadVariableOp?+sequential_1/conv2d_9/Conv2D/ReadVariableOp?+sequential_1/dense_2/BiasAdd/ReadVariableOp?*sequential_1/dense_2/MatMul/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?*sequential_1/dense_3/MatMul/ReadVariableOp?Jsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp?Lsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?9sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp?;sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_1?Jsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp?Lsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?9sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp?;sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_1?Jsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp?Lsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?9sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp?;sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_1?Jsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp?Lsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?9sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp?;sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_1?Jsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp?Lsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?9sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp?;sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_1?Jsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp?Lsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?9sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp?;sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_1?Csequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp?Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1?Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2?Gsequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp?
+sequential_1/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02-
+sequential_1/conv2d_6/Conv2D/ReadVariableOp?
sequential_1/conv2d_6/Conv2DConv2Dconv2d_6_input3sequential_1/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
sequential_1/conv2d_6/Conv2D?
,sequential_1/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_6/BiasAdd/ReadVariableOp?
sequential_1/conv2d_6/BiasAddBiasAdd%sequential_1/conv2d_6/Conv2D:output:04sequential_1/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
sequential_1/conv2d_6/BiasAdd?
sequential_1/conv2d_6/EluElu&sequential_1/conv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
sequential_1/conv2d_6/Elu?
9sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOpReadVariableOpBsequential_1_module_wrapper_11_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp?
;sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_1ReadVariableOpDsequential_1_module_wrapper_11_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_1?
Jsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOpSsequential_1_module_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp?
Lsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUsequential_1_module_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02N
Lsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
;sequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3FusedBatchNormV3'sequential_1/conv2d_6/Elu:activations:0Asequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp:value:0Csequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_1:value:0Rsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0Tsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2=
;sequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3?
+sequential_1/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02-
+sequential_1/conv2d_7/Conv2D/ReadVariableOp?
sequential_1/conv2d_7/Conv2DConv2D?sequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3:y:03sequential_1/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
sequential_1/conv2d_7/Conv2D?
,sequential_1/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_7/BiasAdd/ReadVariableOp?
sequential_1/conv2d_7/BiasAddBiasAdd%sequential_1/conv2d_7/Conv2D:output:04sequential_1/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
sequential_1/conv2d_7/BiasAdd?
sequential_1/conv2d_7/EluElu&sequential_1/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
sequential_1/conv2d_7/Elu?
9sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOpReadVariableOpBsequential_1_module_wrapper_12_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp?
;sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_1ReadVariableOpDsequential_1_module_wrapper_12_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_1?
Jsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOpSsequential_1_module_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp?
Lsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUsequential_1_module_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02N
Lsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
;sequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3FusedBatchNormV3'sequential_1/conv2d_7/Elu:activations:0Asequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp:value:0Csequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_1:value:0Rsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0Tsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2=
;sequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3?
$sequential_1/max_pooling2d_3/MaxPoolMaxPool?sequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_3/MaxPool?
1sequential_1/module_wrapper_13/dropout_4/IdentityIdentity-sequential_1/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:?????????@23
1sequential_1/module_wrapper_13/dropout_4/Identity?
+sequential_1/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+sequential_1/conv2d_8/Conv2D/ReadVariableOp?
sequential_1/conv2d_8/Conv2DConv2D:sequential_1/module_wrapper_13/dropout_4/Identity:output:03sequential_1/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_1/conv2d_8/Conv2D?
,sequential_1/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_1/conv2d_8/BiasAdd/ReadVariableOp?
sequential_1/conv2d_8/BiasAddBiasAdd%sequential_1/conv2d_8/Conv2D:output:04sequential_1/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential_1/conv2d_8/BiasAdd?
sequential_1/conv2d_8/EluElu&sequential_1/conv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_1/conv2d_8/Elu?
9sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOpReadVariableOpBsequential_1_module_wrapper_14_batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp?
;sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_1ReadVariableOpDsequential_1_module_wrapper_14_batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_1?
Jsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOpSsequential_1_module_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp?
Lsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUsequential_1_module_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02N
Lsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
;sequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3FusedBatchNormV3'sequential_1/conv2d_8/Elu:activations:0Asequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp:value:0Csequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_1:value:0Rsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0Tsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2=
;sequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3?
+sequential_1/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+sequential_1/conv2d_9/Conv2D/ReadVariableOp?
sequential_1/conv2d_9/Conv2DConv2D?sequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3:y:03sequential_1/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_1/conv2d_9/Conv2D?
,sequential_1/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_1/conv2d_9/BiasAdd/ReadVariableOp?
sequential_1/conv2d_9/BiasAddBiasAdd%sequential_1/conv2d_9/Conv2D:output:04sequential_1/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential_1/conv2d_9/BiasAdd?
sequential_1/conv2d_9/EluElu&sequential_1/conv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_1/conv2d_9/Elu?
9sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOpReadVariableOpBsequential_1_module_wrapper_15_batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp?
;sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_1ReadVariableOpDsequential_1_module_wrapper_15_batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_1?
Jsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOpSsequential_1_module_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp?
Lsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUsequential_1_module_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02N
Lsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
;sequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3FusedBatchNormV3'sequential_1/conv2d_9/Elu:activations:0Asequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp:value:0Csequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_1:value:0Rsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0Tsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2=
;sequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3?
$sequential_1/max_pooling2d_4/MaxPoolMaxPool?sequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_4/MaxPool?
1sequential_1/module_wrapper_16/dropout_5/IdentityIdentity-sequential_1/max_pooling2d_4/MaxPool:output:0*
T0*0
_output_shapes
:??????????23
1sequential_1/module_wrapper_16/dropout_5/Identity?
,sequential_1/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_10_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_1/conv2d_10/Conv2D/ReadVariableOp?
sequential_1/conv2d_10/Conv2DConv2D:sequential_1/module_wrapper_16/dropout_5/Identity:output:04sequential_1/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_1/conv2d_10/Conv2D?
-sequential_1/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_1/conv2d_10/BiasAdd/ReadVariableOp?
sequential_1/conv2d_10/BiasAddBiasAdd&sequential_1/conv2d_10/Conv2D:output:05sequential_1/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_1/conv2d_10/BiasAdd?
sequential_1/conv2d_10/EluElu'sequential_1/conv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_1/conv2d_10/Elu?
9sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOpReadVariableOpBsequential_1_module_wrapper_17_batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp?
;sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_1ReadVariableOpDsequential_1_module_wrapper_17_batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_1?
Jsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOpSsequential_1_module_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp?
Lsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUsequential_1_module_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02N
Lsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
;sequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3FusedBatchNormV3(sequential_1/conv2d_10/Elu:activations:0Asequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp:value:0Csequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_1:value:0Rsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0Tsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2=
;sequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3?
,sequential_1/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_1_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_1/conv2d_11/Conv2D/ReadVariableOp?
sequential_1/conv2d_11/Conv2DConv2D?sequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3:y:04sequential_1/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_1/conv2d_11/Conv2D?
-sequential_1/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_1/conv2d_11/BiasAdd/ReadVariableOp?
sequential_1/conv2d_11/BiasAddBiasAdd&sequential_1/conv2d_11/Conv2D:output:05sequential_1/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_1/conv2d_11/BiasAdd?
sequential_1/conv2d_11/EluElu'sequential_1/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_1/conv2d_11/Elu?
9sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOpReadVariableOpBsequential_1_module_wrapper_18_batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp?
;sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_1ReadVariableOpDsequential_1_module_wrapper_18_batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_1?
Jsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOpSsequential_1_module_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp?
Lsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUsequential_1_module_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02N
Lsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
;sequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3FusedBatchNormV3(sequential_1/conv2d_11/Elu:activations:0Asequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp:value:0Csequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_1:value:0Rsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0Tsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2=
;sequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3?
$sequential_1/max_pooling2d_5/MaxPoolMaxPool?sequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_5/MaxPool?
1sequential_1/module_wrapper_19/dropout_6/IdentityIdentity-sequential_1/max_pooling2d_5/MaxPool:output:0*
T0*0
_output_shapes
:??????????23
1sequential_1/module_wrapper_19/dropout_6/Identity?
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
sequential_1/flatten_1/Const?
sequential_1/flatten_1/ReshapeReshape:sequential_1/module_wrapper_19/dropout_6/Identity:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????H2 
sequential_1/flatten_1/Reshape?
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02,
*sequential_1/dense_2/MatMul/ReadVariableOp?
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_2/MatMul?
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOp?
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_2/BiasAdd?
sequential_1/dense_2/EluElu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_1/dense_2/Elu?
Csequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOpReadVariableOpLsequential_1_module_wrapper_20_batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Csequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp?
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2<
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add/y?
8sequential_1/module_wrapper_20/batchnorm_7/batchnorm/addAddV2Ksequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp:value:0Csequential_1/module_wrapper_20/batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2:
8sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add?
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/RsqrtRsqrt<sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2<
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/Rsqrt?
Gsequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOpPsequential_1_module_wrapper_20_batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02I
Gsequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp?
8sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mulMul>sequential_1/module_wrapper_20/batchnorm_7/batchnorm/Rsqrt:y:0Osequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2:
8sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul?
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul_1Mul&sequential_1/dense_2/Elu:activations:0<sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2<
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul_1?
Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOpNsequential_1_module_wrapper_20_batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1?
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul_2MulMsequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1:value:0<sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2<
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul_2?
Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOpNsequential_1_module_wrapper_20_batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02G
Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2?
8sequential_1/module_wrapper_20/batchnorm_7/batchnorm/subSubMsequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2:value:0>sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2:
8sequential_1/module_wrapper_20/batchnorm_7/batchnorm/sub?
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add_1AddV2>sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul_1:z:0<sequential_1/module_wrapper_20/batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2<
:sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add_1?
1sequential_1/module_wrapper_21/dropout_7/IdentityIdentity>sequential_1/module_wrapper_20/batchnorm_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????23
1sequential_1/module_wrapper_21/dropout_7/Identity?
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*sequential_1/dense_3/MatMul/ReadVariableOp?
sequential_1/dense_3/MatMulMatMul:sequential_1/module_wrapper_21/dropout_7/Identity:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_1/dense_3/MatMul?
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOp?
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_1/dense_3/BiasAdd?
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_1/dense_3/Softmax?
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0.^sequential_1/conv2d_10/BiasAdd/ReadVariableOp-^sequential_1/conv2d_10/Conv2D/ReadVariableOp.^sequential_1/conv2d_11/BiasAdd/ReadVariableOp-^sequential_1/conv2d_11/Conv2D/ReadVariableOp-^sequential_1/conv2d_6/BiasAdd/ReadVariableOp,^sequential_1/conv2d_6/Conv2D/ReadVariableOp-^sequential_1/conv2d_7/BiasAdd/ReadVariableOp,^sequential_1/conv2d_7/Conv2D/ReadVariableOp-^sequential_1/conv2d_8/BiasAdd/ReadVariableOp,^sequential_1/conv2d_8/Conv2D/ReadVariableOp-^sequential_1/conv2d_9/BiasAdd/ReadVariableOp,^sequential_1/conv2d_9/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOpK^sequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOpM^sequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:^sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp<^sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_1K^sequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOpM^sequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:^sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp<^sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_1K^sequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOpM^sequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:^sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp<^sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_1K^sequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOpM^sequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:^sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp<^sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_1K^sequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOpM^sequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:^sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp<^sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_1K^sequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOpM^sequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:^sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp<^sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_1D^sequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOpF^sequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1F^sequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2H^sequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-sequential_1/conv2d_10/BiasAdd/ReadVariableOp-sequential_1/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_10/Conv2D/ReadVariableOp,sequential_1/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_1/conv2d_11/BiasAdd/ReadVariableOp-sequential_1/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_1/conv2d_11/Conv2D/ReadVariableOp,sequential_1/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_6/BiasAdd/ReadVariableOp,sequential_1/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_6/Conv2D/ReadVariableOp+sequential_1/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_7/BiasAdd/ReadVariableOp,sequential_1/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_7/Conv2D/ReadVariableOp+sequential_1/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_8/BiasAdd/ReadVariableOp,sequential_1/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_8/Conv2D/ReadVariableOp+sequential_1/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_9/BiasAdd/ReadVariableOp,sequential_1/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_9/Conv2D/ReadVariableOp+sequential_1/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2?
Jsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOpJsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp2?
Lsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1Lsequential_1/module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12v
9sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp9sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp2z
;sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_1;sequential_1/module_wrapper_11/batchnorm_1/ReadVariableOp_12?
Jsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOpJsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp2?
Lsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1Lsequential_1/module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12v
9sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp9sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp2z
;sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_1;sequential_1/module_wrapper_12/batchnorm_2/ReadVariableOp_12?
Jsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOpJsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp2?
Lsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1Lsequential_1/module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12v
9sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp9sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp2z
;sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_1;sequential_1/module_wrapper_14/batchnorm_3/ReadVariableOp_12?
Jsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOpJsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp2?
Lsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1Lsequential_1/module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12v
9sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp9sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp2z
;sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_1;sequential_1/module_wrapper_15/batchnorm_4/ReadVariableOp_12?
Jsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOpJsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp2?
Lsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1Lsequential_1/module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12v
9sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp9sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp2z
;sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_1;sequential_1/module_wrapper_17/batchnorm_5/ReadVariableOp_12?
Jsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOpJsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp2?
Lsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1Lsequential_1/module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12v
9sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp9sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp2z
;sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_1;sequential_1/module_wrapper_18/batchnorm_6/ReadVariableOp_12?
Csequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOpCsequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp2?
Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_12?
Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2Esequential_1/module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_22?
Gsequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOpGsequential_1/module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:_ [
/
_output_shapes
:?????????00
(
_user_specified_nameconv2d_6_input
?
h
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_70693

args_0
identityv
dropout_4/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout_4/Identityw
IdentityIdentitydropout_4/Identity:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_74529

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_12_layer_call_fn_73931

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_706772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_73836

args_01
#batchnorm_1_readvariableop_resource:@3
%batchnorm_1_readvariableop_1_resource:@B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@
identity??batchnorm_1/AssignNewValue?batchnorm_1/AssignNewValue_1?+batchnorm_1/FusedBatchNormV3/ReadVariableOp?-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?batchnorm_1/ReadVariableOp?batchnorm_1/ReadVariableOp_1?
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp?
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_1/ReadVariableOp_1?
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_1/FusedBatchNormV3/ReadVariableOp?
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_1/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_1/FusedBatchNormV3?
batchnorm_1/AssignNewValueAssignVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource)batchnorm_1/FusedBatchNormV3:batch_mean:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValue?
batchnorm_1/AssignNewValue_1AssignVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource-batchnorm_1/FusedBatchNormV3:batch_variance:0.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_1/AssignNewValue_1?
IdentityIdentity batchnorm_1/FusedBatchNormV3:y:0^batchnorm_1/AssignNewValue^batchnorm_1/AssignNewValue_1,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 28
batchnorm_1/AssignNewValuebatchnorm_1/AssignNewValue2<
batchnorm_1/AssignNewValue_1batchnorm_1/AssignNewValue_12Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?

?
B__inference_dense_3_layer_call_and_return_conditional_losses_74502

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
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
?
j
1__inference_module_wrapper_16_layer_call_fn_74162

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_713252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?

#__inference_signature_wrapper_72296
conv2d_6_input!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:
?H?

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:	?

unknown_42:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_705542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????00
(
_user_specified_nameconv2d_6_input
?
K
/__inference_max_pooling2d_4_layer_call_fn_70578

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_705722
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
j
1__inference_module_wrapper_21_layer_call_fn_74491

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_710922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
B__inference_dense_3_layer_call_and_return_conditional_losses_70964

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
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
?
j
1__inference_module_wrapper_13_layer_call_fn_73971

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_714582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_17_layer_call_fn_74231

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_708282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?5
?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_71145

args_0B
3batchnorm_7_assignmovingavg_readvariableop_resource:	?D
5batchnorm_7_assignmovingavg_1_readvariableop_resource:	?@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	?<
-batchnorm_7_batchnorm_readvariableop_resource:	?
identity??batchnorm_7/AssignMovingAvg?*batchnorm_7/AssignMovingAvg/ReadVariableOp?batchnorm_7/AssignMovingAvg_1?,batchnorm_7/AssignMovingAvg_1/ReadVariableOp?$batchnorm_7/batchnorm/ReadVariableOp?(batchnorm_7/batchnorm/mul/ReadVariableOp?
*batchnorm_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*batchnorm_7/moments/mean/reduction_indices?
batchnorm_7/moments/meanMeanargs_03batchnorm_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batchnorm_7/moments/mean?
 batchnorm_7/moments/StopGradientStopGradient!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes
:	?2"
 batchnorm_7/moments/StopGradient?
%batchnorm_7/moments/SquaredDifferenceSquaredDifferenceargs_0)batchnorm_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2'
%batchnorm_7/moments/SquaredDifference?
.batchnorm_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 20
.batchnorm_7/moments/variance/reduction_indices?
batchnorm_7/moments/varianceMean)batchnorm_7/moments/SquaredDifference:z:07batchnorm_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batchnorm_7/moments/variance?
batchnorm_7/moments/SqueezeSqueeze!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batchnorm_7/moments/Squeeze?
batchnorm_7/moments/Squeeze_1Squeeze%batchnorm_7/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batchnorm_7/moments/Squeeze_1?
!batchnorm_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!batchnorm_7/AssignMovingAvg/decay?
*batchnorm_7/AssignMovingAvg/ReadVariableOpReadVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*batchnorm_7/AssignMovingAvg/ReadVariableOp?
batchnorm_7/AssignMovingAvg/subSub2batchnorm_7/AssignMovingAvg/ReadVariableOp:value:0$batchnorm_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2!
batchnorm_7/AssignMovingAvg/sub?
batchnorm_7/AssignMovingAvg/mulMul#batchnorm_7/AssignMovingAvg/sub:z:0*batchnorm_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2!
batchnorm_7/AssignMovingAvg/mul?
batchnorm_7/AssignMovingAvgAssignSubVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource#batchnorm_7/AssignMovingAvg/mul:z:0+^batchnorm_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvg?
#batchnorm_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#batchnorm_7/AssignMovingAvg_1/decay?
,batchnorm_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp?
!batchnorm_7/AssignMovingAvg_1/subSub4batchnorm_7/AssignMovingAvg_1/ReadVariableOp:value:0&batchnorm_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2#
!batchnorm_7/AssignMovingAvg_1/sub?
!batchnorm_7/AssignMovingAvg_1/mulMul%batchnorm_7/AssignMovingAvg_1/sub:z:0,batchnorm_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2#
!batchnorm_7/AssignMovingAvg_1/mul?
batchnorm_7/AssignMovingAvg_1AssignSubVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource%batchnorm_7/AssignMovingAvg_1/mul:z:0-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvg_1
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm_7/batchnorm/add/y?
batchnorm_7/batchnorm/addAddV2&batchnorm_7/moments/Squeeze_1:output:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/add?
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/Rsqrt?
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp?
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul?
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/mul_1?
batchnorm_7/batchnorm/mul_2Mul$batchnorm_7/moments/Squeeze:output:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul_2?
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp?
batchnorm_7/batchnorm/subSub,batchnorm_7/batchnorm/ReadVariableOp:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/sub?
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/add_1?
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0^batchnorm_7/AssignMovingAvg+^batchnorm_7/AssignMovingAvg/ReadVariableOp^batchnorm_7/AssignMovingAvg_1-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp%^batchnorm_7/batchnorm/ReadVariableOp)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2:
batchnorm_7/AssignMovingAvgbatchnorm_7/AssignMovingAvg2X
*batchnorm_7/AssignMovingAvg/ReadVariableOp*batchnorm_7/AssignMovingAvg/ReadVariableOp2>
batchnorm_7/AssignMovingAvg_1batchnorm_7/AssignMovingAvg_12\
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp,batchnorm_7/AssignMovingAvg_1/ReadVariableOp2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_74009

args_02
#batchnorm_3_readvariableop_resource:	?4
%batchnorm_3_readvariableop_1_resource:	?C
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_3/FusedBatchNormV3/ReadVariableOp?-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?batchnorm_3/ReadVariableOp?batchnorm_3/ReadVariableOp_1?
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp?
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp_1?
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp?
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_3/FusedBatchNormV3?
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_13_layer_call_fn_73966

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_706932
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_70572

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_71192

args_0
identity?w
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/dropout/Const?
dropout_6/dropout/MulMulargs_0 dropout_6/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_6/dropout/Mulh
dropout_6/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape?
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform?
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_6/dropout/GreaterEqual/y?
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_6/dropout/GreaterEqual?
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_6/dropout/Cast?
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_6/dropout/Mul_1x
IdentityIdentitydropout_6/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
(__inference_conv2d_6_layer_call_fn_73800

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_706082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_70677

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identity??+batchnorm_2/FusedBatchNormV3/ReadVariableOp?-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?batchnorm_2/ReadVariableOp?batchnorm_2/ReadVariableOp_1?
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp?
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1?
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp?
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 2
batchnorm_2/FusedBatchNormV3?
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 2Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_74300

args_02
#batchnorm_6_readvariableop_resource:	?4
%batchnorm_6_readvariableop_1_resource:	?C
4batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_6/AssignNewValue?batchnorm_6/AssignNewValue_1?+batchnorm_6/FusedBatchNormV3/ReadVariableOp?-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?batchnorm_6/ReadVariableOp?batchnorm_6/ReadVariableOp_1?
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp?
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_6/ReadVariableOp_1?
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_6/FusedBatchNormV3/ReadVariableOp?
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_6/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_6/FusedBatchNormV3?
batchnorm_6/AssignNewValueAssignVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource)batchnorm_6/FusedBatchNormV3:batch_mean:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValue?
batchnorm_6/AssignNewValue_1AssignVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource-batchnorm_6/FusedBatchNormV3:batch_variance:0.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_6/AssignNewValue_1?
IdentityIdentity batchnorm_6/FusedBatchNormV3:y:0^batchnorm_6/AssignNewValue^batchnorm_6/AssignNewValue_1,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_6/AssignNewValuebatchnorm_6/AssignNewValue2<
batchnorm_6/AssignNewValue_1batchnorm_6/AssignNewValue_12Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_72318

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_6_layer_call_fn_74883

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_729922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_72740

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_20_layer_call_fn_74464

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_711452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
(__inference_conv2d_8_layer_call_fn_73991

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_707062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_15_layer_call_fn_74122

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_707752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_74359

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????H2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_module_wrapper_21_layer_call_fn_74486

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_709512
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_70584

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_14_layer_call_fn_74040

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_707302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_71417

args_02
#batchnorm_3_readvariableop_resource:	?4
%batchnorm_3_readvariableop_1_resource:	?C
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_3/AssignNewValue?batchnorm_3/AssignNewValue_1?+batchnorm_3/FusedBatchNormV3/ReadVariableOp?-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?batchnorm_3/ReadVariableOp?batchnorm_3/ReadVariableOp_1?
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp?
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_3/ReadVariableOp_1?
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_3/FusedBatchNormV3/ReadVariableOp?
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_3/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_3/FusedBatchNormV3?
batchnorm_3/AssignNewValueAssignVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource)batchnorm_3/FusedBatchNormV3:batch_mean:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValue?
batchnorm_3/AssignNewValue_1AssignVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource-batchnorm_3/FusedBatchNormV3:batch_variance:0.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_3/AssignNewValue_1?
IdentityIdentity batchnorm_3/FusedBatchNormV3:y:0^batchnorm_3/AssignNewValue^batchnorm_3/AssignNewValue_1,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_3/AssignNewValuebatchnorm_3/AssignNewValue2<
batchnorm_3/AssignNewValue_1batchnorm_3/AssignNewValue_12Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?7
__inference__traced_save_75325
file_prefix.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopB
>savev2_module_wrapper_11_batchnorm_1_gamma_read_readvariableopA
=savev2_module_wrapper_11_batchnorm_1_beta_read_readvariableopH
Dsavev2_module_wrapper_11_batchnorm_1_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_11_batchnorm_1_moving_variance_read_readvariableopB
>savev2_module_wrapper_12_batchnorm_2_gamma_read_readvariableopA
=savev2_module_wrapper_12_batchnorm_2_beta_read_readvariableopH
Dsavev2_module_wrapper_12_batchnorm_2_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_12_batchnorm_2_moving_variance_read_readvariableopB
>savev2_module_wrapper_14_batchnorm_3_gamma_read_readvariableopA
=savev2_module_wrapper_14_batchnorm_3_beta_read_readvariableopH
Dsavev2_module_wrapper_14_batchnorm_3_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_14_batchnorm_3_moving_variance_read_readvariableopB
>savev2_module_wrapper_15_batchnorm_4_gamma_read_readvariableopA
=savev2_module_wrapper_15_batchnorm_4_beta_read_readvariableopH
Dsavev2_module_wrapper_15_batchnorm_4_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_15_batchnorm_4_moving_variance_read_readvariableopB
>savev2_module_wrapper_17_batchnorm_5_gamma_read_readvariableopA
=savev2_module_wrapper_17_batchnorm_5_beta_read_readvariableopH
Dsavev2_module_wrapper_17_batchnorm_5_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_17_batchnorm_5_moving_variance_read_readvariableopB
>savev2_module_wrapper_18_batchnorm_6_gamma_read_readvariableopA
=savev2_module_wrapper_18_batchnorm_6_beta_read_readvariableopH
Dsavev2_module_wrapper_18_batchnorm_6_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_18_batchnorm_6_moving_variance_read_readvariableopB
>savev2_module_wrapper_20_batchnorm_7_gamma_read_readvariableopA
=savev2_module_wrapper_20_batchnorm_7_beta_read_readvariableopH
Dsavev2_module_wrapper_20_batchnorm_7_moving_mean_read_readvariableopL
Hsavev2_module_wrapper_20_batchnorm_7_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopI
Esavev2_adam_module_wrapper_11_batchnorm_1_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_11_batchnorm_1_beta_m_read_readvariableopI
Esavev2_adam_module_wrapper_12_batchnorm_2_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_12_batchnorm_2_beta_m_read_readvariableopI
Esavev2_adam_module_wrapper_14_batchnorm_3_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_14_batchnorm_3_beta_m_read_readvariableopI
Esavev2_adam_module_wrapper_15_batchnorm_4_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_15_batchnorm_4_beta_m_read_readvariableopI
Esavev2_adam_module_wrapper_17_batchnorm_5_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_17_batchnorm_5_beta_m_read_readvariableopI
Esavev2_adam_module_wrapper_18_batchnorm_6_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_18_batchnorm_6_beta_m_read_readvariableopI
Esavev2_adam_module_wrapper_20_batchnorm_7_gamma_m_read_readvariableopH
Dsavev2_adam_module_wrapper_20_batchnorm_7_beta_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopI
Esavev2_adam_module_wrapper_11_batchnorm_1_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_11_batchnorm_1_beta_v_read_readvariableopI
Esavev2_adam_module_wrapper_12_batchnorm_2_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_12_batchnorm_2_beta_v_read_readvariableopI
Esavev2_adam_module_wrapper_14_batchnorm_3_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_14_batchnorm_3_beta_v_read_readvariableopI
Esavev2_adam_module_wrapper_15_batchnorm_4_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_15_batchnorm_4_beta_v_read_readvariableopI
Esavev2_adam_module_wrapper_17_batchnorm_5_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_17_batchnorm_5_beta_v_read_readvariableopI
Esavev2_adam_module_wrapper_18_batchnorm_6_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_18_batchnorm_6_beta_v_read_readvariableopI
Esavev2_adam_module_wrapper_20_batchnorm_7_gamma_v_read_readvariableopH
Dsavev2_adam_module_wrapper_20_batchnorm_7_beta_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?8
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*?7
value?7B?7rB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*?
value?B?rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?5
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop>savev2_module_wrapper_11_batchnorm_1_gamma_read_readvariableop=savev2_module_wrapper_11_batchnorm_1_beta_read_readvariableopDsavev2_module_wrapper_11_batchnorm_1_moving_mean_read_readvariableopHsavev2_module_wrapper_11_batchnorm_1_moving_variance_read_readvariableop>savev2_module_wrapper_12_batchnorm_2_gamma_read_readvariableop=savev2_module_wrapper_12_batchnorm_2_beta_read_readvariableopDsavev2_module_wrapper_12_batchnorm_2_moving_mean_read_readvariableopHsavev2_module_wrapper_12_batchnorm_2_moving_variance_read_readvariableop>savev2_module_wrapper_14_batchnorm_3_gamma_read_readvariableop=savev2_module_wrapper_14_batchnorm_3_beta_read_readvariableopDsavev2_module_wrapper_14_batchnorm_3_moving_mean_read_readvariableopHsavev2_module_wrapper_14_batchnorm_3_moving_variance_read_readvariableop>savev2_module_wrapper_15_batchnorm_4_gamma_read_readvariableop=savev2_module_wrapper_15_batchnorm_4_beta_read_readvariableopDsavev2_module_wrapper_15_batchnorm_4_moving_mean_read_readvariableopHsavev2_module_wrapper_15_batchnorm_4_moving_variance_read_readvariableop>savev2_module_wrapper_17_batchnorm_5_gamma_read_readvariableop=savev2_module_wrapper_17_batchnorm_5_beta_read_readvariableopDsavev2_module_wrapper_17_batchnorm_5_moving_mean_read_readvariableopHsavev2_module_wrapper_17_batchnorm_5_moving_variance_read_readvariableop>savev2_module_wrapper_18_batchnorm_6_gamma_read_readvariableop=savev2_module_wrapper_18_batchnorm_6_beta_read_readvariableopDsavev2_module_wrapper_18_batchnorm_6_moving_mean_read_readvariableopHsavev2_module_wrapper_18_batchnorm_6_moving_variance_read_readvariableop>savev2_module_wrapper_20_batchnorm_7_gamma_read_readvariableop=savev2_module_wrapper_20_batchnorm_7_beta_read_readvariableopDsavev2_module_wrapper_20_batchnorm_7_moving_mean_read_readvariableopHsavev2_module_wrapper_20_batchnorm_7_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopEsavev2_adam_module_wrapper_11_batchnorm_1_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_11_batchnorm_1_beta_m_read_readvariableopEsavev2_adam_module_wrapper_12_batchnorm_2_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_12_batchnorm_2_beta_m_read_readvariableopEsavev2_adam_module_wrapper_14_batchnorm_3_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_14_batchnorm_3_beta_m_read_readvariableopEsavev2_adam_module_wrapper_15_batchnorm_4_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_15_batchnorm_4_beta_m_read_readvariableopEsavev2_adam_module_wrapper_17_batchnorm_5_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_17_batchnorm_5_beta_m_read_readvariableopEsavev2_adam_module_wrapper_18_batchnorm_6_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_18_batchnorm_6_beta_m_read_readvariableopEsavev2_adam_module_wrapper_20_batchnorm_7_gamma_m_read_readvariableopDsavev2_adam_module_wrapper_20_batchnorm_7_beta_m_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopEsavev2_adam_module_wrapper_11_batchnorm_1_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_11_batchnorm_1_beta_v_read_readvariableopEsavev2_adam_module_wrapper_12_batchnorm_2_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_12_batchnorm_2_beta_v_read_readvariableopEsavev2_adam_module_wrapper_14_batchnorm_3_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_14_batchnorm_3_beta_v_read_readvariableopEsavev2_adam_module_wrapper_15_batchnorm_4_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_15_batchnorm_4_beta_v_read_readvariableopEsavev2_adam_module_wrapper_17_batchnorm_5_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_17_batchnorm_5_beta_v_read_readvariableopEsavev2_adam_module_wrapper_18_batchnorm_6_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_18_batchnorm_6_beta_v_read_readvariableopEsavev2_adam_module_wrapper_20_batchnorm_7_gamma_v_read_readvariableopDsavev2_adam_module_wrapper_20_batchnorm_7_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypesv
t2r	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:@@:@:@?:?:??:?:??:?:??:?:
?H?:?:	?:: : : : : :@:@:@:@:@:@:@:@:?:?:?:?:?:?:?:?:?:?:?:?:?:?:?:?:?:?:?:?: : : : :@:@:@@:@:@?:?:??:?:??:?:??:?:
?H?:?:	?::@:@:@:@:?:?:?:?:?:?:?:?:?:?:@:@:@@:@:@?:?:??:?:??:?:??:?:
?H?:?:	?::@:@:@:@:?:?:?:?:?:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.	*
(
_output_shapes
:??:!


_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
?H?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:!

_output_shapes	
:?:!

_output_shapes	
:?:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:!0

_output_shapes	
:?:!1

_output_shapes	
:?:2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :,6(
&
_output_shapes
:@: 7

_output_shapes
:@:,8(
&
_output_shapes
:@@: 9

_output_shapes
:@:-:)
'
_output_shapes
:@?:!;

_output_shapes	
:?:.<*
(
_output_shapes
:??:!=

_output_shapes	
:?:.>*
(
_output_shapes
:??:!?

_output_shapes	
:?:.@*
(
_output_shapes
:??:!A

_output_shapes	
:?:&B"
 
_output_shapes
:
?H?:!C

_output_shapes	
:?:%D!

_output_shapes
:	?: E

_output_shapes
:: F

_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@: I

_output_shapes
:@:!J

_output_shapes	
:?:!K

_output_shapes	
:?:!L

_output_shapes	
:?:!M

_output_shapes	
:?:!N

_output_shapes	
:?:!O

_output_shapes	
:?:!P

_output_shapes	
:?:!Q

_output_shapes	
:?:!R

_output_shapes	
:?:!S

_output_shapes	
:?:,T(
&
_output_shapes
:@: U

_output_shapes
:@:,V(
&
_output_shapes
:@@: W

_output_shapes
:@:-X)
'
_output_shapes
:@?:!Y

_output_shapes	
:?:.Z*
(
_output_shapes
:??:![

_output_shapes	
:?:.\*
(
_output_shapes
:??:!]

_output_shapes	
:?:.^*
(
_output_shapes
:??:!_

_output_shapes	
:?:&`"
 
_output_shapes
:
?H?:!a

_output_shapes	
:?:%b!

_output_shapes
:	?: c

_output_shapes
:: d

_output_shapes
:@: e

_output_shapes
:@: f

_output_shapes
:@: g

_output_shapes
:@:!h

_output_shapes	
:?:!i

_output_shapes	
:?:!j

_output_shapes	
:?:!k

_output_shapes	
:?:!l

_output_shapes	
:?:!m

_output_shapes	
:?:!n

_output_shapes	
:?:!o

_output_shapes	
:?:!p

_output_shapes	
:?:!q

_output_shapes	
:?:r

_output_shapes
: 
?
?

,__inference_sequential_1_layer_call_fn_73780

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?

unknown_34:	?

unknown_35:
?H?

unknown_36:	?

unknown_37:	?

unknown_38:	?

unknown_39:	?

unknown_40:	?

unknown_41:	?

unknown_42:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
 !"%&)*+,*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_717812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
k
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_71325

args_0
identity?w
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/dropout/Const?
dropout_5/dropout/MulMulargs_0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mulh
dropout_5/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform?
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_5/dropout/GreaterEqual/y?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_5/dropout/GreaterEqual?
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_5/dropout/Cast?
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_5/dropout/Mul_1x
IdentityIdentitydropout_5/dropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_17_layer_call_fn_74244

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_712842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_72992

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_11_layer_call_fn_73849

args_0
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_706322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_70828

args_02
#batchnorm_5_readvariableop_resource:	?4
%batchnorm_5_readvariableop_1_resource:	?C
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_5/FusedBatchNormV3/ReadVariableOp?-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?batchnorm_5/ReadVariableOp?batchnorm_5/ReadVariableOp_1?
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp?
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp_1?
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp?
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_5/FusedBatchNormV3?
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_74653

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_2_layer_call_fn_74622

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_724442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_74857

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_1_layer_call_fn_74364

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_708972
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_74091

args_02
#batchnorm_4_readvariableop_resource:	?4
%batchnorm_4_readvariableop_1_resource:	?C
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?
identity??+batchnorm_4/FusedBatchNormV3/ReadVariableOp?-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?batchnorm_4/ReadVariableOp?batchnorm_4/ReadVariableOp_1?
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp?
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_4/ReadVariableOp_1?
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_4/FusedBatchNormV3/ReadVariableOp?
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_4/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
batchnorm_4/FusedBatchNormV3?
IdentityIdentity batchnorm_4/FusedBatchNormV3:y:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_74903

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_batchnorm_1_layer_call_fn_74573

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_723622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_74777

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_73076

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_15_layer_call_fn_74135

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_713622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
+__inference_batchnorm_5_layer_call_fn_74808

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_728222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?*
G__inference_sequential_1_layer_call_and_return_conditional_losses_73383

inputsA
'conv2d_6_conv2d_readvariableop_resource:@6
(conv2d_6_biasadd_readvariableop_resource:@C
5module_wrapper_11_batchnorm_1_readvariableop_resource:@E
7module_wrapper_11_batchnorm_1_readvariableop_1_resource:@T
Fmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource:@V
Hmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource:@A
'conv2d_7_conv2d_readvariableop_resource:@@6
(conv2d_7_biasadd_readvariableop_resource:@C
5module_wrapper_12_batchnorm_2_readvariableop_resource:@E
7module_wrapper_12_batchnorm_2_readvariableop_1_resource:@T
Fmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@V
Hmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_8_conv2d_readvariableop_resource:@?7
(conv2d_8_biasadd_readvariableop_resource:	?D
5module_wrapper_14_batchnorm_3_readvariableop_resource:	?F
7module_wrapper_14_batchnorm_3_readvariableop_1_resource:	?U
Fmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_9_conv2d_readvariableop_resource:??7
(conv2d_9_biasadd_readvariableop_resource:	?D
5module_wrapper_15_batchnorm_4_readvariableop_resource:	?F
7module_wrapper_15_batchnorm_4_readvariableop_1_resource:	?U
Fmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_10_conv2d_readvariableop_resource:??8
)conv2d_10_biasadd_readvariableop_resource:	?D
5module_wrapper_17_batchnorm_5_readvariableop_resource:	?F
7module_wrapper_17_batchnorm_5_readvariableop_1_resource:	?U
Fmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_11_conv2d_readvariableop_resource:??8
)conv2d_11_biasadd_readvariableop_resource:	?D
5module_wrapper_18_batchnorm_6_readvariableop_resource:	?F
7module_wrapper_18_batchnorm_6_readvariableop_1_resource:	?U
Fmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource:	?W
Hmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource:	?:
&dense_2_matmul_readvariableop_resource:
?H?6
'dense_2_biasadd_readvariableop_resource:	?N
?module_wrapper_20_batchnorm_7_batchnorm_readvariableop_resource:	?R
Cmodule_wrapper_20_batchnorm_7_batchnorm_mul_readvariableop_resource:	?P
Amodule_wrapper_20_batchnorm_7_batchnorm_readvariableop_1_resource:	?P
Amodule_wrapper_20_batchnorm_7_batchnorm_readvariableop_2_resource:	?9
&dense_3_matmul_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?conv2d_6/BiasAdd/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?conv2d_7/BiasAdd/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?conv2d_8/BiasAdd/ReadVariableOp?conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp??module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_11/batchnorm_1/ReadVariableOp?.module_wrapper_11/batchnorm_1/ReadVariableOp_1?=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp??module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_12/batchnorm_2/ReadVariableOp?.module_wrapper_12/batchnorm_2/ReadVariableOp_1?=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp??module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_14/batchnorm_3/ReadVariableOp?.module_wrapper_14/batchnorm_3/ReadVariableOp_1?=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp??module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_15/batchnorm_4/ReadVariableOp?.module_wrapper_15/batchnorm_4/ReadVariableOp_1?=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp??module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_17/batchnorm_5/ReadVariableOp?.module_wrapper_17/batchnorm_5/ReadVariableOp_1?=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp??module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?,module_wrapper_18/batchnorm_6/ReadVariableOp?.module_wrapper_18/batchnorm_6/ReadVariableOp_1?6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp?8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1?8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2?:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2DConv2Dinputs&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_6/Conv2D?
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_6/BiasAdd/ReadVariableOp?
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_6/BiasAddx
conv2d_6/EluEluconv2d_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_6/Elu?
,module_wrapper_11/batchnorm_1/ReadVariableOpReadVariableOp5module_wrapper_11_batchnorm_1_readvariableop_resource*
_output_shapes
:@*
dtype02.
,module_wrapper_11/batchnorm_1/ReadVariableOp?
.module_wrapper_11/batchnorm_1/ReadVariableOp_1ReadVariableOp7module_wrapper_11_batchnorm_1_readvariableop_1_resource*
_output_shapes
:@*
dtype020
.module_wrapper_11/batchnorm_1/ReadVariableOp_1?
=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02?
=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_11_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02A
?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_11/batchnorm_1/FusedBatchNormV3FusedBatchNormV3conv2d_6/Elu:activations:04module_wrapper_11/batchnorm_1/ReadVariableOp:value:06module_wrapper_11/batchnorm_1/ReadVariableOp_1:value:0Emodule_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 20
.module_wrapper_11/batchnorm_1/FusedBatchNormV3?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2DConv2D2module_wrapper_11/batchnorm_1/FusedBatchNormV3:y:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
conv2d_7/Conv2D?
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_7/BiasAdd/ReadVariableOp?
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2
conv2d_7/BiasAddx
conv2d_7/EluEluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
conv2d_7/Elu?
,module_wrapper_12/batchnorm_2/ReadVariableOpReadVariableOp5module_wrapper_12_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02.
,module_wrapper_12/batchnorm_2/ReadVariableOp?
.module_wrapper_12/batchnorm_2/ReadVariableOp_1ReadVariableOp7module_wrapper_12_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype020
.module_wrapper_12/batchnorm_2/ReadVariableOp_1?
=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02?
=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_12_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02A
?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_12/batchnorm_2/FusedBatchNormV3FusedBatchNormV3conv2d_7/Elu:activations:04module_wrapper_12/batchnorm_2/ReadVariableOp:value:06module_wrapper_12/batchnorm_2/ReadVariableOp_1:value:0Emodule_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
is_training( 20
.module_wrapper_12/batchnorm_2/FusedBatchNormV3?
max_pooling2d_3/MaxPoolMaxPool2module_wrapper_12/batchnorm_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool?
$module_wrapper_13/dropout_4/IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2&
$module_wrapper_13/dropout_4/Identity?
conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_8/Conv2D/ReadVariableOp?
conv2d_8/Conv2DConv2D-module_wrapper_13/dropout_4/Identity:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_8/Conv2D?
conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_8/BiasAdd/ReadVariableOp?
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_8/BiasAddy
conv2d_8/EluEluconv2d_8/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_8/Elu?
,module_wrapper_14/batchnorm_3/ReadVariableOpReadVariableOp5module_wrapper_14_batchnorm_3_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_14/batchnorm_3/ReadVariableOp?
.module_wrapper_14/batchnorm_3/ReadVariableOp_1ReadVariableOp7module_wrapper_14_batchnorm_3_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_14/batchnorm_3/ReadVariableOp_1?
=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_14_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_14/batchnorm_3/FusedBatchNormV3FusedBatchNormV3conv2d_8/Elu:activations:04module_wrapper_14/batchnorm_3/ReadVariableOp:value:06module_wrapper_14/batchnorm_3/ReadVariableOp_1:value:0Emodule_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 20
.module_wrapper_14/batchnorm_3/FusedBatchNormV3?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2D2module_wrapper_14/batchnorm_3/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_9/BiasAddy
conv2d_9/EluEluconv2d_9/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_9/Elu?
,module_wrapper_15/batchnorm_4/ReadVariableOpReadVariableOp5module_wrapper_15_batchnorm_4_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_15/batchnorm_4/ReadVariableOp?
.module_wrapper_15/batchnorm_4/ReadVariableOp_1ReadVariableOp7module_wrapper_15_batchnorm_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_15/batchnorm_4/ReadVariableOp_1?
=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_15_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_15/batchnorm_4/FusedBatchNormV3FusedBatchNormV3conv2d_9/Elu:activations:04module_wrapper_15/batchnorm_4/ReadVariableOp:value:06module_wrapper_15/batchnorm_4/ReadVariableOp_1:value:0Emodule_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 20
.module_wrapper_15/batchnorm_4/FusedBatchNormV3?
max_pooling2d_4/MaxPoolMaxPool2module_wrapper_15/batchnorm_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
$module_wrapper_16/dropout_5/IdentityIdentity max_pooling2d_4/MaxPool:output:0*
T0*0
_output_shapes
:??????????2&
$module_wrapper_16/dropout_5/Identity?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2D-module_wrapper_16/dropout_5/Identity:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_10/BiasAdd|
conv2d_10/EluEluconv2d_10/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_10/Elu?
,module_wrapper_17/batchnorm_5/ReadVariableOpReadVariableOp5module_wrapper_17_batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_17/batchnorm_5/ReadVariableOp?
.module_wrapper_17/batchnorm_5/ReadVariableOp_1ReadVariableOp7module_wrapper_17_batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_17/batchnorm_5/ReadVariableOp_1?
=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_17_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_17/batchnorm_5/FusedBatchNormV3FusedBatchNormV3conv2d_10/Elu:activations:04module_wrapper_17/batchnorm_5/ReadVariableOp:value:06module_wrapper_17/batchnorm_5/ReadVariableOp_1:value:0Emodule_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 20
.module_wrapper_17/batchnorm_5/FusedBatchNormV3?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D2module_wrapper_17/batchnorm_5/FusedBatchNormV3:y:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_11/BiasAdd|
conv2d_11/EluEluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_11/Elu?
,module_wrapper_18/batchnorm_6/ReadVariableOpReadVariableOp5module_wrapper_18_batchnorm_6_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,module_wrapper_18/batchnorm_6/ReadVariableOp?
.module_wrapper_18/batchnorm_6/ReadVariableOp_1ReadVariableOp7module_wrapper_18_batchnorm_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype020
.module_wrapper_18/batchnorm_6/ReadVariableOp_1?
=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp?
?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodule_wrapper_18_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?
.module_wrapper_18/batchnorm_6/FusedBatchNormV3FusedBatchNormV3conv2d_11/Elu:activations:04module_wrapper_18/batchnorm_6/ReadVariableOp:value:06module_wrapper_18/batchnorm_6/ReadVariableOp_1:value:0Emodule_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0Gmodule_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 20
.module_wrapper_18/batchnorm_6/FusedBatchNormV3?
max_pooling2d_5/MaxPoolMaxPool2module_wrapper_18/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPool?
$module_wrapper_19/dropout_6/IdentityIdentity max_pooling2d_5/MaxPool:output:0*
T0*0
_output_shapes
:??????????2&
$module_wrapper_19/dropout_6/Identitys
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? $  2
flatten_1/Const?
flatten_1/ReshapeReshape-module_wrapper_19/dropout_6/Identity:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????H2
flatten_1/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
?H?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_2/BiasAddn
dense_2/EluEludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_2/Elu?
6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOpReadVariableOp?module_wrapper_20_batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype028
6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp?
-module_wrapper_20/batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2/
-module_wrapper_20/batchnorm_7/batchnorm/add/y?
+module_wrapper_20/batchnorm_7/batchnorm/addAddV2>module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp:value:06module_wrapper_20/batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2-
+module_wrapper_20/batchnorm_7/batchnorm/add?
-module_wrapper_20/batchnorm_7/batchnorm/RsqrtRsqrt/module_wrapper_20/batchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2/
-module_wrapper_20/batchnorm_7/batchnorm/Rsqrt?
:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOpCmodule_wrapper_20_batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp?
+module_wrapper_20/batchnorm_7/batchnorm/mulMul1module_wrapper_20/batchnorm_7/batchnorm/Rsqrt:y:0Bmodule_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2-
+module_wrapper_20/batchnorm_7/batchnorm/mul?
-module_wrapper_20/batchnorm_7/batchnorm/mul_1Muldense_2/Elu:activations:0/module_wrapper_20/batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2/
-module_wrapper_20/batchnorm_7/batchnorm/mul_1?
8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1ReadVariableOpAmodule_wrapper_20_batchnorm_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1?
-module_wrapper_20/batchnorm_7/batchnorm/mul_2Mul@module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_1:value:0/module_wrapper_20/batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2/
-module_wrapper_20/batchnorm_7/batchnorm/mul_2?
8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2ReadVariableOpAmodule_wrapper_20_batchnorm_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02:
8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2?
+module_wrapper_20/batchnorm_7/batchnorm/subSub@module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2:value:01module_wrapper_20/batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2-
+module_wrapper_20/batchnorm_7/batchnorm/sub?
-module_wrapper_20/batchnorm_7/batchnorm/add_1AddV21module_wrapper_20/batchnorm_7/batchnorm/mul_1:z:0/module_wrapper_20/batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2/
-module_wrapper_20/batchnorm_7/batchnorm/add_1?
$module_wrapper_21/dropout_7/IdentityIdentity1module_wrapper_20/batchnorm_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$module_wrapper_21/dropout_7/Identity?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMul-module_wrapper_21/dropout_7/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_3/Softmax?
IdentityIdentitydense_3/Softmax:softmax:0!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp>^module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp@^module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_11/batchnorm_1/ReadVariableOp/^module_wrapper_11/batchnorm_1/ReadVariableOp_1>^module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp@^module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_12/batchnorm_2/ReadVariableOp/^module_wrapper_12/batchnorm_2/ReadVariableOp_1>^module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp@^module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_14/batchnorm_3/ReadVariableOp/^module_wrapper_14/batchnorm_3/ReadVariableOp_1>^module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp@^module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_15/batchnorm_4/ReadVariableOp/^module_wrapper_15/batchnorm_4/ReadVariableOp_1>^module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp@^module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_17/batchnorm_5/ReadVariableOp/^module_wrapper_17/batchnorm_5/ReadVariableOp_1>^module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp@^module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-^module_wrapper_18/batchnorm_6/ReadVariableOp/^module_wrapper_18/batchnorm_6/ReadVariableOp_17^module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp9^module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_19^module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_2;^module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2~
=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp=module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_11/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_11/batchnorm_1/ReadVariableOp,module_wrapper_11/batchnorm_1/ReadVariableOp2`
.module_wrapper_11/batchnorm_1/ReadVariableOp_1.module_wrapper_11/batchnorm_1/ReadVariableOp_12~
=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp=module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_12/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_12/batchnorm_2/ReadVariableOp,module_wrapper_12/batchnorm_2/ReadVariableOp2`
.module_wrapper_12/batchnorm_2/ReadVariableOp_1.module_wrapper_12/batchnorm_2/ReadVariableOp_12~
=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp=module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_14/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_14/batchnorm_3/ReadVariableOp,module_wrapper_14/batchnorm_3/ReadVariableOp2`
.module_wrapper_14/batchnorm_3/ReadVariableOp_1.module_wrapper_14/batchnorm_3/ReadVariableOp_12~
=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp=module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_15/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_15/batchnorm_4/ReadVariableOp,module_wrapper_15/batchnorm_4/ReadVariableOp2`
.module_wrapper_15/batchnorm_4/ReadVariableOp_1.module_wrapper_15/batchnorm_4/ReadVariableOp_12~
=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp=module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_17/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_17/batchnorm_5/ReadVariableOp,module_wrapper_17/batchnorm_5/ReadVariableOp2`
.module_wrapper_17/batchnorm_5/ReadVariableOp_1.module_wrapper_17/batchnorm_5/ReadVariableOp_12~
=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp=module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp2?
?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?module_wrapper_18/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12\
,module_wrapper_18/batchnorm_6/ReadVariableOp,module_wrapper_18/batchnorm_6/ReadVariableOp2`
.module_wrapper_18/batchnorm_6/ReadVariableOp_1.module_wrapper_18/batchnorm_6/ReadVariableOp_12p
6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp6module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp2t
8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_18module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_12t
8module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_28module_wrapper_20/batchnorm_7/batchnorm/ReadVariableOp_22x
:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:module_wrapper_20/batchnorm_7/batchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_74218

args_02
#batchnorm_5_readvariableop_resource:	?4
%batchnorm_5_readvariableop_1_resource:	?C
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:	?E
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:	?
identity??batchnorm_5/AssignNewValue?batchnorm_5/AssignNewValue_1?+batchnorm_5/FusedBatchNormV3/ReadVariableOp?-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?batchnorm_5/ReadVariableOp?batchnorm_5/ReadVariableOp_1?
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp?
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm_5/ReadVariableOp_1?
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+batchnorm_5/FusedBatchNormV3/ReadVariableOp?
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02/
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_5/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_5/FusedBatchNormV3?
batchnorm_5/AssignNewValueAssignVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource)batchnorm_5/FusedBatchNormV3:batch_mean:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValue?
batchnorm_5/AssignNewValue_1AssignVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource-batchnorm_5/FusedBatchNormV3:batch_variance:0.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_5/AssignNewValue_1?
IdentityIdentity batchnorm_5/FusedBatchNormV3:y:0^batchnorm_5/AssignNewValue^batchnorm_5/AssignNewValue_1,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 28
batchnorm_5/AssignNewValuebatchnorm_5/AssignNewValue2<
batchnorm_5/AssignNewValue_1batchnorm_5/AssignNewValue_12Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
K
/__inference_max_pooling2d_5_layer_call_fn_70590

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_705842
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_71495

args_01
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@
identity??batchnorm_2/AssignNewValue?batchnorm_2/AssignNewValue_1?+batchnorm_2/FusedBatchNormV3/ReadVariableOp?-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?batchnorm_2/ReadVariableOp?batchnorm_2/ReadVariableOp_1?
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp?
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm_2/ReadVariableOp_1?
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02-
+batchnorm_2/FusedBatchNormV3/ReadVariableOp?
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02/
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?
batchnorm_2/FusedBatchNormV3FusedBatchNormV3args_0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????00@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
batchnorm_2/FusedBatchNormV3?
batchnorm_2/AssignNewValueAssignVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource)batchnorm_2/FusedBatchNormV3:batch_mean:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValue?
batchnorm_2/AssignNewValue_1AssignVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource-batchnorm_2/FusedBatchNormV3:batch_variance:0.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
batchnorm_2/AssignNewValue_1?
IdentityIdentity batchnorm_2/FusedBatchNormV3:y:0^batchnorm_2/AssignNewValue^batchnorm_2/AssignNewValue_1,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????00@: : : : 28
batchnorm_2/AssignNewValuebatchnorm_2/AssignNewValue2<
batchnorm_2/AssignNewValue_1batchnorm_2/AssignNewValue_12Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_1:W S
/
_output_shapes
:?????????00@
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_73961

args_0
identity?w
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/dropout/Const?
dropout_4/dropout/MulMulargs_0 dropout_4/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_4/dropout/Mulh
dropout_4/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform?
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_4/dropout/GreaterEqual/y?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_4/dropout/GreaterEqual?
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_4/dropout/Cast?
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_4/dropout/Mul_1w
IdentityIdentitydropout_4/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
j
1__inference_module_wrapper_19_layer_call_fn_74353

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_711922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?*
?
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_73136

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_72570

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_72948

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?5
?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_74438

args_0B
3batchnorm_7_assignmovingavg_readvariableop_resource:	?D
5batchnorm_7_assignmovingavg_1_readvariableop_resource:	?@
1batchnorm_7_batchnorm_mul_readvariableop_resource:	?<
-batchnorm_7_batchnorm_readvariableop_resource:	?
identity??batchnorm_7/AssignMovingAvg?*batchnorm_7/AssignMovingAvg/ReadVariableOp?batchnorm_7/AssignMovingAvg_1?,batchnorm_7/AssignMovingAvg_1/ReadVariableOp?$batchnorm_7/batchnorm/ReadVariableOp?(batchnorm_7/batchnorm/mul/ReadVariableOp?
*batchnorm_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*batchnorm_7/moments/mean/reduction_indices?
batchnorm_7/moments/meanMeanargs_03batchnorm_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batchnorm_7/moments/mean?
 batchnorm_7/moments/StopGradientStopGradient!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes
:	?2"
 batchnorm_7/moments/StopGradient?
%batchnorm_7/moments/SquaredDifferenceSquaredDifferenceargs_0)batchnorm_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2'
%batchnorm_7/moments/SquaredDifference?
.batchnorm_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 20
.batchnorm_7/moments/variance/reduction_indices?
batchnorm_7/moments/varianceMean)batchnorm_7/moments/SquaredDifference:z:07batchnorm_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
batchnorm_7/moments/variance?
batchnorm_7/moments/SqueezeSqueeze!batchnorm_7/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batchnorm_7/moments/Squeeze?
batchnorm_7/moments/Squeeze_1Squeeze%batchnorm_7/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
batchnorm_7/moments/Squeeze_1?
!batchnorm_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!batchnorm_7/AssignMovingAvg/decay?
*batchnorm_7/AssignMovingAvg/ReadVariableOpReadVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*batchnorm_7/AssignMovingAvg/ReadVariableOp?
batchnorm_7/AssignMovingAvg/subSub2batchnorm_7/AssignMovingAvg/ReadVariableOp:value:0$batchnorm_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2!
batchnorm_7/AssignMovingAvg/sub?
batchnorm_7/AssignMovingAvg/mulMul#batchnorm_7/AssignMovingAvg/sub:z:0*batchnorm_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2!
batchnorm_7/AssignMovingAvg/mul?
batchnorm_7/AssignMovingAvgAssignSubVariableOp3batchnorm_7_assignmovingavg_readvariableop_resource#batchnorm_7/AssignMovingAvg/mul:z:0+^batchnorm_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvg?
#batchnorm_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#batchnorm_7/AssignMovingAvg_1/decay?
,batchnorm_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp?
!batchnorm_7/AssignMovingAvg_1/subSub4batchnorm_7/AssignMovingAvg_1/ReadVariableOp:value:0&batchnorm_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2#
!batchnorm_7/AssignMovingAvg_1/sub?
!batchnorm_7/AssignMovingAvg_1/mulMul%batchnorm_7/AssignMovingAvg_1/sub:z:0,batchnorm_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2#
!batchnorm_7/AssignMovingAvg_1/mul?
batchnorm_7/AssignMovingAvg_1AssignSubVariableOp5batchnorm_7_assignmovingavg_1_readvariableop_resource%batchnorm_7/AssignMovingAvg_1/mul:z:0-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
batchnorm_7/AssignMovingAvg_1
batchnorm_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm_7/batchnorm/add/y?
batchnorm_7/batchnorm/addAddV2&batchnorm_7/moments/Squeeze_1:output:0$batchnorm_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/add?
batchnorm_7/batchnorm/RsqrtRsqrtbatchnorm_7/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/Rsqrt?
(batchnorm_7/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batchnorm_7/batchnorm/mul/ReadVariableOp?
batchnorm_7/batchnorm/mulMulbatchnorm_7/batchnorm/Rsqrt:y:00batchnorm_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul?
batchnorm_7/batchnorm/mul_1Mulargs_0batchnorm_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/mul_1?
batchnorm_7/batchnorm/mul_2Mul$batchnorm_7/moments/Squeeze:output:0batchnorm_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/mul_2?
$batchnorm_7/batchnorm/ReadVariableOpReadVariableOp-batchnorm_7_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batchnorm_7/batchnorm/ReadVariableOp?
batchnorm_7/batchnorm/subSub,batchnorm_7/batchnorm/ReadVariableOp:value:0batchnorm_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm_7/batchnorm/sub?
batchnorm_7/batchnorm/add_1AddV2batchnorm_7/batchnorm/mul_1:z:0batchnorm_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm_7/batchnorm/add_1?
IdentityIdentitybatchnorm_7/batchnorm/add_1:z:0^batchnorm_7/AssignMovingAvg+^batchnorm_7/AssignMovingAvg/ReadVariableOp^batchnorm_7/AssignMovingAvg_1-^batchnorm_7/AssignMovingAvg_1/ReadVariableOp%^batchnorm_7/batchnorm/ReadVariableOp)^batchnorm_7/batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2:
batchnorm_7/AssignMovingAvgbatchnorm_7/AssignMovingAvg2X
*batchnorm_7/AssignMovingAvg/ReadVariableOp*batchnorm_7/AssignMovingAvg/ReadVariableOp2>
batchnorm_7/AssignMovingAvg_1batchnorm_7/AssignMovingAvg_12\
,batchnorm_7/AssignMovingAvg_1/ReadVariableOp,batchnorm_7/AssignMovingAvg_1/ReadVariableOp2L
$batchnorm_7/batchnorm/ReadVariableOp$batchnorm_7/batchnorm/ReadVariableOp2T
(batchnorm_7/batchnorm/mul/ReadVariableOp(batchnorm_7/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?~
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_71781

inputs(
conv2d_6_71669:@
conv2d_6_71671:@%
module_wrapper_11_71674:@%
module_wrapper_11_71676:@%
module_wrapper_11_71678:@%
module_wrapper_11_71680:@(
conv2d_7_71683:@@
conv2d_7_71685:@%
module_wrapper_12_71688:@%
module_wrapper_12_71690:@%
module_wrapper_12_71692:@%
module_wrapper_12_71694:@)
conv2d_8_71699:@?
conv2d_8_71701:	?&
module_wrapper_14_71704:	?&
module_wrapper_14_71706:	?&
module_wrapper_14_71708:	?&
module_wrapper_14_71710:	?*
conv2d_9_71713:??
conv2d_9_71715:	?&
module_wrapper_15_71718:	?&
module_wrapper_15_71720:	?&
module_wrapper_15_71722:	?&
module_wrapper_15_71724:	?+
conv2d_10_71729:??
conv2d_10_71731:	?&
module_wrapper_17_71734:	?&
module_wrapper_17_71736:	?&
module_wrapper_17_71738:	?&
module_wrapper_17_71740:	?+
conv2d_11_71743:??
conv2d_11_71745:	?&
module_wrapper_18_71748:	?&
module_wrapper_18_71750:	?&
module_wrapper_18_71752:	?&
module_wrapper_18_71754:	?!
dense_2_71760:
?H?
dense_2_71762:	?&
module_wrapper_20_71765:	?&
module_wrapper_20_71767:	?&
module_wrapper_20_71769:	?&
module_wrapper_20_71771:	? 
dense_3_71775:	?
dense_3_71777:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_6/StatefulPartitionedCall? conv2d_7/StatefulPartitionedCall? conv2d_8/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?)module_wrapper_11/StatefulPartitionedCall?)module_wrapper_12/StatefulPartitionedCall?)module_wrapper_13/StatefulPartitionedCall?)module_wrapper_14/StatefulPartitionedCall?)module_wrapper_15/StatefulPartitionedCall?)module_wrapper_16/StatefulPartitionedCall?)module_wrapper_17/StatefulPartitionedCall?)module_wrapper_18/StatefulPartitionedCall?)module_wrapper_19/StatefulPartitionedCall?)module_wrapper_20/StatefulPartitionedCall?)module_wrapper_21/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6_71669conv2d_6_71671*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_706082"
 conv2d_6/StatefulPartitionedCall?
)module_wrapper_11/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0module_wrapper_11_71674module_wrapper_11_71676module_wrapper_11_71678module_wrapper_11_71680*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_715502+
)module_wrapper_11/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_11/StatefulPartitionedCall:output:0conv2d_7_71683conv2d_7_71685*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_706532"
 conv2d_7/StatefulPartitionedCall?
)module_wrapper_12/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0module_wrapper_12_71688module_wrapper_12_71690module_wrapper_12_71692module_wrapper_12_71694*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????00@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_714952+
)module_wrapper_12/StatefulPartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall2module_wrapper_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_705602!
max_pooling2d_3/PartitionedCall?
)module_wrapper_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_714582+
)module_wrapper_13/StatefulPartitionedCall?
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_13/StatefulPartitionedCall:output:0conv2d_8_71699conv2d_8_71701*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_707062"
 conv2d_8/StatefulPartitionedCall?
)module_wrapper_14/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0module_wrapper_14_71704module_wrapper_14_71706module_wrapper_14_71708module_wrapper_14_71710*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_714172+
)module_wrapper_14/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_14/StatefulPartitionedCall:output:0conv2d_9_71713conv2d_9_71715*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_707512"
 conv2d_9/StatefulPartitionedCall?
)module_wrapper_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0module_wrapper_15_71718module_wrapper_15_71720module_wrapper_15_71722module_wrapper_15_71724*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_713622+
)module_wrapper_15/StatefulPartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall2module_wrapper_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_705722!
max_pooling2d_4/PartitionedCall?
)module_wrapper_16/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*^module_wrapper_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_713252+
)module_wrapper_16/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_16/StatefulPartitionedCall:output:0conv2d_10_71729conv2d_10_71731*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_708042#
!conv2d_10/StatefulPartitionedCall?
)module_wrapper_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0module_wrapper_17_71734module_wrapper_17_71736module_wrapper_17_71738module_wrapper_17_71740*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_712842+
)module_wrapper_17/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_17/StatefulPartitionedCall:output:0conv2d_11_71743conv2d_11_71745*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_708492#
!conv2d_11/StatefulPartitionedCall?
)module_wrapper_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0module_wrapper_18_71748module_wrapper_18_71750module_wrapper_18_71752module_wrapper_18_71754*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_712292+
)module_wrapper_18/StatefulPartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall2module_wrapper_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_705842!
max_pooling2d_5/PartitionedCall?
)module_wrapper_19/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*^module_wrapper_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_711922+
)module_wrapper_19/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall2module_wrapper_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_708972
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_71760dense_2_71762*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_709102!
dense_2/StatefulPartitionedCall?
)module_wrapper_20/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0module_wrapper_20_71765module_wrapper_20_71767module_wrapper_20_71769module_wrapper_20_71771*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_711452+
)module_wrapper_20/StatefulPartitionedCall?
)module_wrapper_21/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_20/StatefulPartitionedCall:output:0*^module_wrapper_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_710922+
)module_wrapper_21/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall2module_wrapper_21/StatefulPartitionedCall:output:0dense_3_71775dense_3_71777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_709642!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*^module_wrapper_11/StatefulPartitionedCall*^module_wrapper_12/StatefulPartitionedCall*^module_wrapper_13/StatefulPartitionedCall*^module_wrapper_14/StatefulPartitionedCall*^module_wrapper_15/StatefulPartitionedCall*^module_wrapper_16/StatefulPartitionedCall*^module_wrapper_17/StatefulPartitionedCall*^module_wrapper_18/StatefulPartitionedCall*^module_wrapper_19/StatefulPartitionedCall*^module_wrapper_20/StatefulPartitionedCall*^module_wrapper_21/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2V
)module_wrapper_11/StatefulPartitionedCall)module_wrapper_11/StatefulPartitionedCall2V
)module_wrapper_12/StatefulPartitionedCall)module_wrapper_12/StatefulPartitionedCall2V
)module_wrapper_13/StatefulPartitionedCall)module_wrapper_13/StatefulPartitionedCall2V
)module_wrapper_14/StatefulPartitionedCall)module_wrapper_14/StatefulPartitionedCall2V
)module_wrapper_15/StatefulPartitionedCall)module_wrapper_15/StatefulPartitionedCall2V
)module_wrapper_16/StatefulPartitionedCall)module_wrapper_16/StatefulPartitionedCall2V
)module_wrapper_17/StatefulPartitionedCall)module_wrapper_17/StatefulPartitionedCall2V
)module_wrapper_18/StatefulPartitionedCall)module_wrapper_18/StatefulPartitionedCall2V
)module_wrapper_19/StatefulPartitionedCall)module_wrapper_19/StatefulPartitionedCall2V
)module_wrapper_20/StatefulPartitionedCall)module_wrapper_20/StatefulPartitionedCall2V
)module_wrapper_21/StatefulPartitionedCall)module_wrapper_21/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_18_layer_call_fn_74326

args_0
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_712292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_74733

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_6_layer_call_and_return_conditional_losses_73791

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????00@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????00@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????00@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
conv2d_6_input?
 serving_default_conv2d_6_input:0?????????00;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?H
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer-21
layer_with_weights-14
layer-22
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?A
_tf_keras_sequential?A{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_6_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 48, 48, 1]}, "float32", "conv2d_6_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 31}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0002500000118743628, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 48, 48, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 1]}}
?
$_module
%regularization_losses
&	variables
'trainable_variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?


)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
?
/_module
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 33}}
?
8_module
9regularization_losses
:	variables
;trainable_variables
<	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?


=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 64]}}
?
C_module
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?


Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
?
N_module
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 36}}
?
W_module
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?


\kernel
]bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 128]}}
?
b_module
cregularization_losses
d	variables
etrainable_variables
f	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?


gkernel
hbias
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 256]}}
?
m_module
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?
v_module
wregularization_losses
x	variables
ytrainable_variables
z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_19", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
{regularization_losses
|	variables
}trainable_variables
~	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 40}}
?

kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9216}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9216]}}
?
?_module
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?_module
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_21", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 7, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?)m?*m?=m?>m?Hm?Im?\m?]m?gm?hm?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?v?v?)v?*v?=v?>v?Hv?Iv?\v?]v?gv?hv?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
 "
trackable_list_wrapper
?
0
1
?2
?3
?4
?5
)6
*7
?8
?9
?10
?11
=12
>13
?14
?15
?16
?17
H18
I19
?20
?21
?22
?23
\24
]25
?26
?27
?28
?29
g30
h31
?32
?33
?34
?35
36
?37
?38
?39
?40
?41
?42
?43"
trackable_list_wrapper
?
0
1
?2
?3
)4
*5
?6
?7
=8
>9
?10
?11
H12
I13
?14
?15
\16
]17
?18
?19
g20
h21
?22
?23
24
?25
?26
?27
?28
?29"
trackable_list_wrapper
?
?layers
regularization_losses
	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?non_trainable_variables
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
):'@2conv2d_6/kernel
:@2conv2d_6/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?layers
 regularization_losses
!	variables
?layer_metrics
?metrics
?non_trainable_variables
"trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
%regularization_losses
&	variables
?layer_metrics
?metrics
?non_trainable_variables
'trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_7/kernel
:@2conv2d_7/bias
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
?layers
+regularization_losses
,	variables
?layer_metrics
?metrics
?non_trainable_variables
-trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 64]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
0regularization_losses
1	variables
?layer_metrics
?metrics
?non_trainable_variables
2trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
4regularization_losses
5	variables
?layer_metrics
?metrics
?non_trainable_variables
6trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
9regularization_losses
:	variables
?layer_metrics
?metrics
?non_trainable_variables
;trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@?2conv2d_8/kernel
:?2conv2d_8/bias
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
?
?layers
?regularization_losses
@	variables
?layer_metrics
?metrics
?non_trainable_variables
Atrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
Dregularization_losses
E	variables
?layer_metrics
?metrics
?non_trainable_variables
Ftrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_9/kernel
:?2conv2d_9/bias
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
?layers
Jregularization_losses
K	variables
?layer_metrics
?metrics
?non_trainable_variables
Ltrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 24, 128]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
Oregularization_losses
P	variables
?layer_metrics
?metrics
?non_trainable_variables
Qtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
Sregularization_losses
T	variables
?layer_metrics
?metrics
?non_trainable_variables
Utrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
Xregularization_losses
Y	variables
?layer_metrics
?metrics
?non_trainable_variables
Ztrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_10/kernel
:?2conv2d_10/bias
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
?
?layers
^regularization_losses
_	variables
?layer_metrics
?metrics
?non_trainable_variables
`trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 256]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
cregularization_losses
d	variables
?layer_metrics
?metrics
?non_trainable_variables
etrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_11/kernel
:?2conv2d_11/bias
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
?
?layers
iregularization_losses
j	variables
?layer_metrics
?metrics
?non_trainable_variables
ktrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 256]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
nregularization_losses
o	variables
?layer_metrics
?metrics
?non_trainable_variables
ptrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
rregularization_losses
s	variables
?layer_metrics
?metrics
?non_trainable_variables
ttrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
wregularization_losses
x	variables
?layer_metrics
?metrics
?non_trainable_variables
ytrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
{regularization_losses
|	variables
?layer_metrics
?metrics
?non_trainable_variables
}trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
?H?2dense_2/kernel
:?2dense_2/bias
 "
trackable_list_wrapper
/
0
?1"
trackable_list_wrapper
/
0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batchnorm_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batchnorm_7", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
1:/@2#module_wrapper_11/batchnorm_1/gamma
0:.@2"module_wrapper_11/batchnorm_1/beta
9:7@ (2)module_wrapper_11/batchnorm_1/moving_mean
=:;@ (2-module_wrapper_11/batchnorm_1/moving_variance
1:/@2#module_wrapper_12/batchnorm_2/gamma
0:.@2"module_wrapper_12/batchnorm_2/beta
9:7@ (2)module_wrapper_12/batchnorm_2/moving_mean
=:;@ (2-module_wrapper_12/batchnorm_2/moving_variance
2:0?2#module_wrapper_14/batchnorm_3/gamma
1:/?2"module_wrapper_14/batchnorm_3/beta
::8? (2)module_wrapper_14/batchnorm_3/moving_mean
>:<? (2-module_wrapper_14/batchnorm_3/moving_variance
2:0?2#module_wrapper_15/batchnorm_4/gamma
1:/?2"module_wrapper_15/batchnorm_4/beta
::8? (2)module_wrapper_15/batchnorm_4/moving_mean
>:<? (2-module_wrapper_15/batchnorm_4/moving_variance
2:0?2#module_wrapper_17/batchnorm_5/gamma
1:/?2"module_wrapper_17/batchnorm_5/beta
::8? (2)module_wrapper_17/batchnorm_5/moving_mean
>:<? (2-module_wrapper_17/batchnorm_5/moving_variance
2:0?2#module_wrapper_18/batchnorm_6/gamma
1:/?2"module_wrapper_18/batchnorm_6/beta
::8? (2)module_wrapper_18/batchnorm_6/moving_mean
>:<? (2-module_wrapper_18/batchnorm_6/moving_variance
2:0?2#module_wrapper_20/batchnorm_7/gamma
1:/?2"module_wrapper_20/batchnorm_7/beta
::8? (2)module_wrapper_20/batchnorm_7/moving_mean
>:<? (2-module_wrapper_20/batchnorm_7/moving_variance
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13"
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
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?regularization_losses
?	variables
?layer_metrics
?metrics
?non_trainable_variables
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 43}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 31}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
0
?0
?1"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,@2Adam/conv2d_6/kernel/m
 :@2Adam/conv2d_6/bias/m
.:,@@2Adam/conv2d_7/kernel/m
 :@2Adam/conv2d_7/bias/m
/:-@?2Adam/conv2d_8/kernel/m
!:?2Adam/conv2d_8/bias/m
0:.??2Adam/conv2d_9/kernel/m
!:?2Adam/conv2d_9/bias/m
1:/??2Adam/conv2d_10/kernel/m
": ?2Adam/conv2d_10/bias/m
1:/??2Adam/conv2d_11/kernel/m
": ?2Adam/conv2d_11/bias/m
':%
?H?2Adam/dense_2/kernel/m
 :?2Adam/dense_2/bias/m
&:$	?2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
6:4@2*Adam/module_wrapper_11/batchnorm_1/gamma/m
5:3@2)Adam/module_wrapper_11/batchnorm_1/beta/m
6:4@2*Adam/module_wrapper_12/batchnorm_2/gamma/m
5:3@2)Adam/module_wrapper_12/batchnorm_2/beta/m
7:5?2*Adam/module_wrapper_14/batchnorm_3/gamma/m
6:4?2)Adam/module_wrapper_14/batchnorm_3/beta/m
7:5?2*Adam/module_wrapper_15/batchnorm_4/gamma/m
6:4?2)Adam/module_wrapper_15/batchnorm_4/beta/m
7:5?2*Adam/module_wrapper_17/batchnorm_5/gamma/m
6:4?2)Adam/module_wrapper_17/batchnorm_5/beta/m
7:5?2*Adam/module_wrapper_18/batchnorm_6/gamma/m
6:4?2)Adam/module_wrapper_18/batchnorm_6/beta/m
7:5?2*Adam/module_wrapper_20/batchnorm_7/gamma/m
6:4?2)Adam/module_wrapper_20/batchnorm_7/beta/m
.:,@2Adam/conv2d_6/kernel/v
 :@2Adam/conv2d_6/bias/v
.:,@@2Adam/conv2d_7/kernel/v
 :@2Adam/conv2d_7/bias/v
/:-@?2Adam/conv2d_8/kernel/v
!:?2Adam/conv2d_8/bias/v
0:.??2Adam/conv2d_9/kernel/v
!:?2Adam/conv2d_9/bias/v
1:/??2Adam/conv2d_10/kernel/v
": ?2Adam/conv2d_10/bias/v
1:/??2Adam/conv2d_11/kernel/v
": ?2Adam/conv2d_11/bias/v
':%
?H?2Adam/dense_2/kernel/v
 :?2Adam/dense_2/bias/v
&:$	?2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
6:4@2*Adam/module_wrapper_11/batchnorm_1/gamma/v
5:3@2)Adam/module_wrapper_11/batchnorm_1/beta/v
6:4@2*Adam/module_wrapper_12/batchnorm_2/gamma/v
5:3@2)Adam/module_wrapper_12/batchnorm_2/beta/v
7:5?2*Adam/module_wrapper_14/batchnorm_3/gamma/v
6:4?2)Adam/module_wrapper_14/batchnorm_3/beta/v
7:5?2*Adam/module_wrapper_15/batchnorm_4/gamma/v
6:4?2)Adam/module_wrapper_15/batchnorm_4/beta/v
7:5?2*Adam/module_wrapper_17/batchnorm_5/gamma/v
6:4?2)Adam/module_wrapper_17/batchnorm_5/beta/v
7:5?2*Adam/module_wrapper_18/batchnorm_6/gamma/v
6:4?2)Adam/module_wrapper_18/batchnorm_6/beta/v
7:5?2*Adam/module_wrapper_20/batchnorm_7/gamma/v
6:4?2)Adam/module_wrapper_20/batchnorm_7/beta/v
?2?
G__inference_sequential_1_layer_call_and_return_conditional_losses_73383
G__inference_sequential_1_layer_call_and_return_conditional_losses_73594
G__inference_sequential_1_layer_call_and_return_conditional_losses_72080
G__inference_sequential_1_layer_call_and_return_conditional_losses_72195?
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
?2?
 __inference__wrapped_model_70554?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *5?2
0?-
conv2d_6_input?????????00
?2?
,__inference_sequential_1_layer_call_fn_71062
,__inference_sequential_1_layer_call_fn_73687
,__inference_sequential_1_layer_call_fn_73780
,__inference_sequential_1_layer_call_fn_71965?
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
?2?
C__inference_conv2d_6_layer_call_and_return_conditional_losses_73791?
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
?2?
(__inference_conv2d_6_layer_call_fn_73800?
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
?2?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_73818
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_73836?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_11_layer_call_fn_73849
1__inference_module_wrapper_11_layer_call_fn_73862?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
C__inference_conv2d_7_layer_call_and_return_conditional_losses_73873?
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
?2?
(__inference_conv2d_7_layer_call_fn_73882?
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
?2?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_73900
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_73918?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_12_layer_call_fn_73931
1__inference_module_wrapper_12_layer_call_fn_73944?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_70560?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
/__inference_max_pooling2d_3_layer_call_fn_70566?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_73949
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_73961?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_13_layer_call_fn_73966
1__inference_module_wrapper_13_layer_call_fn_73971?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
C__inference_conv2d_8_layer_call_and_return_conditional_losses_73982?
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
?2?
(__inference_conv2d_8_layer_call_fn_73991?
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
?2?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_74009
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_74027?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_14_layer_call_fn_74040
1__inference_module_wrapper_14_layer_call_fn_74053?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
C__inference_conv2d_9_layer_call_and_return_conditional_losses_74064?
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
?2?
(__inference_conv2d_9_layer_call_fn_74073?
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
?2?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_74091
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_74109?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_15_layer_call_fn_74122
1__inference_module_wrapper_15_layer_call_fn_74135?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_70572?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
/__inference_max_pooling2d_4_layer_call_fn_70578?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_74140
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_74152?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_16_layer_call_fn_74157
1__inference_module_wrapper_16_layer_call_fn_74162?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
D__inference_conv2d_10_layer_call_and_return_conditional_losses_74173?
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
?2?
)__inference_conv2d_10_layer_call_fn_74182?
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
?2?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_74200
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_74218?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_17_layer_call_fn_74231
1__inference_module_wrapper_17_layer_call_fn_74244?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_74255?
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
?2?
)__inference_conv2d_11_layer_call_fn_74264?
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
?2?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_74282
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_74300?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_18_layer_call_fn_74313
1__inference_module_wrapper_18_layer_call_fn_74326?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_70584?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
/__inference_max_pooling2d_5_layer_call_fn_70590?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_74331
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_74343?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_19_layer_call_fn_74348
1__inference_module_wrapper_19_layer_call_fn_74353?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
D__inference_flatten_1_layer_call_and_return_conditional_losses_74359?
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
?2?
)__inference_flatten_1_layer_call_fn_74364?
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
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_74375?
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
?2?
'__inference_dense_2_layer_call_fn_74384?
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
?2?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_74404
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_74438?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_20_layer_call_fn_74451
1__inference_module_wrapper_20_layer_call_fn_74464?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_74469
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_74481?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_21_layer_call_fn_74486
1__inference_module_wrapper_21_layer_call_fn_74491?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
B__inference_dense_3_layer_call_and_return_conditional_losses_74502?
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
?2?
'__inference_dense_3_layer_call_fn_74511?
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
#__inference_signature_wrapper_72296conv2d_6_input"?
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
?2?
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_74529
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_74547?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_1_layer_call_fn_74560
+__inference_batchnorm_1_layer_call_fn_74573?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_74591
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_74609?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_2_layer_call_fn_74622
+__inference_batchnorm_2_layer_call_fn_74635?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_74653
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_74671?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_3_layer_call_fn_74684
+__inference_batchnorm_3_layer_call_fn_74697?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_74715
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_74733?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_4_layer_call_fn_74746
+__inference_batchnorm_4_layer_call_fn_74759?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_74777
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_74795?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_5_layer_call_fn_74808
+__inference_batchnorm_5_layer_call_fn_74821?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_74839
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_74857?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_6_layer_call_fn_74870
+__inference_batchnorm_6_layer_call_fn_74883?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_74903
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_74937?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_batchnorm_7_layer_call_fn_74950
+__inference_batchnorm_7_layer_call_fn_74963?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_70554?K????)*????=>????HI????\]????gh?????????????<
5?2
0?-
conv2d_6_input?????????00
? "1?.
,
dense_3!?
dense_3??????????
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_74529?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
F__inference_batchnorm_1_layer_call_and_return_conditional_losses_74547?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_batchnorm_1_layer_call_fn_74560?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
+__inference_batchnorm_1_layer_call_fn_74573?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_74591?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
F__inference_batchnorm_2_layer_call_and_return_conditional_losses_74609?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_batchnorm_2_layer_call_fn_74622?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
+__inference_batchnorm_2_layer_call_fn_74635?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_74653?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
F__inference_batchnorm_3_layer_call_and_return_conditional_losses_74671?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_batchnorm_3_layer_call_fn_74684?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
+__inference_batchnorm_3_layer_call_fn_74697?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_74715?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
F__inference_batchnorm_4_layer_call_and_return_conditional_losses_74733?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_batchnorm_4_layer_call_fn_74746?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
+__inference_batchnorm_4_layer_call_fn_74759?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_74777?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
F__inference_batchnorm_5_layer_call_and_return_conditional_losses_74795?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_batchnorm_5_layer_call_fn_74808?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
+__inference_batchnorm_5_layer_call_fn_74821?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_74839?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
F__inference_batchnorm_6_layer_call_and_return_conditional_losses_74857?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_batchnorm_6_layer_call_fn_74870?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
+__inference_batchnorm_6_layer_call_fn_74883?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_74903h????4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_batchnorm_7_layer_call_and_return_conditional_losses_74937h????4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_batchnorm_7_layer_call_fn_74950[????4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_batchnorm_7_layer_call_fn_74963[????4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_conv2d_10_layer_call_and_return_conditional_losses_74173n\]8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_10_layer_call_fn_74182a\]8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_11_layer_call_and_return_conditional_losses_74255ngh8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_11_layer_call_fn_74264agh8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_conv2d_6_layer_call_and_return_conditional_losses_73791l7?4
-?*
(?%
inputs?????????00
? "-?*
#? 
0?????????00@
? ?
(__inference_conv2d_6_layer_call_fn_73800_7?4
-?*
(?%
inputs?????????00
? " ??????????00@?
C__inference_conv2d_7_layer_call_and_return_conditional_losses_73873l)*7?4
-?*
(?%
inputs?????????00@
? "-?*
#? 
0?????????00@
? ?
(__inference_conv2d_7_layer_call_fn_73882_)*7?4
-?*
(?%
inputs?????????00@
? " ??????????00@?
C__inference_conv2d_8_layer_call_and_return_conditional_losses_73982m=>7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
(__inference_conv2d_8_layer_call_fn_73991`=>7?4
-?*
(?%
inputs?????????@
? "!????????????
C__inference_conv2d_9_layer_call_and_return_conditional_losses_74064nHI8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
(__inference_conv2d_9_layer_call_fn_74073aHI8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_dense_2_layer_call_and_return_conditional_losses_74375_?0?-
&?#
!?
inputs??????????H
? "&?#
?
0??????????
? }
'__inference_dense_2_layer_call_fn_74384R?0?-
&?#
!?
inputs??????????H
? "????????????
B__inference_dense_3_layer_call_and_return_conditional_losses_74502_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
'__inference_dense_3_layer_call_fn_74511R??0?-
&?#
!?
inputs??????????
? "???????????
D__inference_flatten_1_layer_call_and_return_conditional_losses_74359b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????H
? ?
)__inference_flatten_1_layer_call_fn_74364U8?5
.?+
)?&
inputs??????????
? "???????????H?
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_70560?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_3_layer_call_fn_70566?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_70572?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_4_layer_call_fn_70578?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_70584?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_5_layer_call_fn_70590?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_73818?????G?D
-?*
(?%
args_0?????????00@
?

trainingp "-?*
#? 
0?????????00@
? ?
L__inference_module_wrapper_11_layer_call_and_return_conditional_losses_73836?????G?D
-?*
(?%
args_0?????????00@
?

trainingp"-?*
#? 
0?????????00@
? ?
1__inference_module_wrapper_11_layer_call_fn_73849u????G?D
-?*
(?%
args_0?????????00@
?

trainingp " ??????????00@?
1__inference_module_wrapper_11_layer_call_fn_73862u????G?D
-?*
(?%
args_0?????????00@
?

trainingp" ??????????00@?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_73900?????G?D
-?*
(?%
args_0?????????00@
?

trainingp "-?*
#? 
0?????????00@
? ?
L__inference_module_wrapper_12_layer_call_and_return_conditional_losses_73918?????G?D
-?*
(?%
args_0?????????00@
?

trainingp"-?*
#? 
0?????????00@
? ?
1__inference_module_wrapper_12_layer_call_fn_73931u????G?D
-?*
(?%
args_0?????????00@
?

trainingp " ??????????00@?
1__inference_module_wrapper_12_layer_call_fn_73944u????G?D
-?*
(?%
args_0?????????00@
?

trainingp" ??????????00@?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_73949xG?D
-?*
(?%
args_0?????????@
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_13_layer_call_and_return_conditional_losses_73961xG?D
-?*
(?%
args_0?????????@
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_13_layer_call_fn_73966kG?D
-?*
(?%
args_0?????????@
?

trainingp " ??????????@?
1__inference_module_wrapper_13_layer_call_fn_73971kG?D
-?*
(?%
args_0?????????@
?

trainingp" ??????????@?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_74009?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_14_layer_call_and_return_conditional_losses_74027?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_14_layer_call_fn_74040w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_14_layer_call_fn_74053w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_74091?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_15_layer_call_and_return_conditional_losses_74109?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_15_layer_call_fn_74122w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_15_layer_call_fn_74135w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_74140zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_16_layer_call_and_return_conditional_losses_74152zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_16_layer_call_fn_74157mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_16_layer_call_fn_74162mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_74200?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_17_layer_call_and_return_conditional_losses_74218?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_17_layer_call_fn_74231w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_17_layer_call_fn_74244w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_74282?????H?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_18_layer_call_and_return_conditional_losses_74300?????H?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_18_layer_call_fn_74313w????H?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_18_layer_call_fn_74326w????H?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_74331zH?E
.?+
)?&
args_0??????????
?

trainingp ".?+
$?!
0??????????
? ?
L__inference_module_wrapper_19_layer_call_and_return_conditional_losses_74343zH?E
.?+
)?&
args_0??????????
?

trainingp".?+
$?!
0??????????
? ?
1__inference_module_wrapper_19_layer_call_fn_74348mH?E
.?+
)?&
args_0??????????
?

trainingp "!????????????
1__inference_module_wrapper_19_layer_call_fn_74353mH?E
.?+
)?&
args_0??????????
?

trainingp"!????????????
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_74404t????@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_20_layer_call_and_return_conditional_losses_74438t????@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_20_layer_call_fn_74451g????@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_20_layer_call_fn_74464g????@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_74469j@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_21_layer_call_and_return_conditional_losses_74481j@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_21_layer_call_fn_74486]@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_21_layer_call_fn_74491]@?=
&?#
!?
args_0??????????
?

trainingp"????????????
G__inference_sequential_1_layer_call_and_return_conditional_losses_72080?K????)*????=>????HI????\]????gh???????????G?D
=?:
0?-
conv2d_6_input?????????00
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_72195?K????)*????=>????HI????\]????gh???????????G?D
=?:
0?-
conv2d_6_input?????????00
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_73383?K????)*????=>????HI????\]????gh?????????????<
5?2
(?%
inputs?????????00
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_1_layer_call_and_return_conditional_losses_73594?K????)*????=>????HI????\]????gh?????????????<
5?2
(?%
inputs?????????00
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_1_layer_call_fn_71062?K????)*????=>????HI????\]????gh???????????G?D
=?:
0?-
conv2d_6_input?????????00
p 

 
? "???????????
,__inference_sequential_1_layer_call_fn_71965?K????)*????=>????HI????\]????gh???????????G?D
=?:
0?-
conv2d_6_input?????????00
p

 
? "???????????
,__inference_sequential_1_layer_call_fn_73687?K????)*????=>????HI????\]????gh?????????????<
5?2
(?%
inputs?????????00
p 

 
? "???????????
,__inference_sequential_1_layer_call_fn_73780?K????)*????=>????HI????\]????gh?????????????<
5?2
(?%
inputs?????????00
p

 
? "???????????
#__inference_signature_wrapper_72296?K????)*????=>????HI????\]????gh???????????Q?N
? 
G?D
B
conv2d_6_input0?-
conv2d_6_input?????????00"1?.
,
dense_3!?
dense_3?????????