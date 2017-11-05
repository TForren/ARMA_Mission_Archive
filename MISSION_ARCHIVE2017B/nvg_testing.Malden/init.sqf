#define ST_NVG_GRAIN_MIN 2.25
#define ST_NVG_GRAIN_MAX 2.7

#define ST_NVG_BRIGHT_MIN 0.65
#define ST_NVG_BRIGHT_MAX 0.75

#define ST_NVG_CONTRAST_MIN 0.4
#define ST_NVG_CONTRAST_MAX 0.8

#define ST_NVG_NOISEINTENSITY_MIN 0.4
#define ST_NVG_NOISEINTENSITY_MAX 0.55

#define ST_NVG_NOISESHARPNESS_MIN 1.2
#define ST_NVG_NOISESHARPNESS_MAX 1 

nvgGeneration = 1;

effectMod = linearConversion [1, 3, nvgGeneration, 1.5, 1];

lightFinal = 0 max (moonIntensity - ((overcast * .8) min .275) - (rain * .5));
effectiveLight = lightFinal * linearConversion [1, 3, nvgGeneration, 0.25, 1];
brightFinal = linearConversion [0, 1, effectiveLight, ST_NVG_BRIGHT_MIN, ST_NVG_BRIGHT_MAX, true];
contrastFinal = linearConversion [0, 1, effectiveLight, ST_NVG_CONTRAST_MIN, ST_NVG_CONTRAST_MAX, true];

grainFinal = linearConversion [1, 0, effectiveLight, ST_NVG_GRAIN_MIN, ST_NVG_GRAIN_MAX, true];
noiseSharpnessFinal = linearConversion [1, 0, effectiveLight, ST_NVG_NOISESHARPNESS_MIN, ST_NVG_NOISESHARPNESS_MAX, true];
grainIntensityFinal = effectMod * linearConversion [1, 0, effectiveLight, ST_NVG_NOISEINTENSITY_MIN, ST_NVG_NOISEINTENSITY_MAX, true];


filmGrain = ppEffectCreate ["FilmGrain", 200];
filmGrain ppEffectAdjust [grainIntensityFinal, noiseSharpnessFinal, grainFinal, 0.3, 0.3];
filmGrain ppEffectCommit 0;
filmGrain ppEffectForceInNVG true;
filmGrain ppEffectEnable true;

colorCorrection = ppEffectCreate ["ColorCorrections", 2003];
colorCorrection ppEffectAdjust [brightFinal, contrastFinal, 0, [0.0, 0.0, 0.0, 0.0], [1.3, 1.2, 0.0, 0.9], [6, 1, 1, 0.0]];
colorCorrection ppEffectCommit 0;
colorCorrection ppEffectForceInNVG true;
colorCorrection ppEffectEnable true;