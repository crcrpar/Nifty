/*******************************************************************************
 *  std.swift
 *
 *  This file provides functionality for computing standard deviation.
 *
 *  Author: Philip Erickson
 *  Creation Date: 15 Aug 2016
 *  Contributors: 
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *  Copyright 2016 Philip Erickson
 ******************************************************************************/

// TODO: add doc and extend functionality to match MATLAB
public func std(_ x: [Double]) -> Double
{
	let m = mean(x)

	var total: Double = 0
	for xi in x
	{
		total += (xi-m)*(xi-m)
	}

	return sqrt(total/Double(x.count))
}