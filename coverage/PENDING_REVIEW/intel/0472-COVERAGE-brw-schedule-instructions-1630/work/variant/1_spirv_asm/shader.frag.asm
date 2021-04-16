; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 193
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %185
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "_GLF_global_loop_count"
               OpName %14 "m"
               OpName %18 "buf1"
               OpMemberName %18 0 "_GLF_uniform_float_values"
               OpName %20 ""
               OpName %78 "v"
               OpName %89 "f"
               OpName %93 "a"
               OpName %96 "buf0"
               OpMemberName %96 0 "_GLF_uniform_int_values"
               OpName %98 ""
               OpName %120 "b"
               OpName %151 "buf2"
               OpMemberName %151 0 "one"
               OpName %153 ""
               OpName %172 "zero"
               OpName %185 "_GLF_color"
               OpDecorate %17 ArrayStride 16
               OpMemberDecorate %18 0 Offset 0
               OpDecorate %18 Block
               OpDecorate %20 DescriptorSet 0
               OpDecorate %20 Binding 1
               OpDecorate %95 ArrayStride 16
               OpMemberDecorate %96 0 Offset 0
               OpDecorate %96 Block
               OpDecorate %98 DescriptorSet 0
               OpDecorate %98 Binding 0
               OpMemberDecorate %151 0 Offset 0
               OpDecorate %151 Block
               OpDecorate %153 DescriptorSet 0
               OpDecorate %153 Binding 2
               OpDecorate %185 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeInt 32 1
          %7 = OpTypePointer Private %6
          %8 = OpVariable %7 Private
          %9 = OpConstant %6 0
         %10 = OpTypeFloat 32
         %11 = OpTypeVector %10 4
         %12 = OpTypeMatrix %11 4
         %13 = OpTypePointer Function %12
         %15 = OpTypeInt 32 0
         %16 = OpConstant %15 18
         %17 = OpTypeArray %10 %16
         %18 = OpTypeStruct %17
         %19 = OpTypePointer Uniform %18
         %20 = OpVariable %19 Uniform
         %21 = OpConstant %6 1
         %22 = OpTypePointer Uniform %10
         %25 = OpConstant %6 2
         %28 = OpConstant %6 3
         %31 = OpConstant %6 4
         %34 = OpConstant %6 5
         %37 = OpConstant %6 6
         %40 = OpConstant %6 7
         %43 = OpConstant %6 8
         %46 = OpConstant %6 9
         %49 = OpConstant %6 10
         %52 = OpConstant %6 11
         %55 = OpConstant %6 12
         %58 = OpConstant %6 13
         %61 = OpConstant %6 14
         %64 = OpConstant %6 15
         %67 = OpConstant %6 16
         %70 = OpConstant %10 1
         %71 = OpConstant %10 0
         %77 = OpTypePointer Function %11
         %88 = OpTypePointer Function %10
         %92 = OpTypePointer Function %6
         %94 = OpConstant %15 4
         %95 = OpTypeArray %6 %94
         %96 = OpTypeStruct %95
         %97 = OpTypePointer Uniform %96
         %98 = OpVariable %97 Uniform
         %99 = OpTypePointer Uniform %6
        %108 = OpTypeBool
        %151 = OpTypeStruct %6
        %152 = OpTypePointer Uniform %151
        %153 = OpVariable %152 Uniform
        %176 = OpConstant %6 17
        %184 = OpTypePointer Output %11
        %185 = OpVariable %184 Output
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %14 = OpVariable %13 Function
         %78 = OpVariable %77 Function
         %89 = OpVariable %88 Function
         %93 = OpVariable %92 Function
        %120 = OpVariable %92 Function
        %172 = OpVariable %88 Function
               OpStore %8 %9
         %23 = OpAccessChain %22 %20 %9 %21
         %24 = OpLoad %10 %23
         %26 = OpAccessChain %22 %20 %9 %25
         %27 = OpLoad %10 %26
         %29 = OpAccessChain %22 %20 %9 %28
         %30 = OpLoad %10 %29
         %32 = OpAccessChain %22 %20 %9 %31
         %33 = OpLoad %10 %32
         %35 = OpAccessChain %22 %20 %9 %34
         %36 = OpLoad %10 %35
         %38 = OpAccessChain %22 %20 %9 %37
         %39 = OpLoad %10 %38
         %41 = OpAccessChain %22 %20 %9 %40
         %42 = OpLoad %10 %41
         %44 = OpAccessChain %22 %20 %9 %43
         %45 = OpLoad %10 %44
         %47 = OpAccessChain %22 %20 %9 %46
         %48 = OpLoad %10 %47
         %50 = OpAccessChain %22 %20 %9 %49
         %51 = OpLoad %10 %50
         %53 = OpAccessChain %22 %20 %9 %52
         %54 = OpLoad %10 %53
         %56 = OpAccessChain %22 %20 %9 %55
         %57 = OpLoad %10 %56
         %59 = OpAccessChain %22 %20 %9 %58
         %60 = OpLoad %10 %59
         %62 = OpAccessChain %22 %20 %9 %61
         %63 = OpLoad %10 %62
         %65 = OpAccessChain %22 %20 %9 %64
         %66 = OpLoad %10 %65
         %68 = OpAccessChain %22 %20 %9 %67
         %69 = OpLoad %10 %68
         %72 = OpCompositeConstruct %11 %24 %27 %30 %33
         %73 = OpCompositeConstruct %11 %36 %39 %42 %45
         %74 = OpCompositeConstruct %11 %48 %51 %54 %57
         %75 = OpCompositeConstruct %11 %60 %63 %66 %69
         %76 = OpCompositeConstruct %12 %72 %73 %74 %75
               OpStore %14 %76
         %79 = OpAccessChain %22 %20 %9 %21
         %80 = OpLoad %10 %79
         %81 = OpAccessChain %22 %20 %9 %25
         %82 = OpLoad %10 %81
         %83 = OpAccessChain %22 %20 %9 %28
         %84 = OpLoad %10 %83
         %85 = OpAccessChain %22 %20 %9 %31
         %86 = OpLoad %10 %85
         %87 = OpCompositeConstruct %11 %80 %82 %84 %86
               OpStore %78 %87
         %90 = OpAccessChain %22 %20 %9 %21
         %91 = OpLoad %10 %90
               OpStore %89 %91
        %100 = OpAccessChain %99 %98 %9 %9
        %101 = OpLoad %6 %100
               OpStore %93 %101
               OpBranch %102
        %102 = OpLabel
               OpLoopMerge %104 %105 None
               OpBranch %106
        %106 = OpLabel
        %107 = OpLoad %6 %8
        %109 = OpSLessThan %108 %107 %49
               OpBranchConditional %109 %103 %104
        %103 = OpLabel
        %110 = OpLoad %6 %8
        %111 = OpIAdd %6 %110 %21
               OpStore %8 %111
        %112 = OpLoad %6 %93
        %113 = OpExtInst %6 %1 SClamp %112 %9 %28
        %114 = OpAccessChain %22 %20 %9 %21
        %115 = OpLoad %10 %114
        %116 = OpAccessChain %88 %78 %113
        %117 = OpLoad %10 %116
        %118 = OpFAdd %10 %117 %115
        %119 = OpAccessChain %88 %78 %113
               OpStore %119 %118
        %121 = OpAccessChain %99 %98 %9 %25
        %122 = OpLoad %6 %121
               OpStore %120 %122
               OpBranch %123
        %123 = OpLabel
               OpLoopMerge %125 %126 None
               OpBranch %127
        %127 = OpLabel
        %128 = OpLoad %6 %8
        %129 = OpSLessThan %108 %128 %49
               OpBranchConditional %129 %124 %125
        %124 = OpLabel
        %130 = OpLoad %6 %8
        %131 = OpIAdd %6 %130 %21
               OpStore %8 %131
        %132 = OpLoad %6 %120
        %133 = OpExtInst %6 %1 SClamp %132 %9 %28
        %134 = OpAccessChain %88 %78 %133
        %135 = OpLoad %10 %134
        %136 = OpLoad %6 %120
        %137 = OpExtInst %6 %1 SClamp %136 %9 %28
        %138 = OpLoad %6 %93
        %139 = OpAccessChain %88 %14 %137 %138
        %140 = OpLoad %10 %139
        %141 = OpFMul %10 %135 %140
        %142 = OpLoad %10 %89
        %143 = OpFAdd %10 %142 %141
               OpStore %89 %143
               OpBranch %126
        %126 = OpLabel
        %144 = OpLoad %6 %120
        %145 = OpISub %6 %144 %21
               OpStore %120 %145
               OpBranch %123
        %125 = OpLabel
        %146 = OpLoad %6 %93
        %147 = OpExtInst %6 %1 SClamp %146 %9 %28
        %148 = OpAccessChain %22 %20 %9 %21
        %149 = OpLoad %10 %148
        %150 = OpAccessChain %88 %14 %21 %147
               OpStore %150 %149
        %154 = OpAccessChain %99 %153 %9
        %155 = OpLoad %6 %154
        %156 = OpAccessChain %99 %98 %9 %9
        %157 = OpLoad %6 %156
        %158 = OpIEqual %108 %155 %157
               OpSelectionMerge %160 None
               OpBranchConditional %158 %159 %160
        %159 = OpLabel
               OpKill
        %160 = OpLabel
        %162 = OpAccessChain %99 %153 %9
        %163 = OpLoad %6 %162
        %164 = OpAccessChain %99 %98 %9 %21
        %165 = OpLoad %6 %164
        %166 = OpIEqual %108 %163 %165
               OpSelectionMerge %168 None
               OpBranchConditional %166 %167 %168
        %167 = OpLabel
               OpKill
        %168 = OpLabel
               OpBranch %105
        %105 = OpLabel
        %170 = OpLoad %6 %93
        %171 = OpIAdd %6 %170 %21
               OpStore %93 %171
               OpBranch %102
        %104 = OpLabel
        %173 = OpAccessChain %22 %20 %9 %9
        %174 = OpLoad %10 %173
               OpStore %172 %174
        %175 = OpLoad %10 %89
        %177 = OpAccessChain %22 %20 %9 %176
        %178 = OpLoad %10 %177
        %179 = OpFUnordNotEqual %108 %175 %178
               OpSelectionMerge %181 None
               OpBranchConditional %179 %180 %181
        %180 = OpLabel
        %182 = OpAccessChain %22 %20 %9 %21
        %183 = OpLoad %10 %182
               OpStore %172 %183
               OpBranch %181
        %181 = OpLabel
        %186 = OpLoad %10 %89
        %187 = OpLoad %10 %172
        %188 = OpAccessChain %99 %98 %9 %9
        %189 = OpLoad %6 %188
        %190 = OpConvertSToF %10 %189
        %191 = OpLoad %10 %89
        %192 = OpCompositeConstruct %11 %186 %187 %190 %191
               OpStore %185 %192
               OpReturn
               OpFunctionEnd
