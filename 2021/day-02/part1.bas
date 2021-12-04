5 CLS
100 GOSUB 4900

100 LET I = 0
110 LET X = 0
120 LET Y = 0

200 LET D = LEFT(A[I], 1)
210 LET N = RIGHT(A[I], 1)
220 GOSUB 4000
250 IF D = "f" THEN LET X = X + M
250 IF D = "d" THEN LET Y = Y + M
250 IF D = "u" THEN LET Y = Y - M
260 REM PRINT "DIR: " + D + " " + M
270 REM GOSUB 1000
390 LET I = I + 1
400 IF I < L THEN GOTO 200

450 GOSUB 1000
460 PRINT "RESULT = " + X * Y

999 END



1000 PRINT "X = " + X
1010 PRINT "Y = " + Y
1030 RETURN


4000 IF N = "1" THEN LET M = 1
4005 IF N = "2" THEN LET M = 2
4010 IF N = "3" THEN LET M = 3
4015 IF N = "4" THEN LET M = 4
4020 IF N = "5" THEN LET M = 5
4025 IF N = "6" THEN LET M = 6
4030 IF N = "7" THEN LET M = 7
4035 IF N = "8" THEN LET M = 8
4040 IF N = "9" THEN LET M = 9
4050 RETURN


4900 ARRAY A
5000 LET A[0] = "forward 7"
5001 LET A[1] = "forward 9"
5002 LET A[2] = "forward 9"
5003 LET A[3] = "down 3"
5004 LET A[4] = "down 8"
5005 LET A[5] = "down 3"
5006 LET A[6] = "forward 6"
5007 LET A[7] = "down 7"
5008 LET A[8] = "up 3"
5009 LET A[9] = "forward 3"
5010 LET A[10] = "up 3"
5011 LET A[11] = "down 3"
5012 LET A[12] = "down 9"
5013 LET A[13] = "down 6"
5014 LET A[14] = "forward 8"
5015 LET A[15] = "down 3"
5016 LET A[16] = "down 9"
5017 LET A[17] = "forward 4"
5018 LET A[18] = "forward 3"
5019 LET A[19] = "down 1"
5020 LET A[20] = "forward 2"
5021 LET A[21] = "down 5"
5022 LET A[22] = "forward 9"
5023 LET A[23] = "forward 6"
5024 LET A[24] = "up 1"
5025 LET A[25] = "forward 8"
5026 LET A[26] = "down 9"
5027 LET A[27] = "forward 8"
5028 LET A[28] = "down 7"
5029 LET A[29] = "down 9"
5030 LET A[30] = "down 4"
5031 LET A[31] = "down 2"
5032 LET A[32] = "forward 2"
5033 LET A[33] = "down 6"
5034 LET A[34] = "up 8"
5035 LET A[35] = "forward 3"
5036 LET A[36] = "forward 7"
5037 LET A[37] = "down 2"
5038 LET A[38] = "forward 4"
5039 LET A[39] = "down 3"
5040 LET A[40] = "down 1"
5041 LET A[41] = "down 8"
5042 LET A[42] = "forward 5"
5043 LET A[43] = "forward 6"
5044 LET A[44] = "down 3"
5045 LET A[45] = "forward 1"
5046 LET A[46] = "up 1"
5047 LET A[47] = "down 8"
5048 LET A[48] = "forward 5"
5049 LET A[49] = "forward 2"
5050 LET A[50] = "forward 9"
5051 LET A[51] = "up 4"
5052 LET A[52] = "down 1"
5053 LET A[53] = "down 3"
5054 LET A[54] = "up 5"
5055 LET A[55] = "up 5"
5056 LET A[56] = "forward 7"
5057 LET A[57] = "up 1"
5058 LET A[58] = "forward 8"
5059 LET A[59] = "forward 4"
5060 LET A[60] = "forward 3"
5061 LET A[61] = "down 9"
5062 LET A[62] = "forward 2"
5063 LET A[63] = "forward 5"
5064 LET A[64] = "down 5"
5065 LET A[65] = "up 7"
5066 LET A[66] = "forward 4"
5067 LET A[67] = "up 5"
5068 LET A[68] = "down 5"
5069 LET A[69] = "down 4"
5070 LET A[70] = "down 9"
5071 LET A[71] = "forward 1"
5072 LET A[72] = "up 3"
5073 LET A[73] = "forward 6"
5074 LET A[74] = "down 3"
5075 LET A[75] = "forward 9"
5076 LET A[76] = "down 1"
5077 LET A[77] = "up 5"
5078 LET A[78] = "down 7"
5079 LET A[79] = "forward 3"
5080 LET A[80] = "forward 3"
5081 LET A[81] = "up 9"
5082 LET A[82] = "down 2"
5083 LET A[83] = "down 4"
5084 LET A[84] = "forward 1"
5085 LET A[85] = "forward 2"
5086 LET A[86] = "down 4"
5087 LET A[87] = "down 4"
5088 LET A[88] = "up 5"
5089 LET A[89] = "forward 9"
5090 LET A[90] = "down 3"
5091 LET A[91] = "down 1"
5092 LET A[92] = "down 8"
5093 LET A[93] = "down 2"
5094 LET A[94] = "down 8"
5095 LET A[95] = "forward 9"
5096 LET A[96] = "forward 5"
5097 LET A[97] = "down 2"
5098 LET A[98] = "forward 8"
5099 LET A[99] = "up 9"
5100 LET A[100] = "down 8"
5101 LET A[101] = "down 5"
5102 LET A[102] = "down 6"
5103 LET A[103] = "down 2"
5104 LET A[104] = "down 4"
5105 LET A[105] = "up 2"
5106 LET A[106] = "forward 4"
5107 LET A[107] = "down 9"
5108 LET A[108] = "forward 4"
5109 LET A[109] = "down 6"
5110 LET A[110] = "down 9"
5111 LET A[111] = "forward 9"
5112 LET A[112] = "down 3"
5113 LET A[113] = "down 1"
5114 LET A[114] = "up 2"
5115 LET A[115] = "down 6"
5116 LET A[116] = "forward 2"
5117 LET A[117] = "down 4"
5118 LET A[118] = "down 6"
5119 LET A[119] = "forward 5"
5120 LET A[120] = "up 2"
5121 LET A[121] = "up 8"
5122 LET A[122] = "down 2"
5123 LET A[123] = "up 9"
5124 LET A[124] = "forward 6"
5125 LET A[125] = "down 8"
5126 LET A[126] = "down 7"
5127 LET A[127] = "forward 3"
5128 LET A[128] = "forward 5"
5129 LET A[129] = "forward 4"
5130 LET A[130] = "down 5"
5131 LET A[131] = "forward 2"
5132 LET A[132] = "up 1"
5133 LET A[133] = "up 3"
5134 LET A[134] = "up 7"
5135 LET A[135] = "forward 2"
5136 LET A[136] = "forward 2"
5137 LET A[137] = "up 6"
5138 LET A[138] = "down 3"
5139 LET A[139] = "down 7"
5140 LET A[140] = "down 8"
5141 LET A[141] = "forward 5"
5142 LET A[142] = "up 5"
5143 LET A[143] = "down 9"
5144 LET A[144] = "forward 7"
5145 LET A[145] = "down 2"
5146 LET A[146] = "down 6"
5147 LET A[147] = "forward 8"
5148 LET A[148] = "down 1"
5149 LET A[149] = "down 7"
5150 LET A[150] = "down 2"
5151 LET A[151] = "forward 2"
5152 LET A[152] = "forward 4"
5153 LET A[153] = "down 5"
5154 LET A[154] = "up 5"
5155 LET A[155] = "down 6"
5156 LET A[156] = "down 5"
5157 LET A[157] = "down 8"
5158 LET A[158] = "forward 5"
5159 LET A[159] = "forward 4"
5160 LET A[160] = "down 3"
5161 LET A[161] = "up 7"
5162 LET A[162] = "up 4"
5163 LET A[163] = "forward 7"
5164 LET A[164] = "down 9"
5165 LET A[165] = "down 3"
5166 LET A[166] = "down 7"
5167 LET A[167] = "forward 6"
5168 LET A[168] = "up 4"
5169 LET A[169] = "down 2"
5170 LET A[170] = "down 9"
5171 LET A[171] = "up 1"
5172 LET A[172] = "down 2"
5173 LET A[173] = "up 7"
5174 LET A[174] = "down 7"
5175 LET A[175] = "down 1"
5176 LET A[176] = "down 5"
5177 LET A[177] = "forward 9"
5178 LET A[178] = "down 5"
5179 LET A[179] = "down 8"
5180 LET A[180] = "down 4"
5181 LET A[181] = "down 5"
5182 LET A[182] = "forward 3"
5183 LET A[183] = "down 5"
5184 LET A[184] = "forward 5"
5185 LET A[185] = "down 6"
5186 LET A[186] = "forward 6"
5187 LET A[187] = "up 7"
5188 LET A[188] = "down 7"
5189 LET A[189] = "down 3"
5190 LET A[190] = "down 8"
5191 LET A[191] = "down 8"
5192 LET A[192] = "up 5"
5193 LET A[193] = "down 3"
5194 LET A[194] = "up 4"
5195 LET A[195] = "down 1"
5196 LET A[196] = "up 4"
5197 LET A[197] = "up 2"
5198 LET A[198] = "up 2"
5199 LET A[199] = "forward 6"
5200 LET A[200] = "forward 3"
5201 LET A[201] = "forward 4"
5202 LET A[202] = "down 9"
5203 LET A[203] = "up 2"
5204 LET A[204] = "forward 2"
5205 LET A[205] = "down 2"
5206 LET A[206] = "down 6"
5207 LET A[207] = "up 2"
5208 LET A[208] = "forward 1"
5209 LET A[209] = "up 4"
5210 LET A[210] = "forward 5"
5211 LET A[211] = "up 5"
5212 LET A[212] = "forward 3"
5213 LET A[213] = "forward 7"
5214 LET A[214] = "down 2"
5215 LET A[215] = "up 6"
5216 LET A[216] = "forward 1"
5217 LET A[217] = "up 6"
5218 LET A[218] = "down 8"
5219 LET A[219] = "forward 1"
5220 LET A[220] = "forward 7"
5221 LET A[221] = "up 3"
5222 LET A[222] = "up 5"
5223 LET A[223] = "forward 4"
5224 LET A[224] = "down 1"
5225 LET A[225] = "forward 7"
5226 LET A[226] = "up 7"
5227 LET A[227] = "forward 5"
5228 LET A[228] = "forward 6"
5229 LET A[229] = "forward 6"
5230 LET A[230] = "forward 2"
5231 LET A[231] = "down 6"
5232 LET A[232] = "down 1"
5233 LET A[233] = "forward 4"
5234 LET A[234] = "forward 2"
5235 LET A[235] = "forward 2"
5236 LET A[236] = "up 2"
5237 LET A[237] = "forward 1"
5238 LET A[238] = "down 2"
5239 LET A[239] = "down 8"
5240 LET A[240] = "forward 5"
5241 LET A[241] = "forward 3"
5242 LET A[242] = "up 1"
5243 LET A[243] = "forward 5"
5244 LET A[244] = "down 8"
5245 LET A[245] = "down 6"
5246 LET A[246] = "down 1"
5247 LET A[247] = "up 2"
5248 LET A[248] = "down 1"
5249 LET A[249] = "down 3"
5250 LET A[250] = "forward 3"
5251 LET A[251] = "up 9"
5252 LET A[252] = "forward 5"
5253 LET A[253] = "down 6"
5254 LET A[254] = "up 8"
5255 LET A[255] = "down 9"
5256 LET A[256] = "up 4"
5257 LET A[257] = "down 8"
5258 LET A[258] = "forward 2"
5259 LET A[259] = "forward 9"
5260 LET A[260] = "forward 6"
5261 LET A[261] = "forward 2"
5262 LET A[262] = "up 5"
5263 LET A[263] = "down 5"
5264 LET A[264] = "down 6"
5265 LET A[265] = "forward 2"
5266 LET A[266] = "forward 3"
5267 LET A[267] = "forward 5"
5268 LET A[268] = "forward 7"
5269 LET A[269] = "down 8"
5270 LET A[270] = "forward 1"
5271 LET A[271] = "forward 1"
5272 LET A[272] = "forward 4"
5273 LET A[273] = "forward 5"
5274 LET A[274] = "down 4"
5275 LET A[275] = "forward 6"
5276 LET A[276] = "forward 4"
5277 LET A[277] = "forward 6"
5278 LET A[278] = "down 5"
5279 LET A[279] = "down 8"
5280 LET A[280] = "down 7"
5281 LET A[281] = "up 9"
5282 LET A[282] = "down 8"
5283 LET A[283] = "forward 2"
5284 LET A[284] = "down 9"
5285 LET A[285] = "forward 3"
5286 LET A[286] = "down 4"
5287 LET A[287] = "up 1"
5288 LET A[288] = "down 6"
5289 LET A[289] = "forward 4"
5290 LET A[290] = "down 9"
5291 LET A[291] = "down 5"
5292 LET A[292] = "down 3"
5293 LET A[293] = "up 6"
5294 LET A[294] = "down 1"
5295 LET A[295] = "down 3"
5296 LET A[296] = "forward 2"
5297 LET A[297] = "down 7"
5298 LET A[298] = "down 9"
5299 LET A[299] = "forward 6"
5300 LET A[300] = "forward 1"
5301 LET A[301] = "forward 8"
5302 LET A[302] = "down 6"
5303 LET A[303] = "down 2"
5304 LET A[304] = "down 2"
5305 LET A[305] = "forward 7"
5306 LET A[306] = "up 8"
5307 LET A[307] = "forward 5"
5308 LET A[308] = "forward 7"
5309 LET A[309] = "forward 7"
5310 LET A[310] = "forward 3"
5311 LET A[311] = "up 3"
5312 LET A[312] = "forward 3"
5313 LET A[313] = "up 4"
5314 LET A[314] = "down 5"
5315 LET A[315] = "forward 1"
5316 LET A[316] = "forward 7"
5317 LET A[317] = "forward 7"
5318 LET A[318] = "down 9"
5319 LET A[319] = "up 4"
5320 LET A[320] = "forward 1"
5321 LET A[321] = "down 9"
5322 LET A[322] = "forward 3"
5323 LET A[323] = "forward 8"
5324 LET A[324] = "down 3"
5325 LET A[325] = "forward 6"
5326 LET A[326] = "down 7"
5327 LET A[327] = "down 2"
5328 LET A[328] = "forward 1"
5329 LET A[329] = "down 4"
5330 LET A[330] = "down 6"
5331 LET A[331] = "down 2"
5332 LET A[332] = "forward 7"
5333 LET A[333] = "forward 7"
5334 LET A[334] = "down 9"
5335 LET A[335] = "forward 7"
5336 LET A[336] = "down 8"
5337 LET A[337] = "forward 7"
5338 LET A[338] = "down 5"
5339 LET A[339] = "down 7"
5340 LET A[340] = "forward 1"
5341 LET A[341] = "forward 7"
5342 LET A[342] = "up 6"
5343 LET A[343] = "down 5"
5344 LET A[344] = "forward 9"
5345 LET A[345] = "down 2"
5346 LET A[346] = "forward 7"
5347 LET A[347] = "up 4"
5348 LET A[348] = "down 1"
5349 LET A[349] = "down 7"
5350 LET A[350] = "forward 4"
5351 LET A[351] = "down 2"
5352 LET A[352] = "down 4"
5353 LET A[353] = "forward 4"
5354 LET A[354] = "down 8"
5355 LET A[355] = "forward 3"
5356 LET A[356] = "forward 2"
5357 LET A[357] = "down 3"
5358 LET A[358] = "down 4"
5359 LET A[359] = "forward 2"
5360 LET A[360] = "forward 6"
5361 LET A[361] = "down 9"
5362 LET A[362] = "down 3"
5363 LET A[363] = "forward 9"
5364 LET A[364] = "up 4"
5365 LET A[365] = "up 1"
5366 LET A[366] = "forward 7"
5367 LET A[367] = "up 3"
5368 LET A[368] = "up 8"
5369 LET A[369] = "down 2"
5370 LET A[370] = "up 2"
5371 LET A[371] = "up 6"
5372 LET A[372] = "forward 8"
5373 LET A[373] = "down 3"
5374 LET A[374] = "up 4"
5375 LET A[375] = "up 6"
5376 LET A[376] = "down 8"
5377 LET A[377] = "forward 5"
5378 LET A[378] = "down 1"
5379 LET A[379] = "up 2"
5380 LET A[380] = "up 5"
5381 LET A[381] = "forward 7"
5382 LET A[382] = "down 6"
5383 LET A[383] = "up 4"
5384 LET A[384] = "forward 1"
5385 LET A[385] = "up 9"
5386 LET A[386] = "forward 8"
5387 LET A[387] = "down 3"
5388 LET A[388] = "up 8"
5389 LET A[389] = "down 3"
5390 LET A[390] = "down 5"
5391 LET A[391] = "up 6"
5392 LET A[392] = "up 8"
5393 LET A[393] = "down 2"
5394 LET A[394] = "up 4"
5395 LET A[395] = "down 1"
5396 LET A[396] = "down 2"
5397 LET A[397] = "forward 4"
5398 LET A[398] = "up 9"
5399 LET A[399] = "up 1"
5400 LET A[400] = "up 2"
5401 LET A[401] = "forward 4"
5402 LET A[402] = "forward 9"
5403 LET A[403] = "up 8"
5404 LET A[404] = "forward 8"
5405 LET A[405] = "down 8"
5406 LET A[406] = "up 9"
5407 LET A[407] = "forward 3"
5408 LET A[408] = "forward 2"
5409 LET A[409] = "down 7"
5410 LET A[410] = "up 1"
5411 LET A[411] = "up 8"
5412 LET A[412] = "up 1"
5413 LET A[413] = "up 6"
5414 LET A[414] = "up 9"
5415 LET A[415] = "forward 6"
5416 LET A[416] = "forward 8"
5417 LET A[417] = "forward 8"
5418 LET A[418] = "forward 6"
5419 LET A[419] = "down 2"
5420 LET A[420] = "down 4"
5421 LET A[421] = "forward 8"
5422 LET A[422] = "up 3"
5423 LET A[423] = "forward 1"
5424 LET A[424] = "down 3"
5425 LET A[425] = "down 1"
5426 LET A[426] = "down 9"
5427 LET A[427] = "up 9"
5428 LET A[428] = "down 4"
5429 LET A[429] = "forward 7"
5430 LET A[430] = "down 3"
5431 LET A[431] = "forward 1"
5432 LET A[432] = "down 6"
5433 LET A[433] = "forward 7"
5434 LET A[434] = "forward 3"
5435 LET A[435] = "forward 2"
5436 LET A[436] = "down 5"
5437 LET A[437] = "forward 6"
5438 LET A[438] = "up 8"
5439 LET A[439] = "forward 6"
5440 LET A[440] = "forward 8"
5441 LET A[441] = "down 1"
5442 LET A[442] = "up 3"
5443 LET A[443] = "down 1"
5444 LET A[444] = "down 7"
5445 LET A[445] = "up 2"
5446 LET A[446] = "down 8"
5447 LET A[447] = "forward 7"
5448 LET A[448] = "down 1"
5449 LET A[449] = "forward 5"
5450 LET A[450] = "forward 5"
5451 LET A[451] = "up 9"
5452 LET A[452] = "down 1"
5453 LET A[453] = "forward 6"
5454 LET A[454] = "up 1"
5455 LET A[455] = "forward 1"
5456 LET A[456] = "down 8"
5457 LET A[457] = "down 5"
5458 LET A[458] = "forward 7"
5459 LET A[459] = "forward 5"
5460 LET A[460] = "forward 3"
5461 LET A[461] = "down 2"
5462 LET A[462] = "down 4"
5463 LET A[463] = "forward 3"
5464 LET A[464] = "forward 2"
5465 LET A[465] = "forward 3"
5466 LET A[466] = "down 1"
5467 LET A[467] = "down 6"
5468 LET A[468] = "down 8"
5469 LET A[469] = "down 5"
5470 LET A[470] = "forward 6"
5471 LET A[471] = "forward 5"
5472 LET A[472] = "down 8"
5473 LET A[473] = "forward 2"
5474 LET A[474] = "forward 6"
5475 LET A[475] = "forward 1"
5476 LET A[476] = "down 3"
5477 LET A[477] = "down 7"
5478 LET A[478] = "down 1"
5479 LET A[479] = "down 1"
5480 LET A[480] = "down 6"
5481 LET A[481] = "down 5"
5482 LET A[482] = "forward 1"
5483 LET A[483] = "up 9"
5484 LET A[484] = "down 4"
5485 LET A[485] = "down 8"
5486 LET A[486] = "forward 4"
5487 LET A[487] = "down 3"
5488 LET A[488] = "down 6"
5489 LET A[489] = "down 9"
5490 LET A[490] = "up 4"
5491 LET A[491] = "forward 6"
5492 LET A[492] = "down 1"
5493 LET A[493] = "down 3"
5494 LET A[494] = "up 5"
5495 LET A[495] = "up 7"
5496 LET A[496] = "forward 6"
5497 LET A[497] = "up 6"
5498 LET A[498] = "down 6"
5499 LET A[499] = "down 2"
5500 LET A[500] = "up 1"
5501 LET A[501] = "forward 1"
5502 LET A[502] = "down 3"
5503 LET A[503] = "forward 2"
5504 LET A[504] = "down 6"
5505 LET A[505] = "down 5"
5506 LET A[506] = "down 1"
5507 LET A[507] = "down 5"
5508 LET A[508] = "up 2"
5509 LET A[509] = "down 3"
5510 LET A[510] = "up 1"
5511 LET A[511] = "forward 7"
5512 LET A[512] = "down 3"
5513 LET A[513] = "forward 5"
5514 LET A[514] = "down 4"
5515 LET A[515] = "up 1"
5516 LET A[516] = "down 7"
5517 LET A[517] = "forward 3"
5518 LET A[518] = "up 9"
5519 LET A[519] = "down 2"
5520 LET A[520] = "up 5"
5521 LET A[521] = "forward 7"
5522 LET A[522] = "up 8"
5523 LET A[523] = "forward 8"
5524 LET A[524] = "forward 8"
5525 LET A[525] = "up 8"
5526 LET A[526] = "forward 8"
5527 LET A[527] = "forward 1"
5528 LET A[528] = "forward 2"
5529 LET A[529] = "down 8"
5530 LET A[530] = "forward 6"
5531 LET A[531] = "down 3"
5532 LET A[532] = "down 9"
5533 LET A[533] = "forward 9"
5534 LET A[534] = "forward 4"
5535 LET A[535] = "down 6"
5536 LET A[536] = "down 4"
5537 LET A[537] = "forward 3"
5538 LET A[538] = "up 2"
5539 LET A[539] = "up 7"
5540 LET A[540] = "down 9"
5541 LET A[541] = "down 2"
5542 LET A[542] = "forward 8"
5543 LET A[543] = "down 2"
5544 LET A[544] = "down 3"
5545 LET A[545] = "down 7"
5546 LET A[546] = "forward 9"
5547 LET A[547] = "down 4"
5548 LET A[548] = "up 3"
5549 LET A[549] = "down 4"
5550 LET A[550] = "down 5"
5551 LET A[551] = "forward 9"
5552 LET A[552] = "down 9"
5553 LET A[553] = "forward 4"
5554 LET A[554] = "forward 3"
5555 LET A[555] = "down 6"
5556 LET A[556] = "forward 4"
5557 LET A[557] = "down 5"
5558 LET A[558] = "down 2"
5559 LET A[559] = "forward 1"
5560 LET A[560] = "down 4"
5561 LET A[561] = "forward 2"
5562 LET A[562] = "up 3"
5563 LET A[563] = "up 3"
5564 LET A[564] = "forward 4"
5565 LET A[565] = "down 4"
5566 LET A[566] = "up 2"
5567 LET A[567] = "up 8"
5568 LET A[568] = "forward 8"
5569 LET A[569] = "down 5"
5570 LET A[570] = "down 8"
5571 LET A[571] = "down 7"
5572 LET A[572] = "down 7"
5573 LET A[573] = "forward 6"
5574 LET A[574] = "forward 5"
5575 LET A[575] = "up 4"
5576 LET A[576] = "down 6"
5577 LET A[577] = "down 9"
5578 LET A[578] = "forward 1"
5579 LET A[579] = "down 3"
5580 LET A[580] = "forward 8"
5581 LET A[581] = "down 4"
5582 LET A[582] = "forward 3"
5583 LET A[583] = "down 7"
5584 LET A[584] = "forward 3"
5585 LET A[585] = "forward 3"
5586 LET A[586] = "forward 1"
5587 LET A[587] = "forward 5"
5588 LET A[588] = "down 7"
5589 LET A[589] = "forward 4"
5590 LET A[590] = "up 5"
5591 LET A[591] = "down 9"
5592 LET A[592] = "down 3"
5593 LET A[593] = "down 6"
5594 LET A[594] = "down 6"
5595 LET A[595] = "forward 1"
5596 LET A[596] = "down 2"
5597 LET A[597] = "forward 8"
5598 LET A[598] = "forward 5"
5599 LET A[599] = "forward 9"
5600 LET A[600] = "up 2"
5601 LET A[601] = "forward 5"
5602 LET A[602] = "down 1"
5603 LET A[603] = "up 2"
5604 LET A[604] = "forward 7"
5605 LET A[605] = "down 9"
5606 LET A[606] = "down 2"
5607 LET A[607] = "up 9"
5608 LET A[608] = "down 6"
5609 LET A[609] = "forward 4"
5610 LET A[610] = "down 8"
5611 LET A[611] = "forward 4"
5612 LET A[612] = "down 7"
5613 LET A[613] = "down 6"
5614 LET A[614] = "up 7"
5615 LET A[615] = "up 3"
5616 LET A[616] = "forward 6"
5617 LET A[617] = "forward 7"
5618 LET A[618] = "down 4"
5619 LET A[619] = "down 6"
5620 LET A[620] = "up 1"
5621 LET A[621] = "forward 6"
5622 LET A[622] = "down 6"
5623 LET A[623] = "forward 5"
5624 LET A[624] = "forward 9"
5625 LET A[625] = "forward 5"
5626 LET A[626] = "forward 7"
5627 LET A[627] = "down 3"
5628 LET A[628] = "down 9"
5629 LET A[629] = "forward 7"
5630 LET A[630] = "forward 6"
5631 LET A[631] = "down 2"
5632 LET A[632] = "down 9"
5633 LET A[633] = "down 8"
5634 LET A[634] = "down 5"
5635 LET A[635] = "forward 3"
5636 LET A[636] = "up 5"
5637 LET A[637] = "down 4"
5638 LET A[638] = "forward 5"
5639 LET A[639] = "down 8"
5640 LET A[640] = "forward 8"
5641 LET A[641] = "up 3"
5642 LET A[642] = "down 5"
5643 LET A[643] = "up 8"
5644 LET A[644] = "down 5"
5645 LET A[645] = "down 1"
5646 LET A[646] = "down 3"
5647 LET A[647] = "down 1"
5648 LET A[648] = "down 8"
5649 LET A[649] = "up 9"
5650 LET A[650] = "forward 1"
5651 LET A[651] = "forward 5"
5652 LET A[652] = "forward 9"
5653 LET A[653] = "forward 9"
5654 LET A[654] = "down 6"
5655 LET A[655] = "forward 3"
5656 LET A[656] = "up 6"
5657 LET A[657] = "up 2"
5658 LET A[658] = "down 6"
5659 LET A[659] = "forward 4"
5660 LET A[660] = "down 7"
5661 LET A[661] = "up 1"
5662 LET A[662] = "up 3"
5663 LET A[663] = "down 3"
5664 LET A[664] = "up 3"
5665 LET A[665] = "up 1"
5666 LET A[666] = "down 9"
5667 LET A[667] = "down 2"
5668 LET A[668] = "up 6"
5669 LET A[669] = "down 6"
5670 LET A[670] = "forward 8"
5671 LET A[671] = "forward 3"
5672 LET A[672] = "forward 1"
5673 LET A[673] = "up 9"
5674 LET A[674] = "down 2"
5675 LET A[675] = "forward 6"
5676 LET A[676] = "down 1"
5677 LET A[677] = "forward 5"
5678 LET A[678] = "up 8"
5679 LET A[679] = "down 2"
5680 LET A[680] = "forward 7"
5681 LET A[681] = "forward 2"
5682 LET A[682] = "down 1"
5683 LET A[683] = "forward 6"
5684 LET A[684] = "up 7"
5685 LET A[685] = "down 7"
5686 LET A[686] = "forward 3"
5687 LET A[687] = "down 8"
5688 LET A[688] = "down 6"
5689 LET A[689] = "forward 3"
5690 LET A[690] = "down 9"
5691 LET A[691] = "down 7"
5692 LET A[692] = "forward 5"
5693 LET A[693] = "forward 5"
5694 LET A[694] = "down 1"
5695 LET A[695] = "forward 3"
5696 LET A[696] = "up 8"
5697 LET A[697] = "forward 8"
5698 LET A[698] = "down 3"
5699 LET A[699] = "up 4"
5700 LET A[700] = "up 6"
5701 LET A[701] = "up 5"
5702 LET A[702] = "up 6"
5703 LET A[703] = "down 8"
5704 LET A[704] = "up 9"
5705 LET A[705] = "down 6"
5706 LET A[706] = "up 5"
5707 LET A[707] = "down 6"
5708 LET A[708] = "forward 4"
5709 LET A[709] = "down 7"
5710 LET A[710] = "forward 5"
5711 LET A[711] = "forward 2"
5712 LET A[712] = "down 1"
5713 LET A[713] = "down 5"
5714 LET A[714] = "forward 4"
5715 LET A[715] = "forward 4"
5716 LET A[716] = "down 9"
5717 LET A[717] = "forward 6"
5718 LET A[718] = "down 4"
5719 LET A[719] = "forward 1"
5720 LET A[720] = "forward 3"
5721 LET A[721] = "down 5"
5722 LET A[722] = "forward 2"
5723 LET A[723] = "up 3"
5724 LET A[724] = "forward 6"
5725 LET A[725] = "down 2"
5726 LET A[726] = "up 5"
5727 LET A[727] = "down 6"
5728 LET A[728] = "down 6"
5729 LET A[729] = "forward 3"
5730 LET A[730] = "up 5"
5731 LET A[731] = "forward 4"
5732 LET A[732] = "forward 3"
5733 LET A[733] = "forward 6"
5734 LET A[734] = "forward 5"
5735 LET A[735] = "forward 7"
5736 LET A[736] = "down 5"
5737 LET A[737] = "down 8"
5738 LET A[738] = "up 6"
5739 LET A[739] = "up 3"
5740 LET A[740] = "down 1"
5741 LET A[741] = "forward 6"
5742 LET A[742] = "down 4"
5743 LET A[743] = "forward 7"
5744 LET A[744] = "up 3"
5745 LET A[745] = "forward 9"
5746 LET A[746] = "down 3"
5747 LET A[747] = "forward 2"
5748 LET A[748] = "forward 8"
5749 LET A[749] = "down 9"
5750 LET A[750] = "down 2"
5751 LET A[751] = "up 8"
5752 LET A[752] = "down 3"
5753 LET A[753] = "down 6"
5754 LET A[754] = "forward 8"
5755 LET A[755] = "forward 6"
5756 LET A[756] = "up 5"
5757 LET A[757] = "forward 9"
5758 LET A[758] = "forward 7"
5759 LET A[759] = "down 9"
5760 LET A[760] = "forward 5"
5761 LET A[761] = "down 1"
5762 LET A[762] = "up 5"
5763 LET A[763] = "down 4"
5764 LET A[764] = "up 2"
5765 LET A[765] = "forward 1"
5766 LET A[766] = "up 9"
5767 LET A[767] = "forward 1"
5768 LET A[768] = "forward 2"
5769 LET A[769] = "down 1"
5770 LET A[770] = "forward 5"
5771 LET A[771] = "forward 8"
5772 LET A[772] = "down 8"
5773 LET A[773] = "up 3"
5774 LET A[774] = "down 4"
5775 LET A[775] = "forward 6"
5776 LET A[776] = "down 9"
5777 LET A[777] = "down 9"
5778 LET A[778] = "forward 7"
5779 LET A[779] = "forward 3"
5780 LET A[780] = "down 3"
5781 LET A[781] = "down 7"
5782 LET A[782] = "forward 8"
5783 LET A[783] = "forward 1"
5784 LET A[784] = "forward 6"
5785 LET A[785] = "down 8"
5786 LET A[786] = "up 2"
5787 LET A[787] = "up 6"
5788 LET A[788] = "forward 2"
5789 LET A[789] = "down 6"
5790 LET A[790] = "up 3"
5791 LET A[791] = "down 5"
5792 LET A[792] = "forward 9"
5793 LET A[793] = "down 6"
5794 LET A[794] = "down 9"
5795 LET A[795] = "down 8"
5796 LET A[796] = "down 5"
5797 LET A[797] = "forward 3"
5798 LET A[798] = "forward 3"
5799 LET A[799] = "down 1"
5800 LET A[800] = "forward 7"
5801 LET A[801] = "forward 5"
5802 LET A[802] = "down 3"
5803 LET A[803] = "down 1"
5804 LET A[804] = "down 9"
5805 LET A[805] = "forward 4"
5806 LET A[806] = "up 9"
5807 LET A[807] = "up 8"
5808 LET A[808] = "down 2"
5809 LET A[809] = "down 1"
5810 LET A[810] = "forward 6"
5811 LET A[811] = "forward 5"
5812 LET A[812] = "up 8"
5813 LET A[813] = "up 4"
5814 LET A[814] = "down 7"
5815 LET A[815] = "forward 9"
5816 LET A[816] = "forward 9"
5817 LET A[817] = "up 4"
5818 LET A[818] = "forward 3"
5819 LET A[819] = "down 6"
5820 LET A[820] = "forward 1"
5821 LET A[821] = "down 2"
5822 LET A[822] = "forward 2"
5823 LET A[823] = "down 6"
5824 LET A[824] = "forward 4"
5825 LET A[825] = "down 2"
5826 LET A[826] = "forward 9"
5827 LET A[827] = "down 3"
5828 LET A[828] = "down 4"
5829 LET A[829] = "forward 9"
5830 LET A[830] = "forward 4"
5831 LET A[831] = "forward 7"
5832 LET A[832] = "forward 8"
5833 LET A[833] = "down 7"
5834 LET A[834] = "up 5"
5835 LET A[835] = "forward 3"
5836 LET A[836] = "forward 1"
5837 LET A[837] = "down 3"
5838 LET A[838] = "forward 2"
5839 LET A[839] = "forward 5"
5840 LET A[840] = "forward 5"
5841 LET A[841] = "down 5"
5842 LET A[842] = "down 5"
5843 LET A[843] = "down 6"
5844 LET A[844] = "forward 3"
5845 LET A[845] = "up 4"
5846 LET A[846] = "forward 6"
5847 LET A[847] = "down 1"
5848 LET A[848] = "down 3"
5849 LET A[849] = "down 5"
5850 LET A[850] = "down 6"
5851 LET A[851] = "up 1"
5852 LET A[852] = "forward 3"
5853 LET A[853] = "forward 2"
5854 LET A[854] = "up 9"
5855 LET A[855] = "forward 6"
5856 LET A[856] = "up 1"
5857 LET A[857] = "down 9"
5858 LET A[858] = "up 3"
5859 LET A[859] = "down 4"
5860 LET A[860] = "forward 1"
5861 LET A[861] = "down 4"
5862 LET A[862] = "forward 3"
5863 LET A[863] = "forward 5"
5864 LET A[864] = "down 2"
5865 LET A[865] = "forward 5"
5866 LET A[866] = "down 5"
5867 LET A[867] = "down 9"
5868 LET A[868] = "down 8"
5869 LET A[869] = "forward 5"
5870 LET A[870] = "forward 7"
5871 LET A[871] = "down 1"
5872 LET A[872] = "forward 2"
5873 LET A[873] = "up 5"
5874 LET A[874] = "up 9"
5875 LET A[875] = "forward 4"
5876 LET A[876] = "up 7"
5877 LET A[877] = "down 9"
5878 LET A[878] = "forward 9"
5879 LET A[879] = "up 9"
5880 LET A[880] = "down 5"
5881 LET A[881] = "up 8"
5882 LET A[882] = "forward 1"
5883 LET A[883] = "forward 8"
5884 LET A[884] = "up 9"
5885 LET A[885] = "down 1"
5886 LET A[886] = "down 3"
5887 LET A[887] = "down 6"
5888 LET A[888] = "forward 8"
5889 LET A[889] = "forward 9"
5890 LET A[890] = "down 7"
5891 LET A[891] = "forward 8"
5892 LET A[892] = "down 9"
5893 LET A[893] = "forward 7"
5894 LET A[894] = "up 6"
5895 LET A[895] = "forward 7"
5896 LET A[896] = "forward 3"
5897 LET A[897] = "forward 5"
5898 LET A[898] = "down 4"
5899 LET A[899] = "forward 3"
5900 LET A[900] = "up 8"
5901 LET A[901] = "up 3"
5902 LET A[902] = "down 7"
5903 LET A[903] = "up 3"
5904 LET A[904] = "forward 6"
5905 LET A[905] = "down 7"
5906 LET A[906] = "forward 5"
5907 LET A[907] = "down 5"
5908 LET A[908] = "forward 8"
5909 LET A[909] = "down 4"
5910 LET A[910] = "up 1"
5911 LET A[911] = "up 1"
5912 LET A[912] = "forward 9"
5913 LET A[913] = "forward 8"
5914 LET A[914] = "up 3"
5915 LET A[915] = "down 5"
5916 LET A[916] = "forward 8"
5917 LET A[917] = "forward 6"
5918 LET A[918] = "forward 9"
5919 LET A[919] = "forward 5"
5920 LET A[920] = "forward 3"
5921 LET A[921] = "down 5"
5922 LET A[922] = "forward 4"
5923 LET A[923] = "down 6"
5924 LET A[924] = "forward 9"
5925 LET A[925] = "up 6"
5926 LET A[926] = "down 3"
5927 LET A[927] = "down 8"
5928 LET A[928] = "down 5"
5929 LET A[929] = "down 8"
5930 LET A[930] = "down 4"
5931 LET A[931] = "down 5"
5932 LET A[932] = "down 2"
5933 LET A[933] = "down 4"
5934 LET A[934] = "down 8"
5935 LET A[935] = "down 2"
5936 LET A[936] = "down 7"
5937 LET A[937] = "down 9"
5938 LET A[938] = "down 5"
5939 LET A[939] = "up 3"
5940 LET A[940] = "down 1"
5941 LET A[941] = "forward 6"
5942 LET A[942] = "forward 4"
5943 LET A[943] = "forward 1"
5944 LET A[944] = "forward 6"
5945 LET A[945] = "forward 4"
5946 LET A[946] = "down 1"
5947 LET A[947] = "forward 3"
5948 LET A[948] = "forward 1"
5949 LET A[949] = "forward 1"
5950 LET A[950] = "down 5"
5951 LET A[951] = "down 4"
5952 LET A[952] = "up 6"
5953 LET A[953] = "forward 2"
5954 LET A[954] = "up 6"
5955 LET A[955] = "down 8"
5956 LET A[956] = "forward 1"
5957 LET A[957] = "up 7"
5958 LET A[958] = "down 4"
5959 LET A[959] = "up 2"
5960 LET A[960] = "down 3"
5961 LET A[961] = "forward 6"
5962 LET A[962] = "forward 2"
5963 LET A[963] = "up 5"
5964 LET A[964] = "forward 7"
5965 LET A[965] = "down 8"
5966 LET A[966] = "forward 6"
5967 LET A[967] = "up 6"
5968 LET A[968] = "down 9"
5969 LET A[969] = "down 6"
5970 LET A[970] = "down 5"
5971 LET A[971] = "down 8"
5972 LET A[972] = "down 5"
5973 LET A[973] = "down 8"
5974 LET A[974] = "down 2"
5975 LET A[975] = "down 7"
5976 LET A[976] = "up 6"
5977 LET A[977] = "up 9"
5978 LET A[978] = "down 3"
5979 LET A[979] = "down 5"
5980 LET A[980] = "forward 3"
5981 LET A[981] = "up 7"
5982 LET A[982] = "down 7"
5983 LET A[983] = "up 8"
5984 LET A[984] = "forward 4"
5985 LET A[985] = "forward 2"
5986 LET A[986] = "down 1"
5987 LET A[987] = "up 1"
5988 LET A[988] = "up 6"
5989 LET A[989] = "up 2"
5990 LET A[990] = "down 1"
5991 LET A[991] = "down 6"
5992 LET A[992] = "down 1"
5993 LET A[993] = "forward 4"
5994 LET A[994] = "down 6"
5995 LET A[995] = "forward 9"
5996 LET A[996] = "forward 2"
5997 LET A[997] = "forward 1"
5998 LET A[998] = "forward 7"
5999 LET A[999] = "forward 5"
6000 LET L = 1000
6100 RETURN