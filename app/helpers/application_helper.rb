module ApplicationHelper

  def gc_body
    gc_body_id_class = {seminars_show: ["news_and_initiatives","tier-1 layout-n0-p1-s0"],
    static_pages_home: ["home","tier-2 layout-n0-p1-s1"]}
    gc_body_id_class[(controller_name+"_"+action_name).to_sym] or ["home","tier-2 layout-n0-p1-s1"]
  end
end
