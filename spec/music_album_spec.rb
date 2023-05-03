require_relative '../item'
require_relative '../music_album'

describe MusicAlbum do
  describe '#can_be_archived?' do
    context 'check for the album can be archived' do
      let(:album) { MusicAlbum.new('life with coding', true, '2005-10-10') }

      it 'this should return true' do
        expect(album.can_be_archived?).to eq(true)
      end
    end
  end
end
