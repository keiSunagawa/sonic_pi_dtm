# Welcome to Sonic Pi

p4 = 1
p8 = 0.5
p16 = 0.25
# recommend bpm 110 by recoding
use_bpm 120

define :p_s do |p, r|
  play p, release: r
  sleep r
end

define :p_sy do |p, r|
  play p, release: r, amp: 1.5
  sleep r
end

define :p_syc do |p, r|
  play p, release: r, amp: 3
  sleep r
end


define :chord_on do
  live_loop :chord do
    use_synth :piano
    
    p_s chord(:Fs4, :m), 4
    
    p_s chord(:D4, :major7), 4
    
    p_s chord(:A4, :M), 4
    
    p_s chord(:Cs4, :m), 4
    
    
    # cue :k
  end
end
define :chord_off do
  live_loop :chord do
    sleep 1
  end
end

define :a_mero do
  # Fs4 minor
  p_sy :Fs4, p8
  p_sy :Gs4, p8
  p_sy :A4, p8
  p_sy :D5, p8
  
  p_sy :Fs4, p8
  p_sy :Gs4, p8
  p_sy :A4, p8
  p_sy :E5, p8
  
  # D4
  p_sy :A4, p4
  p_sy :Fs4, p8
  p_sy :D4, p8
  
  p_sy :D4, p4
  p_sy :Fs4, p8
  p_sy :A4, p8
  
  # A4
  p_sy :A4, p8
  p_sy :E5, p8
  p_sy :Cs5, p8
  sleep p8
  
  p_sy :A4, p8
  p_sy :E5, p8
  p_sy :Cs5, p8
  sleep p8
  
  # Cs4m
  p_sy :Cs5, p8
  p_sy :Cs5, p8
  p_sy :A, p4
  
  p_sy :E, p4
  p_sy :Cs4, p4
end

define :b_mero do
  # Fs4m
  p_sy :D5, p8
  p_sy :A4, p8
  p_sy :Gs4, p8
  
  p_sy :Fs4, p4
  
  p_sy :Gs4, p8
  p_sy :Gs4, p8
  p_sy :A4, p8
  
  # D4M7
  p_sy :D4, p8
  p_sy :Fs4, p8
  p_sy :D4, p8
  p_sy :Fs4, p8
  
  p_sy :A4, p8
  p_sy :D5, p8
  p_sy :D5, p8
  p_sy :E5, p4
  
  # A4
  # sleep p8
  p_sy :A4, p4
  p_sy :Cs5, p8
  p_sy :E5, p4
  p_sy :A4, p4
  
  # Cs4
  p_sy :Gs4, (p4*2)
  p_sy :Cs5, (p4*2)
end

define :c_mero do
  # Fs4m
  p_syc :Fs5, p16
  p_syc :Fs4, p16
  p_syc :Fs5, p16
  p_syc :Fs4, p16
  p_syc :Cs5, p16
  p_syc :Fs4, p16
  p_syc :Cs5, p16
  p_syc :Fs4, p16
  
  p_syc :Fs5, p16
  p_syc :Fs5, p16
  p_syc :B4, p8
  p_syc :E5, p16
  p_syc :D5, p16
  p_syc :A4, p8
  
  # D4M7
  p_syc :A4, p16
  p_syc :C5, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :E5, p16
  
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :E5, p16
  p_syc :A4, p4
  
  # A4
  p_syc :A4, p4
  sleep p8
  p_syc :A4, p4
  sleep p8
  p_syc :E5, p16
  p_syc :E5, p16
  sleep p8
  
  # Cs4
  p_syc :Gs4, (p4*2)
  p_syc :Cs5, (p4*2)
  
  ### 2 loop ###
  # Fs4m
  p_syc :Fs5, p16
  p_syc :Fs4, p16
  p_syc :Fs5, p16
  p_syc :Fs4, p16
  p_syc :Cs5, p16
  p_syc :Fs4, p16
  p_syc :Cs5, p16
  p_syc :Fs4, p16
  
  p_syc :Fs5, p16
  p_syc :Fs5, p16
  p_syc :B4, p8
  p_syc :E5, p16
  p_syc :D5, p16
  p_syc :A4, p8
  
  # D4M7
  p_syc :A4, p16
  p_syc :C5, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :E5, p16
  
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :A4, p16
  p_syc :E5, p16
  p_syc :A4, p4
  
  # A4
  p_syc :A4, p4
  sleep p8
  p_syc :A4, p4
  sleep p8
  p_syc :E5, p16
  p_syc :E5, p16
  sleep p8
  
  # Cs4
  p_syc :Cs5, p16
  p_syc :B4, p16
  p_syc :Cs5, p16
  p_syc :B4, p16
  p_syc :A4, p16
  p_syc :Cs4, p16
  p_syc :A4, p16
  p_syc :Cs4, p16
  
  p_syc :A4, p4
  p_syc :E4, p4
  
