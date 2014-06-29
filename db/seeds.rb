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
c = Note.create({name: 'C',  quality: 'major'})
cflat = Note.create({name: 'Cb',  quality: 'flat'})
csharp = Note.create({ name: 'C#',  quality: 'sharp'})

d = Note.create({ name: 'D', quality: 'natural' })
dflat = Note.create({ name: 'Db', quality: 'flat' })
dsharp = Note.create({ name: 'D#', quality: 'sharp' })

e = Note.create({ name: 'E', quality: 'natural'})
eflat = Note.create({ name: 'Eb', quality: 'flat' })
esharp = Note.create({ name: 'E#', quality: 'sharp' })

f = Note.create({ name: 'F', quality: 'natural'})
g = Note.create({ name: 'G', quality: 'natural'})
a = Note.create({ name: 'A', quality: 'natural'})
b = Note.create({ name: 'B', quality: 'natural'})



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






