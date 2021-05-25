; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 87
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %67
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "f"
               OpName %14 "arr"
               OpName %17 "buf1"
               OpMemberName %17 0 "_GLF_uniform_float_values"
               OpName %19 ""
               OpName %49 "buf0"
               OpMemberName %49 0 "_GLF_uniform_int_values"
               OpName %51 ""
               OpName %67 "_GLF_color"
               OpDecorate %16 ArrayStride 16
               OpMemberDecorate %17 0 Offset 0
               OpDecorate %17 Block
               OpDecorate %19 DescriptorSet 0
               OpDecorate %19 Binding 1
               OpDecorate %48 ArrayStride 16
               OpMemberDecorate %49 0 Offset 0
               OpDecorate %49 Block
               OpDecorate %51 DescriptorSet 0
               OpDecorate %51 Binding 0
               OpDecorate %67 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypePointer Function %6
          %9 = OpConstant %6 2
         %10 = OpTypeInt 32 0
         %11 = OpConstant %10 10
         %12 = OpTypeArray %6 %11
         %13 = OpTypePointer Function %12
         %15 = OpConstant %10 2
         %16 = OpTypeArray %6 %15
         %17 = OpTypeStruct %16
         %18 = OpTypePointer Uniform %17
         %19 = OpVariable %18 Uniform
         %20 = OpTypeInt 32 1
         %21 = OpConstant %20 0
         %22 = OpTypePointer Uniform %6
         %38 = OpConstant %20 1
         %47 = OpConstant %10 4
         %48 = OpTypeArray %20 %47
         %49 = OpTypeStruct %48
         %50 = OpTypePointer Uniform %49
         %51 = OpVariable %50 Uniform
         %52 = OpTypePointer Uniform %20
         %58 = OpConstant %20 3
         %61 = OpTypeBool
         %65 = OpTypeVector %6 4
         %66 = OpTypePointer Output %65
         %67 = OpVariable %66 Output
         %71 = OpConstant %20 2
          %4 = OpFunction %2 None %3
          %5 = OpLabel
          %8 = OpVariable %7 Function
         %14 = OpVariable %13 Function
               OpStore %8 %9
         %23 = OpAccessChain %22 %19 %21 %21
         %24 = OpLoad %6 %23
         %25 = OpAccessChain %22 %19 %21 %21
         %26 = OpLoad %6 %25
         %27 = OpAccessChain %22 %19 %21 %21
         %28 = OpLoad %6 %27
         %29 = OpAccessChain %22 %19 %21 %21
         %30 = OpLoad %6 %29
         %31 = OpAccessChain %22 %19 %21 %21
         %32 = OpLoad %6 %31
         %33 = OpAccessChain %22 %19 %21 %21
         %34 = OpLoad %6 %33
         %35 = OpAccessChain %22 %19 %21 %21
         %36 = OpLoad %6 %35
         %37 = OpLoad %6 %8
         %39 = OpAccessChain %22 %19 %21 %38
         %40 = OpLoad %6 %39
         %41 = OpExtInst %6 %1 Pow %37 %40
         %42 = OpAccessChain %22 %19 %21 %21
         %43 = OpLoad %6 %42
         %44 = OpAccessChain %22 %19 %21 %21
         %45 = OpLoad %6 %44
         %46 = OpCompositeConstruct %12 %24 %26 %28 %30 %32 %34 %36 %41 %43 %45
               OpStore %14 %46
         %53 = OpAccessChain %52 %51 %21 %21
         %54 = OpLoad %20 %53
         %55 = OpAccessChain %7 %14 %54
         %56 = OpLoad %6 %55
         %57 = OpConvertFToS %20 %56
         %59 = OpAccessChain %52 %51 %21 %58
         %60 = OpLoad %20 %59
         %62 = OpIEqual %61 %57 %60
               OpSelectionMerge %64 None
               OpBranchConditional %62 %63 %82
         %63 = OpLabel
         %68 = OpAccessChain %52 %51 %21 %38
         %69 = OpLoad %20 %68
         %70 = OpConvertSToF %6 %69
         %72 = OpAccessChain %52 %51 %21 %71
         %73 = OpLoad %20 %72
         %74 = OpConvertSToF %6 %73
         %75 = OpAccessChain %52 %51 %21 %71
         %76 = OpLoad %20 %75
         %77 = OpConvertSToF %6 %76
         %78 = OpAccessChain %52 %51 %21 %38
         %79 = OpLoad %20 %78
         %80 = OpConvertSToF %6 %79
         %81 = OpCompositeConstruct %65 %70 %74 %77 %80
               OpStore %67 %81
               OpBranch %64
         %82 = OpLabel
         %83 = OpAccessChain %52 %51 %21 %71
         %84 = OpLoad %20 %83
         %85 = OpConvertSToF %6 %84
         %86 = OpCompositeConstruct %65 %85 %85 %85 %85
               OpStore %67 %86
               OpBranch %64
         %64 = OpLabel
               OpReturn
               OpFunctionEnd
