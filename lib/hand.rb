require_relative 'card.rb'

class Hand
  attr_reader :cards_in_hand
  def initialize
    @cards_in_hand = []
  end

  def get_card(card)
    if cards_in_hand.length < 5
      @cards_in_hand << card
      nil
    else
      raise TooManyCardsError
    end
  end

  def discard_card(card)
    raise NoCardsError if cards_in_hand.empty?
    if @cards_in_hand.include?(card)
      @cards_in_hand.delete(card)
    else
      raise CardNotInHandError
    end
  end

  def card_in_hand?(card)
    @cards_in_hand.each do |hand_card|
      # return true if card.hard_equal?(hand_card)
      return true if card.object_id == hand_card.object_id
    end
    false
  end

  def best_hand
  end





  private
  def find_straight_flush
  end

  def find_four_of_a_kind
  end

  def find_full_house
  end

  def find_flush
  end

  def find_straight
  end

  def find_three_of_a_kind
  end

  def find_two_pair
  end

  def find_one_pair
  end

  def find_high_card
  end
end


class TooManyCardsError < StandardError
end

class NoCardsError < StandardError
end

class CardNotInHandError < StandardError
end
