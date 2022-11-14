#!/usr/bin/env python3

"""
    Python Script for converting a GTKWave VCD file to WAV

    Copyright 2022 Milosch Meriac <milosch@meriac.com>
    Location: https://github.com/meriac/tt02-play-tune/

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:

    1. Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.

	2. Redistributions in binary form must reproduce the above copyright
	   notice, this list of conditions and the following disclaimer in the
	   documentation and/or other materials provided with the distribution.

	3. Neither the name of the copyright holder nor the names of its
	   contributors may be used to endorse or promote products derived
	   from this software without specific prior written permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
	"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
	LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
	A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
	HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
	SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
	LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
	DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
	THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
	OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

"""

import re
import sys
import numpy as np
import scipy.io.wavfile as wav

wav_sampling_rate=48000

time_pos=0
time_step = 1/wav_sampling_rate
data=[]
speaker=0

with open('../src/test.tim') as f:
	for line in f:
			matches = re.match(r'^[ ]+Edge:[ ]+([0-9.]+) ([0-9])$', line)
			if matches:
				t, s = matches.groups()

				time_s = float(t)/1000000000000
				while time_pos < time_s:
					data += speaker,
					time_pos += time_step

				speaker = 0.75 if int(s) else -0.75
				print(time_s, speaker)

# write out wave file of song for testing
samples = len(data)
print('Storing {0} samples ({1} seconds).'.format(samples, round(samples/wav_sampling_rate,1)))
wav.write('simulation.wav', wav_sampling_rate, np.array(data))