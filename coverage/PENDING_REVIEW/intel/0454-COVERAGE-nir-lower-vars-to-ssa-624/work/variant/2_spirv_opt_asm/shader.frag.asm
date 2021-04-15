; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 105
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %89
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %10 "m32"
               OpName %14 "buf1"
               OpMemberName %14 0 "_GLF_uniform_float_values"
               OpName %16 ""
               OpName %33 "buf0"
               OpMemberName %33 0 "_GLF_uniform_int_values"
               OpName %35 ""
               OpName %53 "sums"
               OpName %89 "_GLF_color"
               OpDecorate %13 ArrayStride 16
               OpMemberDecorate %14 0 Offset 0
               OpDecorate %14 Block
               OpDecorate %16 DescriptorSet 0
               OpDecorate %16 Binding 1
               OpDecorate %32 ArrayStride 16
               OpMemberDecorate %33 0 Offset 0
               OpDecorate %33 Block
               OpDecorate %35 DescriptorSet 0
               OpDecorate %35 Binding 0
               OpDecorate %89 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypeVector %6 2
          %8 = OpTypeMatrix %7 3
          %9 = OpTypePointer Function %8
         %11 = OpTypeInt 32 0
         %12 = OpConstant %11 2
         %13 = OpTypeArray %6 %12
         %14 = OpTypeStruct %13
         %15 = OpTypePointer Uniform %14
         %16 = OpVariable %15 Uniform
         %17 = OpTypeInt 32 1
         %18 = OpConstant %17 0
         %19 = OpTypePointer Uniform %6
         %23 = OpConstant %6 0
         %30 = OpConstant %17 3
         %31 = OpConstant %11 3
         %32 = OpTypeArray %17 %31
         %33 = OpTypeStruct %32
         %34 = OpTypePointer Uniform %33
         %35 = OpVariable %34 Uniform
         %36 = OpTypePointer Uniform %17
         %39 = OpConstant %17 1
         %40 = OpTypeBool
         %49 = OpTypePointer Function %6
         %51 = OpTypeArray %6 %31
         %52 = OpTypePointer Function %51
         %70 = OpConstant %17 2
         %87 = OpTypeVector %6 4
         %88 = OpTypePointer Output %87
         %89 = OpVariable %88 Output
        %103 = OpConstantComposite %7 %23 %23
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %10 = OpVariable %9 Function
         %53 = OpVariable %52 Function
         %20 = OpAccessChain %19 %16 %18 %18
         %21 = OpLoad %6 %20
         %24 = OpCompositeConstruct %7 %21 %23
         %25 = OpCompositeConstruct %7 %23 %21
         %27 = OpCompositeConstruct %8 %24 %25 %103
               OpStore %10 %27
         %37 = OpAccessChain %36 %35 %18 %18
         %38 = OpLoad %17 %37
         %41 = OpIEqual %40 %38 %39
               OpSelectionMerge %43 None
               OpBranchConditional %41 %42 %43
         %42 = OpLabel
         %50 = OpAccessChain %49 %10 %30 %38
               OpStore %50 %21
               OpBranch %43
         %43 = OpLabel
         %60 = OpCompositeConstruct %51 %21 %21 %21
               OpStore %53 %60
               OpBranch %64
         %64 = OpLabel
        %104 = OpPhi %17 %38 %43 %86 %65
         %71 = OpAccessChain %36 %35 %18 %70
         %72 = OpLoad %17 %71
         %73 = OpSLessThan %40 %104 %72
               OpLoopMerge %66 %65 None
               OpBranchConditional %73 %65 %66
         %65 = OpLabel
         %79 = OpAccessChain %49 %10 %104 %38
         %80 = OpLoad %6 %79
         %81 = OpAccessChain %49 %53 %72
         %82 = OpLoad %6 %81
         %83 = OpFAdd %6 %82 %80
               OpStore %81 %83
         %86 = OpIAdd %17 %104 %39
               OpBranch %64
         %66 = OpLabel
         %92 = OpAccessChain %49 %53 %38
         %93 = OpLoad %6 %92
         %94 = OpAccessChain %19 %16 %18 %39
         %95 = OpLoad %6 %94
         %98 = OpAccessChain %36 %35 %18 %39
         %99 = OpLoad %17 %98
        %100 = OpAccessChain %49 %53 %99
        %101 = OpLoad %6 %100
        %102 = OpCompositeConstruct %87 %93 %95 %95 %101
               OpStore %89 %102
               OpReturn
               OpFunctionEnd