end

define :merody_on do
  live_loop :merody do
    use_synth :hollow
    
    a_mero
    a_mero
    b_mero
    c_mero
    # sync :k
  end
end

define :merody_off do
  live_loop :merody do
    sleep 1
  end
end

define :agr_sample do
  2.times do
    agr_dur = ((sample_duration :ambi_glass_rub))
    sample :ambi_glass_rub, rate: 0.5, amp: 0.3 , release: agr_dur
    sleep 16
  end
  sleep 32
end

define :b_mero_main_sample do
  sample :glitch_bass_g, amp: 0.7
  sleep 4
  sleep 4
  
  sleep 2
  sample :mehackit_phone2, rate: 2
  sleep p16
  sample :mehackit_phone2, rate: 2
  sleep p16
  sleep (p4)
  sample :vinyl_rewind , rate: -1, sustain: 0, release: 1.2
  
  sleep 4.5
end

define :a_mero_main_sample do
  2.times do
    sleep 4
    
    sample :mehackit_phone2
    sleep 4
    
    with_fx :echo, phase: 0.5, decay: 8 do
      sample :guit_e_fifths, amp: 0.2
    end
    sleep 4
    
    sample :mehackit_phone2, rate: 2
    sleep p16
    sample :mehackit_phone2, rate: 2
    
    sleep (p8 + p16 + 3)
  end
end

define :samples_on do
  live_loop :agr_sample do
    agr_sample
  end
  
  live_loop :merody_samples do
    a_mero_main_sample
    b_mero_main_sample
    sleep 32
  end
end

define :samples_off do
  live_loop :merody_samples do
    sleep 1
  end
end


define :p_d do |p, r|
  sample p, amp: 0.7
  sleep r
end

live_loop :dram do
  6.times do
    sample :bd_ada
    sleep (2)
    sample :bd_ada
    sleep (2)
    sample :bd_ada
    sleep p8
    sample :bd_ada
    sleep p8
    sleep (3) # TODO FIXME Just BPM second
  end
  8.times do
    p_d :bd_ada, p8
    p_d :sn_dolf, p8
    p_d :bd_ada, p8
    p_d :sn_dolf, p8
    p_d :bd_ada, p16
    p_d :bd_ada, p16
    sleep p8
    p_d :bd_ada, p16
    p_d :bd_ada, p16
    sleep p8
  end
end

define :p_x do |p, r|
  play p, release: (r), amp: 0.8
  sleep r
end

live_loop :x do
  sleep 48
  use_synth :pluck
  
  2.times do
    p_x chord(:Fs4, :m), 2
    p_x chord(:Fs4, :m), 2
    
    p_x chord(:D4, :major7), 2
    p_x chord(:D4, :major7), 2
    
    p_x chord(:A4, :M), 2
    p_x chord(:A4, :M), 2
    
    p_x chord(:Cs4, :m), 2
    p_x chord(:Cs4, :m), 2
  end
end

chord_off
merody_on
samples_on
