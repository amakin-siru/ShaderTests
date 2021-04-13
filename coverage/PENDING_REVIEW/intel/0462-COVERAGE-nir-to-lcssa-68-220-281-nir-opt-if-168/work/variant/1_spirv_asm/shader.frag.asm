; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 85
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %66
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "func("
               OpName %11 "_GLF_global_loop_count"
               OpName %28 "buf0"
               OpMemberName %28 0 "_GLF_uniform_int_values"
               OpName %30 ""
               OpName %55 "a"
               OpName %66 "_GLF_color"
               OpDecorate %27 ArrayStride 16
               OpMemberDecorate %28 0 Offset 0
               OpDecorate %28 Block
               OpDecorate %30 DescriptorSet 0
               OpDecorate %30 Binding 0
               OpDecorate %66 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeInt 32 1
          %7 = OpTypeFunction %6
         %10 = OpTypePointer Private %6
         %11 = OpVariable %10 Private
         %12 = OpConstant %6 0
         %19 = OpConstant %6 100
         %20 = OpTypeBool
         %23 = OpConstant %6 1
         %25 = OpTypeInt 32 0
         %26 = OpConstant %25 3
         %27 = OpTypeArray %6 %26
         %28 = OpTypeStruct %27
         %29 = OpTypePointer Uniform %28
         %30 = OpVariable %29 Uniform
         %31 = OpTypePointer Uniform %6
         %35 = OpConstant %6 2
         %46 = OpConstantFalse %20
         %50 = OpConstantTrue %20
         %54 = OpTypePointer Function %6
         %63 = OpTypeFloat 32
         %64 = OpTypeVector %63 4
         %65 = OpTypePointer Output %64
         %66 = OpVariable %65 Output
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %55 = OpVariable %54 Function
               OpStore %11 %12
               OpBranch %40
         %40 = OpLabel
               OpLoopMerge %42 %43 None
               OpBranch %41
         %41 = OpLabel
         %44 = OpLoad %6 %11
         %45 = OpIAdd %6 %44 %23
               OpStore %11 %45
               OpSelectionMerge %48 None
               OpBranchConditional %46 %47 %48
         %47 = OpLabel
               OpReturn
         %48 = OpLabel
               OpBranch %43
         %43 = OpLabel
         %51 = OpLoad %6 %11
         %52 = OpSLessThan %20 %51 %19
         %53 = OpLogicalAnd %20 %50 %52
               OpBranchConditional %53 %40 %42
         %42 = OpLabel
         %56 = OpFunctionCall %6 %8
               OpStore %55 %56
         %57 = OpLoad %6 %55
         %58 = OpAccessChain %31 %30 %12 %35
         %59 = OpLoad %6 %58
         %60 = OpIEqual %20 %57 %59
               OpSelectionMerge %62 None
               OpBranchConditional %60 %61 %80
         %61 = OpLabel
         %67 = OpAccessChain %31 %30 %12 %12
         %68 = OpLoad %6 %67
         %69 = OpConvertSToF %63 %68
         %70 = OpAccessChain %31 %30 %12 %23
         %71 = OpLoad %6 %70
         %72 = OpConvertSToF %63 %71
         %73 = OpAccessChain %31 %30 %12 %23
         %74 = OpLoad %6 %73
         %75 = OpConvertSToF %63 %74
         %76 = OpAccessChain %31 %30 %12 %12
         %77 = OpLoad %6 %76
         %78 = OpConvertSToF %63 %77
         %79 = OpCompositeConstruct %64 %69 %72 %75 %78
               OpStore %66 %79
               OpBranch %62
         %80 = OpLabel
         %81 = OpAccessChain %31 %30 %12 %23
         %82 = OpLoad %6 %81
         %83 = OpConvertSToF %63 %82
         %84 = OpCompositeConstruct %64 %83 %83 %83 %83
               OpStore %66 %84
               OpBranch %62
         %62 = OpLabel
               OpReturn
               OpFunctionEnd
          %8 = OpFunction %6 None %7
          %9 = OpLabel
               OpBranch %13
         %13 = OpLabel
               OpLoopMerge %15 %16 None
               OpBranch %17
         %17 = OpLabel
         %18 = OpLoad %6 %11
         %21 = OpSLessThan %20 %18 %19
               OpBranchConditional %21 %14 %15
         %14 = OpLabel
         %22 = OpLoad %6 %11
         %24 = OpIAdd %6 %22 %23
               OpStore %11 %24
         %32 = OpAccessChain %31 %30 %12 %12
         %33 = OpLoad %6 %32
               OpReturnValue %33
         %16 = OpLabel
               OpBranch %13
         %15 = OpLabel
         %36 = OpAccessChain %31 %30 %12 %35
         %37 = OpLoad %6 %36
               OpReturnValue %37
               OpFunctionEnd
