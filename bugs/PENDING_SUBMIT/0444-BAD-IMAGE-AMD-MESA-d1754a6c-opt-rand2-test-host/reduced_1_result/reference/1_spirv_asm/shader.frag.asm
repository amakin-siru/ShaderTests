; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 442
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %12 %435
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %9 "pos"
               OpName %12 "gl_FragCoord"
               OpName %15 "buf0"
               OpMemberName %15 0 "resolution"
               OpName %17 ""
               OpName %26 "ipos"
               OpName %42 "i"
               OpName %55 "map"
               OpName %62 "p"
               OpName %65 "canwalk"
               OpName %67 "v"
               OpName %74 "directions"
               OpName %171 "j"
               OpName %208 "d"
               OpName %435 "_GLF_color"
               OpDecorate %12 BuiltIn FragCoord
               OpMemberDecorate %15 0 Offset 0
               OpDecorate %15 Block
               OpDecorate %17 DescriptorSet 0
               OpDecorate %17 Binding 0
               OpDecorate %435 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypeVector %6 2
          %8 = OpTypePointer Function %7
         %10 = OpTypeVector %6 4
         %11 = OpTypePointer Input %10
         %12 = OpVariable %11 Input
         %15 = OpTypeStruct %7
         %16 = OpTypePointer Uniform %15
         %17 = OpVariable %16 Uniform
         %18 = OpTypeInt 32 1
         %19 = OpConstant %18 0
         %20 = OpTypePointer Uniform %7
         %24 = OpTypeVector %18 2
         %25 = OpTypePointer Function %24
         %27 = OpTypeInt 32 0
         %28 = OpConstant %27 0
         %29 = OpTypePointer Function %6
         %32 = OpConstant %6 16
         %35 = OpConstant %27 1
         %41 = OpTypePointer Function %18
         %49 = OpConstant %18 256
         %50 = OpTypeBool
         %52 = OpConstant %27 256
         %53 = OpTypeArray %18 %52
         %54 = OpTypePointer Private %53
         %55 = OpVariable %54 Private
         %57 = OpTypePointer Private %18
         %60 = OpConstant %18 1
         %63 = OpConstantComposite %24 %19 %19
         %64 = OpTypePointer Function %50
         %66 = OpConstantTrue %50
         %82 = OpConstant %18 2
         %86 = OpConstant %18 16
        %119 = OpConstant %18 14
        %162 = OpConstantFalse %50
        %169 = OpConstant %18 8
        %434 = OpTypePointer Output %10
        %435 = OpVariable %434 Output
        %436 = OpConstant %6 1
        %437 = OpConstantComposite %10 %436 %436 %436 %436
        %440 = OpConstant %6 0
        %441 = OpConstantComposite %10 %440 %440 %440 %436
          %4 = OpFunction %2 None %3
          %5 = OpLabel
          %9 = OpVariable %8 Function
         %26 = OpVariable %25 Function
         %42 = OpVariable %41 Function
         %62 = OpVariable %25 Function
         %65 = OpVariable %64 Function
         %67 = OpVariable %41 Function
         %74 = OpVariable %41 Function
        %171 = OpVariable %41 Function
        %208 = OpVariable %41 Function
         %13 = OpLoad %10 %12
         %14 = OpVectorShuffle %7 %13 %13 0 1
         %21 = OpAccessChain %20 %17 %19
         %22 = OpLoad %7 %21
         %23 = OpFDiv %7 %14 %22
               OpStore %9 %23
         %30 = OpAccessChain %29 %9 %28
         %31 = OpLoad %6 %30
         %33 = OpFMul %6 %31 %32
         %34 = OpConvertFToS %18 %33
         %36 = OpAccessChain %29 %9 %35
         %37 = OpLoad %6 %36
         %38 = OpFMul %6 %37 %32
         %39 = OpConvertFToS %18 %38
         %40 = OpCompositeConstruct %24 %34 %39
               OpStore %26 %40
               OpStore %42 %19
               OpBranch %43
         %43 = OpLabel
               OpLoopMerge %45 %46 None
               OpBranch %47
         %47 = OpLabel
         %48 = OpLoad %18 %42
         %51 = OpSLessThan %50 %48 %49
               OpBranchConditional %51 %44 %45
         %44 = OpLabel
         %56 = OpLoad %18 %42
         %58 = OpAccessChain %57 %55 %56
               OpStore %58 %19
               OpBranch %46
         %46 = OpLabel
         %59 = OpLoad %18 %42
         %61 = OpIAdd %18 %59 %60
               OpStore %42 %61
               OpBranch %43
         %45 = OpLabel
               OpStore %62 %63
               OpStore %65 %66
               OpStore %67 %19
               OpBranch %68
         %68 = OpLabel
               OpLoopMerge %70 %71 None
               OpBranch %69
         %69 = OpLabel
         %72 = OpLoad %18 %67
         %73 = OpIAdd %18 %72 %60
               OpStore %67 %73
               OpStore %74 %19
         %75 = OpAccessChain %41 %62 %28
         %76 = OpLoad %18 %75
         %77 = OpSGreaterThan %50 %76 %19
               OpSelectionMerge %79 None
               OpBranchConditional %77 %78 %79
         %78 = OpLabel
         %80 = OpAccessChain %41 %62 %28
         %81 = OpLoad %18 %80
         %83 = OpISub %18 %81 %82
         %84 = OpAccessChain %41 %62 %35
         %85 = OpLoad %18 %84
         %87 = OpIMul %18 %85 %86
         %88 = OpIAdd %18 %83 %87
         %89 = OpAccessChain %57 %55 %88
         %90 = OpLoad %18 %89
         %91 = OpIEqual %50 %90 %19
               OpBranch %79
         %79 = OpLabel
         %92 = OpPhi %50 %77 %69 %91 %78
               OpSelectionMerge %94 None
               OpBranchConditional %92 %93 %94
         %93 = OpLabel
         %95 = OpLoad %18 %74
         %96 = OpIAdd %18 %95 %60
               OpStore %74 %96
               OpBranch %94
         %94 = OpLabel
         %97 = OpAccessChain %41 %62 %35
         %98 = OpLoad %18 %97
         %99 = OpSGreaterThan %50 %98 %19
               OpSelectionMerge %101 None
               OpBranchConditional %99 %100 %101
        %100 = OpLabel
        %102 = OpAccessChain %41 %62 %28
        %103 = OpLoad %18 %102
        %104 = OpAccessChain %41 %62 %35
        %105 = OpLoad %18 %104
        %106 = OpISub %18 %105 %82
        %107 = OpIMul %18 %106 %86
        %108 = OpIAdd %18 %103 %107
        %109 = OpAccessChain %57 %55 %108
        %110 = OpLoad %18 %109
        %111 = OpIEqual %50 %110 %19
               OpBranch %101
        %101 = OpLabel
        %112 = OpPhi %50 %99 %94 %111 %100
               OpSelectionMerge %114 None
               OpBranchConditional %112 %113 %114
        %113 = OpLabel
        %115 = OpLoad %18 %74
        %116 = OpIAdd %18 %115 %60
               OpStore %74 %116
               OpBranch %114
        %114 = OpLabel
        %117 = OpAccessChain %41 %62 %28
        %118 = OpLoad %18 %117
        %120 = OpSLessThan %50 %118 %119
               OpSelectionMerge %122 None
               OpBranchConditional %120 %121 %122
        %121 = OpLabel
        %123 = OpAccessChain %41 %62 %28
        %124 = OpLoad %18 %123
        %125 = OpIAdd %18 %124 %82
        %126 = OpAccessChain %41 %62 %35
        %127 = OpLoad %18 %126
        %128 = OpIMul %18 %127 %86
        %129 = OpIAdd %18 %125 %128
        %130 = OpAccessChain %57 %55 %129
        %131 = OpLoad %18 %130
        %132 = OpIEqual %50 %131 %19
               OpBranch %122
        %122 = OpLabel
        %133 = OpPhi %50 %120 %114 %132 %121
               OpSelectionMerge %135 None
               OpBranchConditional %133 %134 %135
        %134 = OpLabel
        %136 = OpLoad %18 %74
        %137 = OpIAdd %18 %136 %60
               OpStore %74 %137
               OpBranch %135
        %135 = OpLabel
        %138 = OpAccessChain %41 %62 %35
        %139 = OpLoad %18 %138
        %140 = OpSLessThan %50 %139 %119
               OpSelectionMerge %142 None
               OpBranchConditional %140 %141 %142
        %141 = OpLabel
        %143 = OpAccessChain %41 %62 %28
        %144 = OpLoad %18 %143
        %145 = OpAccessChain %41 %62 %35
        %146 = OpLoad %18 %145
        %147 = OpIAdd %18 %146 %82
        %148 = OpIMul %18 %147 %86
        %149 = OpIAdd %18 %144 %148
        %150 = OpAccessChain %57 %55 %149
        %151 = OpLoad %18 %150
        %152 = OpIEqual %50 %151 %19
               OpBranch %142
        %142 = OpLabel
        %153 = OpPhi %50 %140 %135 %152 %141
               OpSelectionMerge %155 None
               OpBranchConditional %153 %154 %155
        %154 = OpLabel
        %156 = OpLoad %18 %74
        %157 = OpIAdd %18 %156 %60
               OpStore %74 %157
               OpBranch %155
        %155 = OpLabel
        %158 = OpLoad %18 %74
        %159 = OpIEqual %50 %158 %19
               OpSelectionMerge %161 None
               OpBranchConditional %159 %160 %207
        %160 = OpLabel
               OpStore %65 %162
               OpStore %42 %19
               OpBranch %163
        %163 = OpLabel
               OpLoopMerge %165 %166 None
               OpBranch %167
        %167 = OpLabel
        %168 = OpLoad %18 %42
        %170 = OpSLessThan %50 %168 %169
               OpBranchConditional %170 %164 %165
        %164 = OpLabel
               OpStore %171 %19
               OpBranch %172
        %172 = OpLabel
               OpLoopMerge %174 %175 None
               OpBranch %176
        %176 = OpLabel
        %177 = OpLoad %18 %171
        %178 = OpSLessThan %50 %177 %169
               OpBranchConditional %178 %173 %174
        %173 = OpLabel
        %179 = OpLoad %18 %171
        %180 = OpIMul %18 %179 %82
        %181 = OpLoad %18 %42
        %182 = OpIMul %18 %181 %82
        %183 = OpIMul %18 %182 %86
        %184 = OpIAdd %18 %180 %183
        %185 = OpAccessChain %57 %55 %184
        %186 = OpLoad %18 %185
        %187 = OpIEqual %50 %186 %19
               OpSelectionMerge %189 None
               OpBranchConditional %187 %188 %189
        %188 = OpLabel
        %190 = OpLoad %18 %171
        %191 = OpIMul %18 %190 %82
        %192 = OpAccessChain %41 %62 %28
               OpStore %192 %191
        %193 = OpLoad %18 %42
        %194 = OpIMul %18 %193 %82
        %195 = OpAccessChain %41 %62 %35
               OpStore %195 %194
               OpStore %65 %66
               OpBranch %189
        %189 = OpLabel
               OpBranch %175
        %175 = OpLabel
        %196 = OpLoad %18 %171
        %197 = OpIAdd %18 %196 %60
               OpStore %171 %197
               OpBranch %172
        %174 = OpLabel
               OpBranch %166
        %166 = OpLabel
        %198 = OpLoad %18 %42
        %199 = OpIAdd %18 %198 %60
               OpStore %42 %199
               OpBranch %163
        %165 = OpLabel
        %200 = OpAccessChain %41 %62 %28
        %201 = OpLoad %18 %200
        %202 = OpAccessChain %41 %62 %35
        %203 = OpLoad %18 %202
        %204 = OpIMul %18 %203 %86
        %205 = OpIAdd %18 %201 %204
        %206 = OpAccessChain %57 %55 %205
               OpStore %206 %60
               OpBranch %161
        %207 = OpLabel
        %209 = OpLoad %18 %67
        %210 = OpLoad %18 %74
        %211 = OpSMod %18 %209 %210
               OpStore %208 %211
        %212 = OpLoad %18 %74
        %213 = OpLoad %18 %67
        %214 = OpIAdd %18 %213 %212
               OpStore %67 %214
        %215 = OpLoad %18 %208
        %216 = OpSGreaterThanEqual %50 %215 %19
               OpSelectionMerge %218 None
               OpBranchConditional %216 %217 %218
        %217 = OpLabel
        %219 = OpAccessChain %41 %62 %28
        %220 = OpLoad %18 %219
        %221 = OpSGreaterThan %50 %220 %19
               OpBranch %218
        %218 = OpLabel
        %222 = OpPhi %50 %216 %207 %221 %217
               OpSelectionMerge %224 None
               OpBranchConditional %222 %223 %224
        %223 = OpLabel
        %225 = OpAccessChain %41 %62 %28
        %226 = OpLoad %18 %225
        %227 = OpISub %18 %226 %82
        %228 = OpAccessChain %41 %62 %35
        %229 = OpLoad %18 %228
        %230 = OpIMul %18 %229 %86
        %231 = OpIAdd %18 %227 %230
        %232 = OpAccessChain %57 %55 %231
        %233 = OpLoad %18 %232
        %234 = OpIEqual %50 %233 %19
               OpBranch %224
        %224 = OpLabel
        %235 = OpPhi %50 %222 %218 %234 %223
               OpSelectionMerge %237 None
               OpBranchConditional %235 %236 %237
        %236 = OpLabel
        %238 = OpLoad %18 %208
        %239 = OpISub %18 %238 %60
               OpStore %208 %239
        %240 = OpAccessChain %41 %62 %28
        %241 = OpLoad %18 %240
        %242 = OpAccessChain %41 %62 %35
        %243 = OpLoad %18 %242
        %244 = OpIMul %18 %243 %86
        %245 = OpIAdd %18 %241 %244
        %246 = OpAccessChain %57 %55 %245
               OpStore %246 %60
        %247 = OpAccessChain %41 %62 %28
        %248 = OpLoad %18 %247
        %249 = OpISub %18 %248 %60
        %250 = OpAccessChain %41 %62 %35
        %251 = OpLoad %18 %250
        %252 = OpIMul %18 %251 %86
        %253 = OpIAdd %18 %249 %252
        %254 = OpAccessChain %57 %55 %253
               OpStore %254 %60
        %255 = OpAccessChain %41 %62 %28
        %256 = OpLoad %18 %255
        %257 = OpISub %18 %256 %82
        %258 = OpAccessChain %41 %62 %35
        %259 = OpLoad %18 %258
        %260 = OpIMul %18 %259 %86
        %261 = OpIAdd %18 %257 %260
        %262 = OpAccessChain %57 %55 %261
               OpStore %262 %60
        %263 = OpAccessChain %41 %62 %28
        %264 = OpLoad %18 %263
        %265 = OpISub %18 %264 %82
        %266 = OpAccessChain %41 %62 %28
               OpStore %266 %265
               OpBranch %237
        %237 = OpLabel
        %267 = OpLoad %18 %208
        %268 = OpSGreaterThanEqual %50 %267 %19
               OpSelectionMerge %270 None
               OpBranchConditional %268 %269 %270
        %269 = OpLabel
        %271 = OpAccessChain %41 %62 %35
        %272 = OpLoad %18 %271
        %273 = OpSGreaterThan %50 %272 %19
               OpBranch %270
        %270 = OpLabel
        %274 = OpPhi %50 %268 %237 %273 %269
               OpSelectionMerge %276 None
               OpBranchConditional %274 %275 %276
        %275 = OpLabel
        %277 = OpAccessChain %41 %62 %28
        %278 = OpLoad %18 %277
        %279 = OpAccessChain %41 %62 %35
        %280 = OpLoad %18 %279
        %281 = OpISub %18 %280 %82
        %282 = OpIMul %18 %281 %86
        %283 = OpIAdd %18 %278 %282
        %284 = OpAccessChain %57 %55 %283
        %285 = OpLoad %18 %284
        %286 = OpIEqual %50 %285 %19
               OpBranch %276
        %276 = OpLabel
        %287 = OpPhi %50 %274 %270 %286 %275
               OpSelectionMerge %289 None
               OpBranchConditional %287 %288 %289
        %288 = OpLabel
        %290 = OpLoad %18 %208
        %291 = OpISub %18 %290 %60
               OpStore %208 %291
        %292 = OpAccessChain %41 %62 %28
        %293 = OpLoad %18 %292
        %294 = OpAccessChain %41 %62 %35
        %295 = OpLoad %18 %294
        %296 = OpIMul %18 %295 %86
        %297 = OpIAdd %18 %293 %296
        %298 = OpAccessChain %57 %55 %297
               OpStore %298 %60
        %299 = OpAccessChain %41 %62 %28
        %300 = OpLoad %18 %299
        %301 = OpAccessChain %41 %62 %35
        %302 = OpLoad %18 %301
        %303 = OpISub %18 %302 %60
        %304 = OpIMul %18 %303 %86
        %305 = OpIAdd %18 %300 %304
        %306 = OpAccessChain %57 %55 %305
               OpStore %306 %60
        %307 = OpAccessChain %41 %62 %28
        %308 = OpLoad %18 %307
        %309 = OpAccessChain %41 %62 %35
        %310 = OpLoad %18 %309
        %311 = OpISub %18 %310 %82
        %312 = OpIMul %18 %311 %86
        %313 = OpIAdd %18 %308 %312
        %314 = OpAccessChain %57 %55 %313
               OpStore %314 %60
        %315 = OpAccessChain %41 %62 %35
        %316 = OpLoad %18 %315
        %317 = OpISub %18 %316 %82
        %318 = OpAccessChain %41 %62 %35
               OpStore %318 %317
               OpBranch %289
        %289 = OpLabel
        %319 = OpLoad %18 %208
        %320 = OpSGreaterThanEqual %50 %319 %19
               OpSelectionMerge %322 None
               OpBranchConditional %320 %321 %322
        %321 = OpLabel
        %323 = OpAccessChain %41 %62 %28
        %324 = OpLoad %18 %323
        %325 = OpSLessThan %50 %324 %119
               OpBranch %322
        %322 = OpLabel
        %326 = OpPhi %50 %320 %289 %325 %321
               OpSelectionMerge %328 None
               OpBranchConditional %326 %327 %328
        %327 = OpLabel
        %329 = OpAccessChain %41 %62 %28
        %330 = OpLoad %18 %329
        %331 = OpIAdd %18 %330 %82
        %332 = OpAccessChain %41 %62 %35
        %333 = OpLoad %18 %332
        %334 = OpIMul %18 %333 %86
        %335 = OpIAdd %18 %331 %334
        %336 = OpAccessChain %57 %55 %335
        %337 = OpLoad %18 %336
        %338 = OpIEqual %50 %337 %19
               OpBranch %328
        %328 = OpLabel
        %339 = OpPhi %50 %326 %322 %338 %327
               OpSelectionMerge %341 None
               OpBranchConditional %339 %340 %341
        %340 = OpLabel
        %342 = OpLoad %18 %208
        %343 = OpISub %18 %342 %60
               OpStore %208 %343
        %344 = OpAccessChain %41 %62 %28
        %345 = OpLoad %18 %344
        %346 = OpAccessChain %41 %62 %35
        %347 = OpLoad %18 %346
        %348 = OpIMul %18 %347 %86
        %349 = OpIAdd %18 %345 %348
        %350 = OpAccessChain %57 %55 %349
               OpStore %350 %60
        %351 = OpAccessChain %41 %62 %28
        %352 = OpLoad %18 %351
        %353 = OpIAdd %18 %352 %60
        %354 = OpAccessChain %41 %62 %35
        %355 = OpLoad %18 %354
        %356 = OpIMul %18 %355 %86
        %357 = OpIAdd %18 %353 %356
        %358 = OpAccessChain %57 %55 %357
               OpStore %358 %60
        %359 = OpAccessChain %41 %62 %28
        %360 = OpLoad %18 %359
        %361 = OpIAdd %18 %360 %82
        %362 = OpAccessChain %41 %62 %35
        %363 = OpLoad %18 %362
        %364 = OpIMul %18 %363 %86
        %365 = OpIAdd %18 %361 %364
        %366 = OpAccessChain %57 %55 %365
               OpStore %366 %60
        %367 = OpAccessChain %41 %62 %28
        %368 = OpLoad %18 %367
        %369 = OpIAdd %18 %368 %82
        %370 = OpAccessChain %41 %62 %28
               OpStore %370 %369
               OpBranch %341
        %341 = OpLabel
        %371 = OpLoad %18 %208
        %372 = OpSGreaterThanEqual %50 %371 %19
               OpSelectionMerge %374 None
               OpBranchConditional %372 %373 %374
        %373 = OpLabel
        %375 = OpAccessChain %41 %62 %35
        %376 = OpLoad %18 %375
        %377 = OpSLessThan %50 %376 %119
               OpBranch %374
        %374 = OpLabel
        %378 = OpPhi %50 %372 %341 %377 %373
               OpSelectionMerge %380 None
               OpBranchConditional %378 %379 %380
        %379 = OpLabel
        %381 = OpAccessChain %41 %62 %28
        %382 = OpLoad %18 %381
        %383 = OpAccessChain %41 %62 %35
        %384 = OpLoad %18 %383
        %385 = OpIAdd %18 %384 %82
        %386 = OpIMul %18 %385 %86
        %387 = OpIAdd %18 %382 %386
        %388 = OpAccessChain %57 %55 %387
        %389 = OpLoad %18 %388
        %390 = OpIEqual %50 %389 %19
               OpBranch %380
        %380 = OpLabel
        %391 = OpPhi %50 %378 %374 %390 %379
               OpSelectionMerge %393 None
               OpBranchConditional %391 %392 %393
        %392 = OpLabel
        %394 = OpLoad %18 %208
        %395 = OpISub %18 %394 %60
               OpStore %208 %395
        %396 = OpAccessChain %41 %62 %28
        %397 = OpLoad %18 %396
        %398 = OpAccessChain %41 %62 %35
        %399 = OpLoad %18 %398
        %400 = OpIMul %18 %399 %86
        %401 = OpIAdd %18 %397 %400
        %402 = OpAccessChain %57 %55 %401
               OpStore %402 %60
        %403 = OpAccessChain %41 %62 %28
        %404 = OpLoad %18 %403
        %405 = OpAccessChain %41 %62 %35
        %406 = OpLoad %18 %405
        %407 = OpIAdd %18 %406 %60
        %408 = OpIMul %18 %407 %86
        %409 = OpIAdd %18 %404 %408
        %410 = OpAccessChain %57 %55 %409
               OpStore %410 %60
        %411 = OpAccessChain %41 %62 %28
        %412 = OpLoad %18 %411
        %413 = OpAccessChain %41 %62 %35
        %414 = OpLoad %18 %413
        %415 = OpIAdd %18 %414 %82
        %416 = OpIMul %18 %415 %86
        %417 = OpIAdd %18 %412 %416
        %418 = OpAccessChain %57 %55 %417
               OpStore %418 %60
        %419 = OpAccessChain %41 %62 %35
        %420 = OpLoad %18 %419
        %421 = OpIAdd %18 %420 %82
        %422 = OpAccessChain %41 %62 %35
               OpStore %422 %421
               OpBranch %393
        %393 = OpLabel
               OpBranch %161
        %161 = OpLabel
        %423 = OpAccessChain %41 %26 %35
        %424 = OpLoad %18 %423
        %425 = OpIMul %18 %424 %86
        %426 = OpAccessChain %41 %26 %28
        %427 = OpLoad %18 %426
        %428 = OpIAdd %18 %425 %427
        %429 = OpAccessChain %57 %55 %428
        %430 = OpLoad %18 %429
        %431 = OpIEqual %50 %430 %60
               OpSelectionMerge %433 None
               OpBranchConditional %431 %432 %433
        %432 = OpLabel
               OpStore %435 %437
               OpReturn
        %433 = OpLabel
               OpBranch %71
         %71 = OpLabel
        %439 = OpLoad %50 %65
               OpBranchConditional %439 %68 %70
         %70 = OpLabel
               OpStore %435 %441
               OpReturn
               OpFunctionEnd
