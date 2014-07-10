# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Chords
cmajor = Chord.create({ name: 'C', quality: 'major'})

# Scales
c_ionian = Scale.create({ name: 'C Ionian', quality: 'major' })


# Create Notes
c = Note.create({name: 'C',  quality: 'major', octave: 'first'})
cflat = Note.create({name: 'Cb',  quality: 'flat', octave: 'first'})
csharp = Note.create({ name: 'C#',  quality: 'sharp', octave: 'first'})

d = Note.create({ name: 'D', quality: 'natural', octave: 'first' })
dflat = Note.create({ name: 'Db', quality: 'flat', octave: 'first' })
dsharp = Note.create({ name: 'D#', quality: 'sharp', octave: 'first' })

e = Note.create({ name: 'E', quality: 'natural', octave: 'first'})
eflat = Note.create({ name: 'Eb', quality: 'flat', octave: 'first' })
esharp = Note.create({ name: 'E#', quality: 'sharp', octave: 'first' })

f = Note.create({ name: 'F', quality: 'natural', octave: 'first'})
g = Note.create({ name: 'G', quality: 'natural', octave: 'first'})
a = Note.create({ name: 'A', quality: 'natural', octave: 'first'})
b = Note.create({ name: 'B', quality: 'natural', octave: 'first'})

# Create Instrument Strings
string_e = InstrumentString.create({name: 'E'})
string_a = InstrumentString.create({name: 'A'})
string_d = InstrumentString.create({name: 'D'})
string_g = InstrumentString.create({name: 'G'})


# Create Frets - need 24 of them
fret_0 = Fret.create({fret_number: 'zero'})
fret_1 = Fret.create({fret_number: 'one'})
fret_2 = Fret.create({fret_number: 'two'})
fret_3 = Fret.create({fret_number: 'three'})
fret_4 = Fret.create({fret_number: 'four'})
fret_5 = Fret.create({fret_number: 'five'})
fret_6 = Fret.create({fret_number: 'six'})
fret_7 = Fret.create({fret_number: 'seven'})
fret_8 = Fret.create({fret_number: 'eight'})
fret_9 = Fret.create({fret_number: 'nine'})
fret_10 = Fret.create({fret_number: 'ten'})
fret_11 = Fret.create({fret_number: 'eleven'})
fret_12 = Fret.create({fret_number: 'twelve'})
fret_13 = Fret.create({fret_number: 'thirteen'})
fret_14 = Fret.create({fret_number: 'fourteen'})
fret_15 = Fret.create({fret_number: 'fifteen'})
fret_16 = Fret.create({fret_number: 'sixteen'})
fret_17 = Fret.create({fret_number: 'seventeen'})
fret_18 = Fret.create({fret_number: 'eighteen'})
fret_19 = Fret.create({fret_number: 'nineteen'})
fret_20 = Fret.create({fret_number: 'twenty'})
fret_21 = Fret.create({fret_number: 'twenty_one'})
fret_22 = Fret.create({fret_number: 'twenty_two'})
fret_23 = Fret.create({fret_number: 'twenty_three'})
fret_24 = Fret.create({fret_number: 'twenty_four'})


######### ChordNote Join Table ###############
# Create Chords
cmaj_chord = ChordNote.create([
  { chord_id: cmajor.id, note_id: c.id },
  { chord_id: cmajor.id, note_id: e.id },
  { chord_id: cmajor.id, note_id: g.id },  
  { chord_id: cmajor.id, note_id: c.id } 
])

c_major_7_chord = ChordNote.create([
  { chord_id: cmajor.id, note_id: c.id },
  { chord_id: cmajor.id, note_id: e.id },
  { chord_id: cmajor.id, note_id: g.id },
  { chord_id: cmajor.id, note_id: b.id }, 
  { chord_id: cmajor.id, note_id: c.id } 
])

######### ScaleNotes Join Table ###############
# Create Scales
c_ionian_scale_notes = ScaleNote.create([
  { scale_id: c_ionian.id, note_id: c.id },
  { scale_id: c_ionian.id, note_id: d.id },
  { scale_id: c_ionian.id, note_id: e.id },
  { scale_id: c_ionian.id, note_id: f.id },
  { scale_id: c_ionian.id, note_id: g.id },
  { scale_id: c_ionian.id, note_id: a.id },
  { scale_id: c_ionian.id, note_id: b.id }
])


########## StringFrets Join Table ###############
e_string_fret_1 = StringFret.create({string_id: string_e.id, fret_id: fret_1.id, note_name: f.name})



########## FretNotes Join Table ###############
# Create Frets




