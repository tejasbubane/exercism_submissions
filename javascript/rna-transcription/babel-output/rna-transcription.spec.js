'use strict';

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

var _rnaTranscription = require('./rna-transcription');

var _rnaTranscription2 = _interopRequireDefault(_rnaTranscription);

describe('Transcriptor', function () {
  var transcriptor = new _rnaTranscription2['default']();

  it('transcribes cytosine to guanine', function () {
    expect(transcriptor.toRna('C')).toEqual('G');
  });

  it('transcribes guanine to cytosine', function () {
    expect(transcriptor.toRna('G')).toEqual('C');
  });

  it('transcribes adenine to uracil', function () {
    expect(transcriptor.toRna('A')).toEqual('U');
  });

  it('transcribes thymine to adenine', function () {
    expect(transcriptor.toRna('T')).toEqual('A');
  });

  it('transcribes all dna nucleotides to their rna complements', function () {
    expect(transcriptor.toRna('ACGTGGTCTTAA')).toEqual('UGCACCAGAAUU');
  });

  it('correctly handles invalid input', function () {
    expect(transcriptor.toRna('U')).toEqual(null);
  });

  it('correctly handles completely invalid input', function () {
    expect(transcriptor.toRna('XXX')).toEqual(null);
  });

  it('correctly handles partially invalid input', function () {
    expect(transcriptor.toRna('ACGTXXXCTTAA')).toEqual(null);
  });
});