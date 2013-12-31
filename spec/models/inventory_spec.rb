require 'spec_helper'

describe Inventory do
  it { should have_valid(:title).when('Beef') }
  it { should_not have_valid(:title).when(nil) }

  it { should have_valid(:description).when('Tons of it!') }
  it { should_not have_valid(:description).when(nil) }

  it { should have_valid(:quantity).when(3) }
  it { should_not have_valid(:quantity).when(nil) }

end
