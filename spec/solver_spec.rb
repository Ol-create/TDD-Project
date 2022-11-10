require './solver'

describe Solver do
  let(:solver) { Solver.new }

  describe 'has methods' do
    it 'has a factorial method' do
      expect(solver).to respond_to(:factorial)
    end

    it 'has a reverse method' do
      expect(solver).to respond_to(:reverse)
    end

    it 'has a fizzbuzz method' do
      expect(solver).to respond_to(:fizzbuzz)
    end
  end

  describe 'returns a correct value' do
    it 'factorial returns a number' do
      expect(solver.factorial(5)).to be_a(Integer)
    end

    it 'reverse returns a string' do
      expect(solver.reverse('hello')).to be_a(String)
    end

    it 'fizzbuzz returns a string' do
      expect(solver.fizzbuzz(5)).to be_a(String)
    end
  end

  describe '#factorial' do
    it 'returns the factorial of the number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 1 for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(solver.factorial(1)).to eq(1)
    end

    it 'returns 1 for negative numbers' do
      expect(solver.factorial(-1)).to eq(1)
    end

    it 'returns nil for non-numbers' do
      expect(solver.factorial('a')).to be_nil
    end
  end

  describe '#reverse' do
    it 'returns the reverse of the word' do
      expect(solver.reverse('hello')).to eq('olleh')
    end

    it 'returns the reverse of the word' do
      expect(solver.reverse('hello world')).to eq('dlrow olleh')
    end
  end
  
  ## 1. Fizzbuzz Method Validation
  it 'for a number divisible by 3, should return fizz' do
    fizz = @solver.fizzbuzz(9)
    expect(fizz).to eq('fizz')
  end

  ## 2. Fizzbuzz Method Validation

  it 'for a number divisible by 5, should return buzz' do
    buzz = @solver.fizzbuzz(10)
    expect(buzz).to eq('buzz')
  end

  ## 3. Fizzbuzz Method Validation

  it 'for a number divisible by 3 and 5, should return fizzbuzz' do
    fizzbuzz = @solver.fizzbuzz(15)
    expect(fizzbuzz).to eq('fizzbuzz')
  end

  ## 4. Fizzbuzz Method Validation

  it 'for a number divisible by 3 and 5, should return 7' do
    fizzbuzz = @solver.fizzbuzz(7)
    expect(fizzbuzz).to eq('7')
  end

end
