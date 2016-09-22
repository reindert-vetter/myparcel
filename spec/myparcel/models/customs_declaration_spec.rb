require 'spec_helper'

describe Myparcel::Models::CustomsDeclaration do
  let(:package_contents) { Myparcel::Models::PackageContents.new }

  describe 'attributes' do
    subject(:custom_object) do
      described_class.new \
        contents: package_contents,
        invoice: 'foo',
        weight: 100,
        items: []
    end

    describe '#contents' do
      it 'defines correct method' do
        expect(custom_object.contents).to eq package_contents
      end
    end

    describe '#invoice' do
      it 'defines correct method' do
        expect(custom_object.invoice).to eq 'foo'
      end
    end

    describe '#weight' do
      it 'defines correct method' do
        expect(custom_object.weight).to eq 100
      end
    end

    describe '#items' do
      it 'defines correct method' do
        expect(custom_object.items).to eq []
      end
    end
  end
end
