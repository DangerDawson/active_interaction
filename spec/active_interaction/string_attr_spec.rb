require 'spec_helper'

describe ActiveInteraction::StringAttr do
  describe '#prepare(key, value, options = {})' do
    context 'value is a String' do
      it 'passes it on through' do
        expect(described_class.prepare(:key, 'hello')).to eq 'hello'
      end
    end

    it 'throws an argument error for everything else' do
      expect {
        described_class.prepare(:key, true)
      }.to raise_error ArgumentError
    end

    it_behaves_like 'options includes :allow_nil'
  end
end