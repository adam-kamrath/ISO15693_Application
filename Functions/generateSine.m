
function sineData = generateSine(fs, num_of_samples, frequency)
    %{ 
    This funciton will generate a sine wave to encode the binary pulses onto
    %}

    sine = dsp.SineWave(SamplesPerFrame=num_of_samples, SampleRate=fs, Frequency=frequency, ComplexOutput=true);
    sineData = sine();
    release(sine);
end