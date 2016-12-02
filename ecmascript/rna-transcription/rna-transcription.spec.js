import Transcriptor from './rna-transcription';

describe('Transcriptor', () => {
  let transcriptor = new Transcriptor();

  it('transcribes cytosine to guanine', () => {
    expect(transcriptor.toRna('C')).toEqual('G');
  });

  it('transcribes guanine to cytosine', () => {
    expect(transcriptor.toRna('G')).toEqual('C');
  });

  it('transcribes adenine to uracil', () => {
    expect(transcriptor.toRna('A')).toEqual('U');
  });

  it('transcribes thymine to adenine', () => {
    expect(transcriptor.toRna('T')).toEqual('A');
  });

  it('transcribes all dna nucleotides to their rna complements', () => {
    expect(transcriptor.toRna('ACGTGGTCTTAA')).toEqual('UGCACCAGAAUU');
  });

  it('correctly handles invalid input', () => {
    expect(transcriptor.toRna('U')).toEqual(null);
  });

  it('correctly handles completely invalid input', () => {
    expect(transcriptor.toRna('XXX')).toEqual(null);
  });

  it('correctly handles partially invalid input', () => {
    expect(transcriptor.toRna('ACGTXXXCTTAA')).toEqual(null);
  });
});
