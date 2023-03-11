defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create deck makes 20 cards" do
    card_length = length(Cards.create_deck)
    assert card_length == 20
  end

  test "shaffling a deck" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

end
