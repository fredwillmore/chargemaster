require 'rails_helper'

describe ChargemasterReader do
  subject { ChargemasterReader.new }

  describe :prompt do
    # it "prompts the user for input" do
    it "doesn't break" do
      expect do
        subject.send(:prompt, prompt: 'hello', options: [a: 'a is for apple', b: 'b is for banana'])
      end.not_to raise_error
    end
  end
end