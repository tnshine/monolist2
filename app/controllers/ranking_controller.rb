class RankingController < ApplicationController

  def have
    # rails - クエリの基本(2)
    # http://babiy3104.hateblo.jp/entry/2014/03/06/180140
    @rankings = Have.select("item_id,count(item_id) as item_count").group(:item_id).order('item_count desc').limit(10)
  end

  def want
    @rankings = Want.select("item_id,count(item_id) as item_count").group(:item_id).order('item_count desc').limit(10)
  end

end
