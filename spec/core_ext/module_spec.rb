require 'spec_helper'

describe Module do
  describe '#ancestors_that_implement_instance_method' do
    before do
      module Foo
        def target_method; end
      end

      module Bar
      end

      module Buz
        def target_method; end
      end

      class Klass
        include Foo
        include Bar
        include Buz
      end
    end

    subject { Klass.ancestors_that_implement_instance_method(:target_method) }

    it 'returns ancestors that implement instance method' do
      is_expected.to contain_exactly Foo, Buz
    end
  end
end
