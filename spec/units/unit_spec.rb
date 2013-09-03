# coding: utf-8
require 'spec_helper'
require "unit"

describe "it's a pico " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e-15) + 0.0000000000001)
    expect(unit.best_scale).to match(/[p]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e-12)
    expect(unit.best_scale).to match(/[p]/)
  end

  it "not a pico" do
    unit = SIUnits::Unit.new((1e-12) + 0.0000000000001)
    expect(unit.best_scale).to_not match(/[p]/)
  end
end

describe "it's a nano " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e-12) + 0.00000000001)
    expect(unit.best_scale).to match(/[n]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e-9)
    expect(unit.best_scale).to match(/[n]/)
  end

  it "not a nano" do
    unit = SIUnits::Unit.new((1e-9) + 0.00000000001)
    expect(unit.best_scale).to_not match(/[n]/)
  end
end

describe "it's a micro " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e-9) + 0.00000000001)
    expect(unit.best_scale).to match(/[u]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e-6)
    expect(unit.best_scale).to match(/[u]/)
  end

  it "not a micro" do
    unit = SIUnits::Unit.new((1e-6) + 0.000001)
    expect(unit.best_scale).to_not match(/[u]/)
  end
end

describe "it's a milli " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e-6) + 0.000001)
    expect(unit.best_scale).to match(/[m]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e-3)
    expect(unit.best_scale).to match(/[m]/)
  end

  it "not a milli" do
    unit = SIUnits::Unit.new((1e-3) + 0.001)
    expect(unit.best_scale).to_not match(/[m]/)
  end
end

describe "it's a centi " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e-3) + 0.001)
    expect(unit.best_scale).to match(/[c]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e-2)
    expect(unit.best_scale).to match(/[c]/)
  end

  it "not a centi" do
    unit = SIUnits::Unit.new((1e-2) + 0.001)
    expect(unit.best_scale).to_not match(/[c]/)
  end
end

describe "it's a deci " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e-2) + 0.01)
    expect(unit.best_scale).to match(/[d]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e-1)
    expect(unit.best_scale).to match(/[d]/)
  end

  it "not a deci" do
    unit = SIUnits::Unit.new((1e-1) + 0.01)
    expect(unit.best_scale).to_not match(/[d]/)
  end
end

describe "it's a const " do
  xit "max limit" do
    unit = SIUnits::Unit.new((1e-1) + 0.1)
    expect(unit.best_scale).to match(/const/)
  end

  xit "zero" do

  end

  xit "min limit" do
    unit = SIUnits::Unit.new(1e1)
    expect(unit.best_scale).to match(/cost/)
  end

  xit "not a const" do
    unit = SIUnits::Unit.new((1e-2) + 0.00000000001)
    expect(unit.best_scale).to_not match(/const/)
  end
end

describe "it's a deca " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e2) - 1.0)
    expect(unit.best_scale).to match(/(da)/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e1 + 1.0)
    expect(unit.best_scale).to match(/(da)/)
  end

  it "not a deca" do
    unit = SIUnits::Unit.new((1e1) - 1.0)
    expect(unit.best_scale).to_not match(/da/)
  end
end

describe "it's a hecto " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e3) - 1.0)
    expect(unit.best_scale).to match(/[h]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e2 + 1.0)
    expect(unit.best_scale).to match(/[h]/)
  end

  it "not a deca" do
    unit = SIUnits::Unit.new((1e2) - 1.0)
    expect(unit.best_scale).to_not match(/[h]/)
  end
end

describe "it's a kilo " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e6) - 1.0)
    expect(unit.best_scale).to match(/[k]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e3 + 1.0)
    expect(unit.best_scale).to match(/[k]/)
  end

  it "not a deca" do
    unit = SIUnits::Unit.new((1e3) - 1.0)
    expect(unit.best_scale).to_not match(/[k]/)
  end
end

describe "it's a mega " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e9) - 1.0)
    expect(unit.best_scale).to match(/[M]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e6 + 1.0)
    expect(unit.best_scale).to match(/[M]/)
  end

  it "not a deca" do
    unit = SIUnits::Unit.new((1e6) - 1.0)
    expect(unit.best_scale).to_not match(/[M]/)
  end
end

describe "it's a giga " do
  it "max limit" do
    unit = SIUnits::Unit.new((1e12) - 1.0)
    expect(unit.best_scale).to match(/[G]/)
  end

  it "min limit" do
    unit = SIUnits::Unit.new(1e9 + 1.0)
    expect(unit.best_scale).to match(/[G]/)
  end

  it "not a deca" do
    unit = SIUnits::Unit.new((1e9) - 1.0)
    expect(unit.best_scale).to_not match(/[G]/)
  end
end
