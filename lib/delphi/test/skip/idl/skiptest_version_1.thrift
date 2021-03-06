/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */


// version 1 of the interface

namespace * Skiptest.One

const i32 SKIPTESTSERVICE_VERSION = 1

enum PingPongEnum {
	PingOne = 0,
	PongOne = 1,
}

struct Ping {
  1 : optional i32 version1
  100 : PingPongEnum EnumTest
}

exception PongFailed {
  222 : optional i32 pongErrorCode
}


service SkipTestService {
  Ping PingPong( 1: Ping ping) throws (444: PongFailed pof);
}


// EOF